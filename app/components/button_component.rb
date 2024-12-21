# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  include ApplicationHelper

  erb_template <<-ERB
    <% if @form_path.present? %>
      <%= button_tag type: "submit", class: classes, disabled: @disabled do %>
        <% if @icon %>
          <%= svg_icon_tag(@icon, class: "button__icon") %>
        <% end %>
        <% if @text %>
          <%= @text %>
        <% end %>
        <%= content %>
      <% end %>
    <% elsif @tag == :button %>
      <%= button_tag type: @method == :get ? 'button' : 'submit', class: classes, disabled: @disabled do %>
        <% if @icon %>
          <%= svg_icon_tag(@icon, class: "button__icon") %>
        <% end %>
        <% if @text %>
          <%= @text %>
        <% end %>
        <%= content %>
      <% end %>
    <% else %>
      <%= link_to @path, method: @method, class: classes, disabled: @disabled do %>
        <% if @icon %>
          <%= svg_icon_tag(@icon, class: "button__icon") %>
        <% end %>
        <% if @text %>
          <%= @text %>
        <% end %>
        <%= content %>
      <% end %>
    <% end %>
  ERB

  def initialize(
    text: nil,
    path: nil,
    form_path: nil,
    tag: :link, # Can be :link or :button
    method: :get,
    type: :primary,
    size: :medium,
    disabled: false,
    outlined: false,
    icon: nil,
    shape: nil,
    padding: true,
    additional_classes: nil
  )
    @text = text
    @path = path
    @form_path = form_path
    @tag = tag
    @method = method
    @type = type
    @size = size
    @disabled = disabled
    @outlined = outlined
    @icon = icon
    @shape = shape
    @padding = padding
    @additional_classes = additional_classes
  end

  def classes
    [
      "button",
      "button--#{@type}",
      "button--#{@size}",
      @disabled ? "button--disabled" : nil,
      @outlined ? "button--outlined" : nil,
      @icon ? "button--icon" : nil,
      !@shape.nil? ? "button--#{@shape}" : nil,
      @icon && @text.nil? ? "button--icon-only" : nil,
      !@padding ? "button--no-padding" : nil,
      @additional_classes
    ].compact.join(" ")
  end
end
