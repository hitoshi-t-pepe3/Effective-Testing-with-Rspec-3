Sandwich = Struct.new(:taste, :toppings)

def sandwich
  Sandwich.new('delicious', [])
end

RSpec.describe 'An ideal sandwich' do
  it 'is delicious' do
    taste = sandwich.taste
    expect(taste).to eq('delicious')
  end

  it 'lets me add tappings' do
    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings

    expect(toppings).not_to be_empty
  end
end
