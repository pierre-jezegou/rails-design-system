# frozen_string_literal: true

class CardHeaderComponent < ViewComponent::Base
  erb_template <<-ERB
    <div class="<%=classes%>">
      <div class="card-header-left">
        <% if !@left_icon.nil? %>
          <%= render(BadgeComponent.new(icon: @left_icon, type: :plain)) %>
        <% end %>
        <%=tag.h3(@title, class: "card-header-title")%>
      </div>
      <% if @action_title %>
        <%=render(ButtonComponent.new(
          text: @action_title,
          type: @action_button_type,
          path: "/",
          size: :tiny
        ))%>
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
