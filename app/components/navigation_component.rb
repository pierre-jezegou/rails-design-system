# frozen_string_literal: true

class NavigationComponent < ViewComponent::Base
  renders_many :sections, NavigationSectionComponent

  erb_template <<-ERB
    <nav class="navigation">
      <%= content %>
      <% sections.each do |section| %>
        <%= section %>
      <% end %>
    </nav>
  ERB

  def initialize
    super
  end
end
