RSpec.describe "Segment 3 - Exercise" do
  describe "Computer" do 
    let(:computer){
      Computer.create({
        brand: "Apple", 
        screen_size: 15.0, 
        model: "Macbook Pro", 
        model_year: 2012
      })
    }

    it "has many issues" do 
      expect(computer).to respond_to(:issues)
      expect(computer.issues).to respond_to(:build)
    end

  end
end
