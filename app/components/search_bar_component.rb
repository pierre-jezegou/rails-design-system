class SearchBarComponent < ViewComponent::Base
  include ApplicationHelper
  erb_template <<-ERB
    <%# locals: () -%>
    <%= render(CardComponent.new(classes: 'card--no-padding')) do%>
      <%= form_with(url: @search_path, method: :get, class: 'search-bar') do |f| %>
          <div class='search-field'>
              <%= f.text_field :q, required: true, placeholder: @placeholder%>
          </div>
          <%= render(ButtonComponent.new(path: '', icon: 'icon_search', type: :plain)) %>
      <% end %>
    <% end %>
  ERB

  def initialize(
    search_path:,
    method: :get,
    data: { turbo: false },
    placeholder: 'Type your search here...'
  )
    super()
    @search_path = search_path
    @method = method
    @data = data
    @placeholder = placeholder
  end
end