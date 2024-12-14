# frozen_string_literal: true

class QuizComponent < ViewComponent::Base
  renders_many :answers, "QuizAnswerComponent"

  erb_template <<-ERB
    <%= render CardComponent.new(additional_classes: 'card--quiz') do |card| %>
      <% card.with_header(title: 'Questions du jour') %>
      <% if @question %>
        <%= tag.p(@question, class: 'quiz--question') %>
      <% end %>
      <% if answers %>
        <%= tag.div(class: "quiz--answers") do %>
          <%= tag.h4 'Réponses proposées' %>
          <% answers.each do |answer| %>
            <%= answer %>
          <% end %>
        <% end %>
      <% else %>
        <%= tag.p('No post yet.') %>
      <% end %>
    <% end %>
  ERB

  def initialize(image_url: nil, question:  "No question yet")
    @image_url = image_url
    @question = question
  end
end
