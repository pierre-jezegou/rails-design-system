# frozen_string_literal: true

class LoggedInProfileSectionComponent < ViewComponent::Base
  erb_template <<-ERB
    <%= link_to("#", class: "profile profile--connected") do %>
      <%= render AvatarComponent.new(size: :tiny, stroke: "1-secondary") %>
      <%= tag.div(class: "profile--text") do %>
        <%= tag.p(@name, class: "profile--name") %>
        <%= tag.p('Information', class: "profile--information") %>
      <% end %>
    <% end %>
  ERB
  def initialize(name:, profile_pic: nil)
    @name = name
    @profile_pic = profile_pic
  end
end
