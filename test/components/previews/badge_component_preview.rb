BannerComponent# test/components/previews/button_component_preview.rb
class BadgeComponentPreview < Lookbook::Preview
  def default
    render(BadgeComponent.new(icon: "icon_edit", text: "Essai"))
  end

  def without_icon
    render(BadgeComponent.new(text: "Essai"))
  end

  def square
    render(BadgeComponent.new(icon: "profile", square: true))
  end

  def danger
    render(BadgeComponent.new(icon: "icon_delete", square: true, type: :danger))
  end

  def warning
    render(BadgeComponent.new(icon: "icon_delete", square: true, type: :warning))
  end

  def with_border
    render(BadgeComponent.new(icon: "icon_delete", square: true, type: :warning, border: true))
  end

  def delete
    render(BadgeComponent.new(icon: "icon_delete", square: true, type: :success))
  end

  def large
    render(BadgeComponent.new(icon: "icon_delete", square: true, type: :success, size: :large))
  end

  def with_remove_button
    render BadgeComponent.new(text: 'Essai', type: :default, size: :large, border: true) do |badge|
      badge.with_remove_button(path: '', type: :plain, icon: 'cross', size: :small, padding: false)
    end
  end

  def with_remove_button_danger
    render BadgeComponent.new(text: 'Essai', type: :danger, size: :large, border: true) do |badge|
      badge.with_remove_button(path: '', type: :danger, icon: 'cross', size: :small, padding: false)
    end
  end
end
