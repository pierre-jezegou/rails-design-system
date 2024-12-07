# frozen_string_literal: true

class QuizAnswerComponent < ViewComponent::Base
  renders_one :status_badge, "BadgeComponent"

  erb_template <<-ERB
    <%= render ButtonComponent.new(path: '', outlined: true, additional_classes: classes, disabled: @disabled) do %>
      <%= @text %>
      <% if status_badge %>
        <%= status_badge %>
      <% end %>
    <% end %>
  ERB

  def initialize(text: 'No data', disabled: false)
    @text = text
    @disabled = disabled
  end

  def classes
    [
      'quiz--answer',
    ].compact.join(" ")
  end
end
