# test/components/previews/button_component_preview.rb
class BannerComponentPreview < Lookbook::Preview
  def default
    render(BannerComponent.new(type: :default, content_icon: "icon_delete")) do
      tag.p("Banner main text")
    end
  end

  def with_icon
    render BannerComponent.new(header_text: "Essai", type: :default, content_icon: "icon_delete", colored_header: true) do |banner|
      tag.p("Banner main text")
    end
  end

  def success
    render(BannerComponent.new(header_text: "Banner message!", type: :success, colored_header: true, content_icon: "icon_edit")) do
      tag.p("Banner main text")
    end
  end

  def warning
    render(BannerComponent.new(header_text: "Warning message", type: :warning, colored_header: true, content_icon: "icon_warning")) do
      tag.p("Banner main text")
    end
  end

  def danger
    render(BannerComponent.new(header_text: "Danger message", type: :danger, colored_header: true)) do
      tag.p("Banner main text")
    end
  end
end
