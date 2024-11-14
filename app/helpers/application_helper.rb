module ApplicationHelper
  def svg_icon_tag(name, options = {})
    classes = (options[:class] || []) << ' svg_icon'
    icons_path = asset_path 'icons.svg'
    tag.svg(class: classes) do
      tag.use(href: "#{icons_path}##{name}")
    end
  end
end
