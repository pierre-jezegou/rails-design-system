# frozen_string_literal: true

class ToggleComponent < ViewComponent::Base
  erb_template <<-ERB
    <div class="toggle-container">
        <input type="checkbox" id="toggle" />
        <label for="toggle" class="toggle-label">
            <span class="toggle-ball"></span>
        </label>
    </div>
  ERB

  def initialize
  end
end
