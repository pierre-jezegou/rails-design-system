# frozen_string_literal: true

class CardFooterComponent < ViewComponent::Base
  erb_template <<-ERB
    <div class="card-footer">
    <% if @secondary_action %>
      <%=render(ButtonComponent.new(
        text: @secondary_action,
        type: :secondary,
        path: "/",
        size: :tiny
      ))%>
    <% end %>
    <% if @main_action %>
      <%=render(ButtonComponent.new(
        text: @main_action,
        type: :primary,
        path: "/",
        size: :tiny
      ))%>
    <% end %>
    </div>
  ERB
  def initialize(main_action: nil, secondary_action: nil)
    @main_action = main_action
    @secondary_action = secondary_action
  end
end
