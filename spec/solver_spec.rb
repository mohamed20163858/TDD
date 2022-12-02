require_relative '../solver'
describe Solver do 
  context "test solver class behaviour" do 
    before(:all) do 
      @solver = Solver.new #arrange 
    end
    it "test the existence of solver class" do 
      expect(@solver).to be_instance_of(Solver) #assert
    end
    it "test the existence of method factorial" do 
        expect(@solver).to respond_to(:factorial) #assert
    end
    it "test the existence of method reverse" do 
        expect(@solver).to respond_to(:reverse) #assert
    end
    it "test the existence of method fizzbuzz" do 
        expect(@solver).to respond_to(:fizzbuzz) #assert
    end
    it "test the factorial of base case 0" do 
      result = @solver.factorial(0)
      expect(result).to eq 1
    end
    it "test the factorial of 5" do 
        result = @solver.factorial(5)
        expect(result).to eq 120
    end
    it "test the factorial of 8" do 
        result = @solver.factorial(8)
        expect(result).to eq 40320
    end
    it "test the factorial of negative number" do 
        expect { @solver.factorial(-10) }.to raise_error("invalid input you cannot enter a negative integer!")
    end
    it "test  reverse using base case '' " do 
        result = @solver.reverse('')
        expect(result).to eq ''
      end
    it "test the reverse of word 'hello'" do 
      result = @solver.reverse('hello')
      expect(result).to eq 'olleh'
    end
    it "test the reverse of word 'mostafa saleh'" do 
        result = @solver.reverse('mostafa saleh')
        expect(result).to eq 'helas afatsom'
    end
    it "test the fizzbuzz of number 9" do 
        result = @solver.fizzbuzz(9)
        expect(result).to eq 'fizz'
    end
    it "test the fizzbuzz of number 125" do 
        result = @solver.fizzbuzz(125)
        expect(result).to eq 'buzz'
    end
    it "test the fizzbuzz of number 75" do 
        result = @solver.fizzbuzz(75)
        expect(result).to eq 'fizzbuzz'
    end
    it "test the fizzbuzz of number 11" do 
        result = @solver.fizzbuzz(11)
        expect(result).to eq '11'
    end
  end
end