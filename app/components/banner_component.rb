# frozen_string_literal: true

class BannerComponent < ViewComponent::Base
  include ApplicationHelper

  erb_template <<-ERB
    <% if @type == :default %>
      <%=render(CardComponent.new(classes: classes)) do%>
      <%= render(BadgeComponent.new(type: @type, icon: @content_icon, square: true))%>
        <%=content%>
      <% end %>
    <% end %>

    <% if @header_text.present? %>
      <%=render(CardComponent.new(title: @header_text, type: @type, header_button_type: :secondary, classes: classes, colored_header: @colored_header)) do%>
      <% if @content_icon.present?%>
        <%=render(BadgeComponent.new(type: @type, icon: @content_icon, square: true))%>
      <%end%>
        <%=content%>
      <% end %>
    <% end %>
  ERB

  def initialize(text: nil, type: :default, content_icon: false, header_text: nil, colored_header: false)
    @text = text
    @type = type
    @content_icon = content_icon
    @header_text = header_text
    @colored_header = colored_header
  end

  def classes
    [
      "banner",
      "banner--#{@type}"
    ].compact.join(" ")
  end
end
