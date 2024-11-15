BannerComponent# test/components/previews/button_component_preview.rb
class BadgeComponentPreview < Lookbook::Preview
  def default
    render(BadgeComponent.new(icon: 'icon_edit', text: 'Essai'))
  end

  def without_icon
    render(BadgeComponent.new(text: 'Essai'))
  end

  def square
    render(BadgeComponent.new(icon: 'profile', square: true))
  end

  def danger
    render(BadgeComponent.new(icon: 'icon_delete', square: true, type: :danger))
  end

  def warning
    render(BadgeComponent.new(icon: 'icon_delete', square: true, type: :warning, border: true))
  end

  def delete
    render(BadgeComponent.new(icon: 'icon_delete', square: true, type: :success))
  end
end
