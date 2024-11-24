# test/components/previews/button_component_preview.rb
class AvatarComponentPreview < Lookbook::Preview
  def default
    render(AvatarComponent.new(avatar_url: "avatar.png"))
  end

  def square
    render(AvatarComponent.new(shape: :square, avatar_url: "avatar.png"))
  end

  def small
    render(AvatarComponent.new(size: :small))
  end

  def initials
    render(AvatarComponent.new(shape: :square, initials: "MG"))
  end
end
