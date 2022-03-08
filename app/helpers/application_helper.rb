module ApplicationHelper
  def user_has_photo?(user)
    return cl_image_tag @user.photo.key, height: 300, width: 400, crop: :fill if user.photo.attached?

    image_tag "https://abs.twimg.com/sticky/default_profile_images/default_profile_400x400.png",
              width: 70, style: "border-radius:100%"
  end
end
