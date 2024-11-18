# frozen_string_literal: true

class NavigationSectionComponent < ViewComponent::Base
  renders_many :items, NavigationItemComponent

  erb_template <<-ERB
    <div class="navigation-section">
      <% if @title %>
        <h3 class="section-title"><%= @title %></h3>
      <% end %>
      <div class="section-content">
        <% items.each do |item| %>
          <%= item %>
        <% end %>
      </div>
    </div>
  ERB

  def initialize(title: nil)
    @title = title
  end
end
