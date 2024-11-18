# frozen_string_literal: true

class NavigationItemComponent < ViewComponent::Base
  include ApplicationHelper

  erb_template <<-ERB
    <%= link_to @url, class: "navigation-item" do %>
      <%= svg_icon_tag(@icon, class: "nav__icon") %>
      <span class="label"><%= @label %></span>
    <% end %>
  ERB

  def initialize(url:, label:, icon:)
    @url = url
    @label = label
    @icon = icon
  end
end
