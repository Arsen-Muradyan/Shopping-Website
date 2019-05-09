ActiveAdmin.register Product do
	permit_params :title, :content, :image
	form html: { multipart: true } do |f|
	  	f.inputs "New Product" do
	    f.input :title
	    f.input :content
	    f.input :image, as: :file, required: false
	  end

  f.actions
end
end
