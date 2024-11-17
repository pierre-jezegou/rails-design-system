# frozen_string_literal: true

class AvatarComponent < ViewComponent::Base
  include ApplicationHelper

  erb_template <<-ERB
    <% if !@avatar_url.nil? %>
      <img src="<%= @avatar_url %>" alt="User Avatar" class="<%=classes%>" />
    <% else %>
      <%= render(BadgeComponent.new(text: @initials.upcase, square: true, size: :large)) %>
    <% end %>
  ERB

  def initialize(avatar_url: nil, size: :medium, shape: :circle, stroke: nil, initials: nil)
    @avatar_url = avatar_url
    @size = size
    @shape = shape
    @stroke = stroke
    @initials = initials
  end

  def classes
    [
      "avatar",
      "avatar--#{@size}",
      "avatar--#{@shape}",
      !@stroke.nil? ? "avatar--stroke-#{@stroke}" : "avatar--no-stroke",
      !@initials.nil? && @avatar_url.nil? ? "avatar--initials" : nil
    ].compact.join(" ")
  end
end
