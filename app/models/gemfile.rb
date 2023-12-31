class Gemfile < ApplicationRecord
  belongs_to :user
  has_many :favorites, as: :favoritable, dependent: :destroy
  has_many :gemfile_app_gems
  has_many :app_gems, through: :gemfile_app_gems

  validates :app_link, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  validates :github_link, format: URI::DEFAULT_PARSER.make_regexp(%w[http https]), if: -> { github_link.present? }

  # Validate that content contains at least one gem
  validate :gemfile_contains_gems

  scope :with_favorites, -> do
    left_joins(:favorites)
      .select("gemfiles.*, COUNT(favorites.id) as favorites_count").group("gemfiles.id")
      .order("COUNT(favorites.id) DESC")
  end

  scope :search, ->(query) do
    where("name ILIKE ?", "%#{query}%").or(where("content ILIKE ?", "%#{query}%"))
  end

  def count_gems
    content.split("\n").select { |line| line.strip.start_with?("gem") }.count
  end

  def parse_content
    # First delete all existing AppGem associations from gemfile_app_gems
    gemfile_app_gems.destroy_all

    content.split("\n").each do |line|
      if line.strip.start_with?("gem")
        gem_name = line.strip.split(" ")[1]

        # only continue if gem_name.strip is not empty
        if gem_name.present?
          # remove any quotes from the gem name
          gem_name = gem_name.gsub(/['"]/, "")

          # remove any commas from the gem name
          gem_name = gem_name.gsub(/[,]/, "")

          app_gem = AppGem.find_or_create_by(name: gem_name)
          app_gems << app_gem

          UpdateGemDataJob.perform_async(app_gem.id)
        end
      end
    end
  end

  def gemfile_contains_gems
    if content.present?
      if content.split("\n").select { |line| line.strip.start_with?("gem") }.count == 0
        errors.add(:content, "must contain at least one gem")
      end
    end
  end
end
