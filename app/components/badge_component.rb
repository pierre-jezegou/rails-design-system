# frozen_string_literal: true

class BadgeComponent < ViewComponent::Base
  include ApplicationHelper

  erb_template <<-ERB
    <div class="<%=classes%>">
      <% if @icon %>
        <%= svg_icon_tag(@icon, class: "badge--icon") %>
      <% end %>
      <% if @text %>
        <%=tag.p(@text)%>
      <% end %>
      <%=content%>
    </div>
  ERB

  def initialize(text: nil, icon: nil, square: false, type: :default, border: false, size: :medium, no_padding: false)
    @text = text
    @icon = icon
    @square = square
    @type = type
    @border = border
    @size = size
    @no_padding = no_padding
  end

  def classes
    [
      "badge",
      @square? "badge--square" : nil,
      @border? "badge--border" : nil,
      "badge--#{@size}",
      @no_padding? "badge--no_padding" : nil,
      badge_class(@type)
    ].compact.join(" ")
  end

  def badge_class(type)
    badge_types = {
      success: "badge--success",
      error: "badge--error",
      danger: "badge--danger",
      warning: "badge--warning",
      plain: "badge--plain"
    }
    badge_types[type] || "badge--default"
  end
end
