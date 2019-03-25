class Project < ApplicationRecord
    has_many :tasks, dependent: :destroy
     has_one_attached :image
    
    validates :name, presence: true, length: {maximum: 50}
    validates :content, presence: true, length: {maximum: 500}
    validates :price, presence: true, numericality: {only_integer: true }
    
end
    
#    has_attached_file :image
#    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
    
    
#end
    
#    show do |t|
#        attributes_table do
#            row :name
#            row :content
#            row :price
#            row :image do
#                project.image? ? image_tag(project.image.url, height: '100') : content_tag(:span, "no photo yet")
#            end
#        end
#    end
#    form :html => { :enctype => "multipart/form-data" } do |f|
#        f.input do
#            f.input :name
#            f.input :content
#            f.input :price
#            f.input :image, hint: f.project.image? ? image_tag(project.image.url, height: '100') : content_tag(:span, "upload JPG/PNG/GIf")
#    end
#        f.actions
#    end

