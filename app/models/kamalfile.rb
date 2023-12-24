class Kamalfile < ApplicationRecord
  belongs_to :user
  # has_many :gemfile_app_gems
  has_many :app_gems, through: :gemfile_app_gems

  validates :app_link, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  validates :github_link, format: URI::DEFAULT_PARSER.make_regexp(%w[http https]), if: -> { github_link.present? }
end
