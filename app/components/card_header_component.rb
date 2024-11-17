# frozen_string_literal: true

class CardHeaderComponent < ViewComponent::Base
  erb_template <<-ERB
    <div class="card-header">
    <%=tag.h3(@title, class: "card-header-title")%>
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
  def initialize(title:, action_title: nil, action_button_type: :primary)
    @title = title

    @action_title = action_title
    @action_button_type = action_button_type
  end
end
