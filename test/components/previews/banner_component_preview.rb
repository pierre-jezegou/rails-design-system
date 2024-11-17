# test/components/previews/button_component_preview.rb
class BannerComponentPreview < Lookbook::Preview
  def default
    render(BannerComponent.new(type: :default, with_icon: true)) do
      tag.p('Banner main text')
    end
  end

  def success
    render(BannerComponent.new(header_text: 'Banner message!', type: :success, with_icon: true)) do
      tag.p('Banner main text')
    end
  end
end
