class TableComponent < ViewComponent::Base
  renders_one :header
  renders_many :rows

  erb_template <<-ERB
    <table class="table table-bordered">
      <thead>
        <tr>
          <% @columns.each do |column| %>
            <th><%= column.to_s.titleize %></th>
          <% end %>
        </tr>
      </thead>
      <tbody>
        <% @rows.each do |row| %>
          <tr>
            <% @columns.each do |column| %>
              <td>
                <%# Dynamically access the value for the column from the row object %>
                <%= row.send(column) %>
              </td>
            <% end %>
          </tr>
        <% end %>
      </tbody>
    </table>
  ERB
  def initialize(rows:, columns:)
    @rows = rows
    @columns = columns
  end
  attr_reader :rows, :columns
end
