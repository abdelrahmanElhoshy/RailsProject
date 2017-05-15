ActiveAdmin.register User do
permit_params :name, :email, :date_of_birth, :is_female , :password, :avatar


	form do |f|
    f.inputs "User Details" do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :date_of_birth
    f.input :is_female
    f.input :avatar
    end
    f.actions
  end


    index do
    selectable_column
    id_column
    column :email
    column :name
    column :date_of_birth
    column :is_female
    column :avatar
  
    actions
  end


end
