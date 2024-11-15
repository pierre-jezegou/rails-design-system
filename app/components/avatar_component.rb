# frozen_string_literal: true

class AvatarComponent < ViewComponent::Base
  include ApplicationHelper

  erb_template <<-ERB
      <img src="<%= @avatar_url %>" alt="User Avatar" class="<%=classes%>" />
  ERB

  def initialize(avatar_url:, size: :medium, shape: :circle, stroke: nil)
    @avatar_url = avatar_url
    @size = size
    @shape = shape
    @stroke = stroke
  end

  def classes
    [
      "avatar",
      "avatar--#{@size}",
      "avatar--#{@shape}",
      !@stroke.nil? ? "avatar--stroke-#{@stroke}" : "avatar--no-stroke"
    ].compact.join(" ")
  end
end