# frozen_string_literal: true

class QuizImageComponent < ViewComponent::Base

  erb_template <<-ERB
    <%= image_tag @avatar_url.presence || asset_path('gradient-banner.jpg'), alt: "User Avatar", class: classes%>
  ERB

  def classes
    [
      'quiz--image'
    ].join(' ')
  end

end
