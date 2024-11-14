# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  include ApplicationHelper

  erb_template <<-ERB
    <%= link_to @path, class: classes, disabled: @disabled do %>
      <% if @icon %>
        <%= svg_icon_tag(@icon, class: "button__icon") %>
      <% end %>
      <% if @text %>
        <%= @text %>
      <% end %>
    <% end %>
  ERB

  def initialize(text: nil, path:, type: :primary, size: :medium, disabled: false, outlined: false, icon: nil)
    @text = text
    @path = path
    @type = type
    @size = size
    @disabled = disabled
    @outlined = outlined
    @icon = icon
  end

  def classes
    [
      "button",
      "button--#{@type}",
      "button--#{@size}",
      @disabled ? "button--disabled" : nil,
      @outlined ? "button--outlined" : nil,
      @icon ? "button--icon" : nil,
      @icon && @text.nil? ? "button--icon-only" : nil
    ].compact.join(" ")
  end
end
