require_relative '../solver'
describe Solver do 
  context "test solver class behaviour" do 
    before(:all) do 
      @solver = Solver.new 
    end
    it "test the existence of solver class" do 
      expect(@solver).to be_instance_of(Solver)
    end
    it "test the existence of method factorial" do 
        expect(@solver).to respond_to(:factorial)
    end
    it "test the existence of method reverse" do 
        expect(@solver).to respond_to(:reverse)
    end
    it "test the existence of method fizzbuzz" do 
        expect(@solver).to respond_to(:fizzbuzz)
    end
  end
end