RSpec.describe "Segment 2 - Exercise" do
  describe "Issue" do 
    it "inherits from ActiveRecord::Base" do 
      expect(Issue.superclass).to eq(ActiveRecord::Base)
    end

    it "has the appropriate columns" do
      columns = Issue.columns
      {
        title: :string,
        description: :text,
        started_at: :datetime,
        resolved: :boolean,
        computer_id: :integer,
        created_at: :datetime,
        updated_at: :datetime
      }.each do |column_name, type|
        column = columns.find{|c| c.name == column_name.to_s}
        expect(column).not_to be_nil
        expect(column.sql_type_metadata.type).to eq(type)
      end
    end

    it "belongs to a computer" do 
      expect(Issue.new).to respond_to(:computer)
    end
  end

  
end
