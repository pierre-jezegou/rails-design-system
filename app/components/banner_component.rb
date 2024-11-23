# frozen_string_literal: true

class BannerComponent < ViewComponent::Base
  include ApplicationHelper
  renders_one :badge, "BadgeComponent"

  erb_template <<-ERB
    <%=render(CardComponent.new(colored_header: @colored_header, additional_classes: classes)) do |card|%>
      <% card.with_header(title: @header_text, left_icon: "icon_edit", action_title: "Edit") %>
      <% if badge? %>
        <%= badge %>
      <% end %>
      <%=content%>
    <% end %>
  ERB

  def initialize(header_text: nil, type: :default, content_icon: false, colored_header: false)
    @type = type
    @content_icon = content_icon
    @header_text = header_text
    @colored_header = colored_header
  end

  def classes
    [
      "banner",
      "banner--#{@type}",

    ].compact.join(" ")
  end
end
