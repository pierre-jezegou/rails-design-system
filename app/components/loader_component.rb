# frozen_string_literal: true

class LoaderComponent < ViewComponent::Base
  erb_template <<-ERB
    <%= render(BadgeComponent.new(square: true, size: :large, type: :default, no_padding: true)) do%>
      <div class="loader"> </div>
    <%end%>
  ERB
end
