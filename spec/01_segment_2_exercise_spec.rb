RSpec.describe "Segment 2 - Exercise" do
  describe "Computer" do 
    it "inherits from ActiveRecord::Base" do 
      expect(Computer.superclass).to eq(ActiveRecord::Base)
    end

    it "has the appropriate columns" do
      columns = Computer.columns
      {
        brand: :string,
        screen_size: :float,
        model: :string,
        model_year: :integer,
        last_backed_up_at: :datetime,
        asleep: :boolean
      }.each do |column_name, type|
        column = columns.find{|c| c.name == column_name.to_s}
        expect(column).not_to be_nil
        expect(column.sql_type_metadata.type).to eq(type)
      end
    end
  end

  describe "lib/exercises.rb" do 
    describe "#first_computer" do 
      it "returns a computer instance with a brand, screen size, model name and model year" do 
        expect(first_computer).to be_a(Computer)
        expect(first_computer.brand).to be_a(String)
        expect(first_computer.screen_size).to be_a(Float)
        expect(first_computer.model).to be_a(String)
        expect(first_computer.model_year).to be_an(Integer)
      end
    end

    describe "#second_computer" do 
      it "returns a computer instance with a brand, screen size, model name and model year" do 
        expect(second_computer).to be_a(Computer)
        expect(second_computer.brand).to be_a(String)
        expect(first_computer.screen_size).to be_a(Float)
        expect(second_computer.model).to be_a(String)
        expect(second_computer.model_year).to be_an(Integer)
      end
    end
  end
end
