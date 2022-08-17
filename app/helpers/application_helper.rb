module ApplicationHelper

  def avatar(user)
    if user.photo.attached?
      cl_image_tag user.photo.key
    else
      image_tag "profil.png"
    end
  end

  def photo(element)
    if element.photo.attached?
      cl_image_tag element.photo.key
    else
      image_tag "default.png"
    end
  end

  def short_title(element)
    element.title.present?
    title = element.title[0, 50]
    return title + "..." + '[Lire plus]'
  end
end
