ActiveAdmin.register Project do
permit_params :name, :content, :price, :image
#    has_one_attached :image
    
#    form partial: 'admin/project/form'
    
#   show do
#    attributes_table do
#      row :name
#      row :content
#      row :price
#      row :image do |ad|
#        image_tag url_for(ad.image)
#      end
#    end
#  end
#end
end
    
#    show do |t|
#        attributes_table do
#            row :name
#            row :content
#            row :price
#            row :image do |pro|
#                pro.image? ? image_tag(pro.image.url, height: '100') #: content_tag(:span, "no photo yet")
#            end
#        end
#    end

    
#    form :html => { :enctype => "multipart/form-data" } do |f|
#        f.input do
#            f.input :name
#            f.input :content
#            f.input :price
#            f.input :image  hint: f.project.image ? image_tag(project.image.url, height: '100') : content_tag(:span, "upload JPG/PNG/GIf")
#            
#        end
#        f.actions
#    end
    
    
#
#row :image do |pro|
#              image_tag  pro.image.url, class 'my_image_size'
#            end


