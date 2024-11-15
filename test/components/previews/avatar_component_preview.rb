# test/components/previews/button_component_preview.rb
class AvatarComponentPreview < Lookbook::Preview
  def default
    render(AvatarComponent.new(avatar_url: 'https://www.gala.fr/imgre/fit/~1~gal~2024~10~17~aa3b071d-02e8-48b8-88a8-5947318674c4.jpeg/1445x1075/quality/80/marguerite-star-academy-2024.jpeg'))
  end

  def square
    render(AvatarComponent.new(shape: :square, avatar_url: 'https://www.gala.fr/imgre/fit/~1~gal~2024~10~17~aa3b071d-02e8-48b8-88a8-5947318674c4.jpeg/1445x1075/quality/80/marguerite-star-academy-2024.jpeg'))
  end
end
