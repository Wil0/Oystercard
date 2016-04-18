require "oystercard"

describe Oystercard do

   it { expect(subject).to respond_to(:balance) }
   it { expect(subject).to respond_to(:top_up).with(1).argument}

   describe "#balance" do

     it "should be 0 when new oyster created by default" do
       expect(subject.balance).to eq 0
     end
   end

   describe "#top_up" do

     it "should add money to previous balance" do
       expect{subject.top_up 6 }.to change{ subject.balance }.by 6
     end

     it "should limit the top_up amount to £90" do
       expect{ subject.top_up 91 }.to raise_error "Top up limit is £90"
     end
   end
end
