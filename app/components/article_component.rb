# frozen_string_literal: true

class ArticleComponent < ViewComponent::Base

  renders_many :tags, "TagComponent"

  erb_template <<-ERB
    <%= render(CardComponent.new(additional_classes: 'article')) do %>
      <%= tag.div(class: 'article--images') do %>
        <%= image_tag(@image_url, class: "article--main-image")%>
        <% if @source_logo_url %>
          <%= image_tag(@source_logo_url, class: "article--source-logo-image")%>
        <% end %>
        
      <% end %>
      <%= tag.div(class: "article--content") do %>
        <%= tag.div(class: "article--content-body") do %>
          <%= link_to(@image_url, class: "article--image", target: "_blank") do %>
            <%= tag.h3(@title, class: "article--title") %>
          <% end %>
          <%= tag.p do%>
            <%= content %>
          <% end %>
        <% end %>
        <%= tag.div(class: "article--content-footer") do %>
          <%= tag.div(class: "article--tags") do %>
            <% if tags.any? %>
              <% tags.each do |tag| %>
                <%= tag %>
              <% end %>
            <% end %>
          <% end %>
          <%= tag.p(@published + " - " + @source, class: "article--information") %>
        <% end %>
      <% end %>
    <% end %>
  ERB

  def initialize(title:, image_url:, published:, source:, source_logo_url: nil)
    @title = title
    @image_url = image_url
    @published = published
    @source = source
    @source_logo_url = source_logo_url
  end
end
