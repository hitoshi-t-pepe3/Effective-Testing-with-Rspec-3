
RSpec.describe 'An ideal sandwich' do

  Sandwich = Struct.new(:taste, :toppings)

  it 'is delicious' do
    sandwich = Sandwich.new('delicious', [])
    taste = sandwich.taste
    expect(taste).to eq('delicious')
  end

  it 'lets me add tappings' do
    sandwich = Sandwich.new('delicious', [])
   
    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings

    expect(toppings).not_to be_empty
  end
end
