# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  erb_template <<-ERB
    <div class="card">
      <%= render(CardHeaderComponent.new(title: @title, action_title: @header_action_title))%>
      <%=content%>
      <%= render(CardFooterComponent.new(main_action: @footer_main_action_text, secondary_action: @footer_secondary_action_text))%>
    </div>
  ERB

  def initialize(title:, header_action_title: nil, footer_main_action_title: nil, footer_secondary_action_title: nil)
    @title = title
    @header_action_title = header_action_title
    @footer_main_action_text = footer_main_action_title
    @footer_secondary_action_text = footer_secondary_action_title
  end
end
