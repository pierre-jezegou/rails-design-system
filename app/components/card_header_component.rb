# frozen_string_literal: true

class CardHeaderComponent < ViewComponent::Base
  renders_one :badge, "BadgeComponent"
  renders_one :action_button, "ButtonComponent"

  erb_template <<-ERB
    <div class="<%=classes%>">
      <div class="card-header-left">
        <% if !@left_icon.nil? %>
          <%= render BadgeComponent.new(icon: @left_icon, square: true, type: @type, border: true) %>
        <% end %>
        <%=tag.h3(@title, class: "card-header-title")%>
      </div>
      <% if action_button %>
        <%= action_button %>
      <% end %>
    </div>
  ERB
  def initialize(title: nil, action_title: nil, action_button_type: :primary, left_icon: nil, type: :default)
    @title = title
    @action_title = action_title
    @action_button_type = action_button_type
    @left_icon = left_icon
    @type = type
  end
  def classes
    ["card-header", "card-header--#{@action_button_type}"].compact.join(" ")
  end
end
