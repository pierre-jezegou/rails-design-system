class LayoutComponentPreview < Lookbook::Preview
  def default
    render LayoutComponent.new
  end
end
