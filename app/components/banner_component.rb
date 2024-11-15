# frozen_string_literal: true

class BannerComponent < ViewComponent::Base
  include ApplicationHelper

  erb_template <<-ERB
    <%=render(CardComponent.new(classes: classes)) do%>
      <% if @type == :default %>
        <%= render(BadgeComponent.new(type: @type, icon: 'icon_edit', square: true))%>
        <%=content%>
      <% end %>
    <% end %>
  ERB

  def initialize(text: nil, type: :default, with_icon: false)
    @text = text
    @type = type
    @with_icon = with_icon
  end

  def classes
    [
      "banner",
      @with_icon ? "banner--default" : ""
    ].compact.join(" ")
  end
end
