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
    describe "#back_up" do 
      it "updates the last_backed_up_at attribute for the computer (and persists to the database)" do
        computer.back_up
        now = Time.zone.now
        computer.reload
        expect(computer.last_backed_up_at).not_to be_nil
        expect(computer.last_backed_up_at.strftime("%m-%e-%y %H:%M")).to eq(now.strftime("%m-%e-%y %H:%M"))
      end
    end

    describe "#sleep" do 
      it "updates the asleep attribute for the computer to true (and persists to the database)" do 
        computer.sleep
        computer.reload
        expect(computer.asleep?).to eq(true)
      end
    end

    describe "#wake_up" do
      it "update the asleep attribute for the computer to false (and persists to the database)" do 
        computer.sleep
        expect(computer.asleep?).to eq(true)
        computer.wake_up
        computer.reload
        expect(computer.asleep?).to eq(false)
      end
    end

    describe ".all" do 
      it "is defined for you automatically - returns a collection of all created computers" do 
        expect(Computer.all).to be_an(ActiveRecord::Relation)
      end
    end

    describe ".create" do 
      it "is defined for you automatically - returns a new instance of computer that has been persisted to the database" do 
        expect(computer).to be_a(Computer)
        expect(computer.id).not_to be_nil
      end
    end

    describe ".backed_up" do 
      it "returns all computers that have a last_backed_up_at time" do 
        imac = Computer.create(
          brand: "Apple",
          model: "iMac",
          screen_size: 24.0,
          model_year: 2021
        )
        imac.back_up
        expect(Computer.backed_up).to include(imac)
      end
    end
  end
end
