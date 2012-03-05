class Article < ActiveRecord::Base

  validates :title, presence: true, length: {maximum: 255}
  validates :body, presence: true

  def to_param
    "#{id} #{title}".parameterize
  end

end
