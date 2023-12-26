class Kamalfile < ApplicationRecord
  belongs_to :user
  has_many :favorites, as: :favoritable, dependent: :destroy
  # has_many :gemfile_app_gems
  # has_many :app_gems, through: :gemfile_app_gems

  validates :app_link, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  validates :github_link, format: URI::DEFAULT_PARSER.make_regexp(%w[http https]), if: -> { github_link.present? }

  scope :with_favorites, -> do
    left_joins(:favorites)
      .select("kamalfiles.*, COUNT(favorites.id) as favorites_count").group("kamalfiles.id")
      .order("COUNT(favorites.id) DESC")
  end

  scope :search, ->(query) do
    where("name LIKE ?", "%#{query}%").or(where("content LIKE ?", "%#{query}%"))
  end

  # Validate that content contains at least one server
  validate :contains_servers

  def count_servers
    if YAML.load(content)["servers"].present?
      YAML.load(content)["servers"].count
    else
      0
    end
  end

  def count_accessories
    YAML.load(content)["accessories"].present? ? YAML.load(content)["accessories"].count : 0
  end

  private

  def contains_servers
    if content.present?
      if count_servers == 0
        errors.add(:content, "must contain at least one server")
      end
    end
  end
end
