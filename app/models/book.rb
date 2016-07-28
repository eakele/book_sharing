class Book < ActiveRecord::Base
    belongs_to :user
    validates :standard, :presence => true
    validates :title, :presence => true
    validates :author, :presence => true
    validates :subject, :presence => true
    validates :language, :presence => true
    has_attached_file :image
    validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png)
    has_attached_file :image,
                    styles: { thumb: ["64x64#", :jpg],
                              original: ['200x400>', :jpg] },
                    convert_options: { thumb: "-quality 75 -strip",
                                       original: "-quality 85 -strip" }
    validates_attachment_presence :image
    scope :lonely, -> { where.not(:id => Cart.select(:book_id).uniq) }
end
