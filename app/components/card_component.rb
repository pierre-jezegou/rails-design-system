# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  erb_template <<-ERB
    <div class="<%= classes %>">
      <% if @title.present? || @header_action_title.present? %>
        <%= render(CardHeaderComponent.new(title: @title, left_icon: default_left_icon(@type), action_title: @header_action_title, action_button_type: @header_button_type)) %>
      <% end %>
      <div class="card-body">
        <%=content%>
      </div>
      <% if @footer_main_action_text.present? || @footer_secondary_action_text.present? %>
        <%= render(CardFooterComponent.new(main_action: @footer_main_action_text, secondary_action: @footer_secondary_action_text))%>
      <% end %>
    </div>
  ERB

  def initialize(title: nil, left_icon: nil, header_action_title: nil, header_button_type: :secondary, footer_main_action_title: nil, footer_secondary_action_title: nil, classes: nil, type: :default, colored_header: false)
    @title = title
    @left_icon = left_icon
    @header_action_title = header_action_title
    @footer_main_action_text = footer_main_action_title
    @footer_secondary_action_text = footer_secondary_action_title
    @additional_classes = classes
    @type = type
    @header_button_type = header_button_type
    @colored_header = colored_header
  end

  def classes
    [
      "card",
      !@title.nil? && !@header_action_title.nil? ? "card--with-header" : nil,
      @footer_main_action_text.nil? || @footer_secondary_action_text.nil? ? "card--no-footer" : nil,
      "card--type-#{@type}",
      @colored_header ? "card--colored-header" : nil,
      @additional_classes
    ].compact.join(" ")
  end

  def default_left_icon(type)
    badge_types = {
      success: "check",
      delete: "icon_delete",
      warning: "icon_warning",
      danger: "icon_bug",
      plain: nil
    }
    badge_types[type] || nil # Fallback if type isn't found
  end
end
