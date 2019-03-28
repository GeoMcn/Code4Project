ActiveAdmin.register Project do
permit_params :name, :content, :price, :image
#    has_one_attached :image
    
#    form partial: 'admin/project/form'
    

end
    
