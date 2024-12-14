# frozen_string_literal: true

class ArticlesContainerComponent < ViewComponent::Base
  renders_many :articles, "ArticleComponent"

  erb_template <<-ERB

    <%= render(CardComponent.new(type: :default, additional_classes: 'articles-container-card')) do |card| %>
    <% card.with_header(
      title: "Recent articles",
      left_icon: "bookmark",
      action_title: "Edit",
      action_button_type: :primary
      ) %>
      <% @articles.each do |article_data| %>
        <%= render ArticleComponent.new(
          title: article_data[:title],
          image_url: article_data[:image_url],
          published: article_data[:published],
          source: article_data[:source],
          source_logo_url: article_data[:source_logo_url]
        ) do |article| %>
          <% article.with_tags(article_data[:tags]) %>
          <%= article_data[:content] %>
        <% end %>
      <% end %>
    <% end %>
  ERB

  def initialize(articles: [])
    @articles = articles
  end
end
