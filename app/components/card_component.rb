# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  erb_template <<-ERB
    <div class="<%= classes %>">
      <% if @title.present? || @header_action_title.present? %>
        <%= render(CardHeaderComponent.new(title: @title, action_title: @header_action_title)) %>
      <% end %>
      <%=content%>
      <% if @footer_main_action_text.present? || @footer_secondary_action_text.present? %>
        <%= render(CardFooterComponent.new(main_action: @footer_main_action_text, secondary_action: @footer_secondary_action_text))%>
      <% end %>
    </div>
  ERB

  def initialize(title: nil, header_action_title: nil, footer_main_action_title: nil, footer_secondary_action_title: nil)
    @title = title
    @header_action_title = header_action_title
    @footer_main_action_text = footer_main_action_title
    @footer_secondary_action_text = footer_secondary_action_title
  end

  def classes
    [
      "card",
      !@title.nil? && !@header_action_title.nil? ? "card--with-header" : nil,
      @footer_main_action_text.nil? || @footer_secondary_action_text.nil? ? "card--no-footer" : nil
    ].compact.join(" ")
  end
end
