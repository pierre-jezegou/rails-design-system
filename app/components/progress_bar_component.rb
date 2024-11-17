# frozen_string_literal: true

class ProgressBarComponent < ViewComponent::Base
  erb_template <<-ERB
      <progress id="<%=@id%>" max="100" value="<%=@progression%>"><%=@progression%>%</progress>
  ERB

  def initialize(progression: 0, id: nil)
    @progression = progression
    @id = id || "progress-bar-#{SecureRandom.hex(6)}"
  end

  def classes
    [
      "progress-container"
    ].compact.join(" ")
  end
end
