# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  renders_one :header, "CardHeaderComponent"
  renders_one :footer, "CardFooterComponent"
  renders_one :badge, "BadgeComponent"

  erb_template <<-ERB
  <div class="<%=classes%>">
    <% if header? %>
      <%= render header do |h|%>
        <!-- Change text -->
        <% h.with_action_button(path: '', text: 'Action button', icon: 'cross', type: :default, outlined: true, size: :small) %>
      <% end %>
    <% end %>
  #{'  '}
    <% if content? %>
      <%= tag.div(class: 'card-body-container') do %>
        <% if badge? %>
          <%= badge %>
        <% end %>
        <%=tag.div(class: 'card-body') do %>#{' '}
          <%= content %>
        <% end %>
      <% end %>
    <% end %>
  #{'  '}
    <% if footer? %>
      <%= footer %>
    <% end %>
  </div>
  ERB

  def initialize(colored_header: false, type: :default, padding: true, additional_classes: nil)
    @colored_header = colored_header
    @type = type
    @padding = padding
    @additional_classes = additional_classes
  end

  def classes
    [
      "card",
      "card--type-#{@type}",
      @colored_header? "card--colored-header" : nil,
      !@padding || @colored_header ? "card--no-padding" : nil,
      @additional_classes
    ].compact.join(" ")
  end
end
