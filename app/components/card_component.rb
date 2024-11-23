# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  renders_one :header, "CardHeaderComponent"
  renders_one :footer, "CardFooterComponent"

  erb_template <<-ERB
  <div class="<%=classes%>">
    <% if header? %>
      <%= header %>
    <% end %>
    <% if content? %>
      <%=tag.div(content, class: 'card-body') %>
    <% end %>
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
      @colored_header? "card--colored-header" : nil,
      !@padding || @colored_header ? "card--no-padding" : nil,
      @additional_classes,
    ].compact.join(" ")
  end
end
