# frozen_string_literal: true

class BannerComponent < ViewComponent::Base
  include ApplicationHelper

  erb_template <<-ERB
    <% if @type == :default %>
      <%=render(CardComponent.new(classes: classes)) do%>
      <%= render(BadgeComponent.new(type: @type, icon: 'icon_edit', square: true))%>
        <%=content%>
      <% end %>
    <% end %>
    
    <% if @header_text.present? %>
      <%=render(CardComponent.new(title: @header_text, left_icon: 'check',header_button_type: :secondary, header_action_title: 'Essai', classes: classes, colored_header: true)) do%>
      <%= render(BadgeComponent.new(type: @type, icon: 'icon_edit', square: true))%>
        <%=content%>
      <% end %>
    <% end %>
  ERB

  def initialize(text: nil, type: :default, with_icon: false, header_text: nil)
    @text = text
    @type = type
    @with_icon = with_icon
    @header_text = header_text
  end

  def classes
    [
      "banner",
      "banner--#{@type}",
    ].compact.join(" ")
  end
end
