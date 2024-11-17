# frozen_string_literal: true

class ProgressBarComponent < ViewComponent::Base
  erb_template <<-ERB
      <div 
        id="<%= @id %>" 
        class="<%= classes %>" 
        data-controller="hello3">
      <div class="progress-bar" style="width: <%= @progression %>%"></div>
    </div>
  ERB

  def initialize(progression: 0, id: nil)
    @progression = progression
    @id = id || "progress-bar-#{SecureRandom.hex(6)}"
  end

  def classes
    [
      "progress-container"
    ].compact.join(" ")
  end
end
