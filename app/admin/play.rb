ActiveAdmin.register Play do

  permit_params :title, :description, :director, :category_id, :play_image

  show do |t|
    attributes_table do
      row :title
      row :description
      row :director
      row :category_id
      row :play_image do
        Play.play_image? ? Play_image_tag(Play.play_image.url, height: '100') : content_tag(:span, "No photo yet")
      end
    end
  end

  form :html => { :enctype => "multipart/form-data"} do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :director
      f.input :category_id
      f.input :play_image, hint: f.play.play_image? ? play_image_tag(play.play_image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIT image")
    end
    f.actions
  end

end
