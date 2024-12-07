# frozen_string_literal: true

class TagComponent < ViewComponent::Base

  erb_template <<-ERB
    <%= render(ButtonComponent.new(
      text: @text,
      path: @path,
      size: :tiny,
      shape: :tag,
      type: :secondary
    ))
    %>
  ERB

  def initialize(text:, path:)
    @text = text
    @path = path
    super
  end
end
