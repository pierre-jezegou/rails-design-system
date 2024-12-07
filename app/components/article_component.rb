# frozen_string_literal: true

class ArticleComponent < ViewComponent::Base

  erb_template <<-ERB
    <%= render(CardComponent.new(additional_classes: 'article')) do %>
      <%= tag.div(class: 'article--images') do %>
        <%= image_tag("https://lcp.fr/sites/lcp.fr/files/styles/entete_contenu_1030x570/public/2024-09/Macron%202.jpg?h=dd98df0d&itok=WtCAyrGE", class: "article--main-image")%>
        <%= image_tag("https://www.abilitis.fr/wp-content/uploads/2024/11/franceinfo-en-journee-speciale-A-quoi-ressemblera-votre-ete-_-vendredi-1er-juillet.jpg", class: "article--source-logo-image")%>
        
      <% end %>
      <%= tag.div(class: "article--content") do %>
        <%= tag.div(class: "article--content-body") do %>
          <%= tag.h3(@title, class: "article--title") %>
          <%= tag.p do%>
            <%= content %>
          <% end %>
        <% end %>
        <%= tag.div(class: "article--content-footer") do %>
          <%= tag.div("Tags", class: "article--tags") %>
          <%= tag.p("1j - FranceInfo", class: "article--information") %>
        <% end %>
      <% end %>
    <% end %>
  ERB

  def initialize(title:)
    @title = title
  end
end
