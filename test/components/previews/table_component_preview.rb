# test/components/previews/button_component_preview.rb

class TableComponentPreview < Lookbook::Preview
  def default
    @columns = [:name, :email, :created_at]

    @users = [
      OpenStruct.new(name: "John Doe", email: "john@example.com", created_at: Time.now),
      OpenStruct.new(name: "Jane Smith", email: "jane@example.com", created_at: Time.now - 1.day),
      OpenStruct.new(name: "Sam Wilson", email: "sam@example.com", created_at: Time.now - 2.days)
    ]
    render(TableComponent.new(rows: @users, columns: @columns))
  end
end
