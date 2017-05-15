ActiveAdmin.register Lecture do
permit_params :content


	form do |f|
    f.inputs "Lecture Details" do
      f.input :content

    end
    f.actions
  end


    index do
    selectable_column
    id_column
    column :content

  
    actions
  end

end
