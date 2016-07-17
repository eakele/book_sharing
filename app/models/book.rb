class Book < ActiveRecord::Base
    belongs_to :profile
    has_attached_file :image
    validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png)
    has_attached_file :image,
                    styles: { thumb: ["64x64#", :jpg],
                              original: ['200x400>', :jpg] },
                    convert_options: { thumb: "-quality 75 -strip",
                                       original: "-quality 85 -strip" }

end
