# frozen_string_literal: true

class HeaderComponent < ViewComponent::Base
  renders_one :search_bar, "SearchBarComponent"
  renders_one :profile_logged_in, "LoggedInProfileSectionComponent"

  erb_template <<-ERB
    <%= tag.header(class: "website--header") do %>
      <%= tag.div("Logo", class: "header--logo") %>
      <% if search_bar? %>
        <%= search_bar %>
      <% end %>
      <% if profile_logged_in? %>
        <%= profile_logged_in %>
      <% else %>
        <%= render ButtonComponent.new(text: "Se connecter", path: "#") %>
      <% end %>
    <% end %>
  ERB
end
