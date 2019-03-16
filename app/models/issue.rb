class Issue < ApplicationRecord

  validates :title, :author, presence: true

  enum status: { open: 0, closed: 1 }

end
