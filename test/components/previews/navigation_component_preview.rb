class NavigationComponentPreview < Lookbook::Preview
  def default
    render(NavigationComponent.new) do |navigation|
      navigation.with_section do |section|
        section.with_item(url: "#", label: "Home", icon: "icon_delete")
        section.with_item(url: "#", label: "Orders", icon: "icon_edit")
        section.with_item(url: "#", label: "Products", icon: "icon_warning")
      end

      navigation.with_section(title: "Sales channels") do |section|
        section.with_item(url: "#", label: "Online Store", icon: "icon_bug")
      end
    end
  end
end
