class Payment < ApplicationRecord

has_one :bank_detail
has_one_attached :image
has_many_attached :pictures
has_rich_text :body

end
