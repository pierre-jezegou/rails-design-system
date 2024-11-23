# frozen_string_literal: true

class CardHeaderComponent < ViewComponent::Base
  renders_one :badge, "BadgeComponent"
  renders_one :action_button, "ButtonComponent"

  erb_template <<-ERB
    <div class="<%=classes%>">
      <div class="card-header-left">
        <% if badge? %>
          <%= badge %>
        <% end %>
        <%=tag.h3(@title, class: "card-header-title")%>
      </div>
      <% if @action_title %>
        <% if action_button %>
          <%= action_button %>
        <% end %>
      <% end %>
    </div>
  ERB
  def initialize(title: nil, action_title: nil, action_button_type: :primary, left_icon: nil)
    @title = title
    @left_icon = left_icon
    @action_title = action_title
    @action_button_type = action_button_type
  end
  def classes
    ["card-header", "card-header--#{@action_button_type}"].compact.join(" ")
  end
end
