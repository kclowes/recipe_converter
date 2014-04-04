require_relative '../lib/recipe_converter'

describe RecipeConverter do
  it 'converts from grams to tablespoons' do
    aoh = [{'chicken' => 16}, {'bacon' => 5}]
    conv = RecipeConverter.new(aoh)
    actual = conv.to_tablespoons
    expected = [{'chicken' => (16/15)}, {'bacon' => (5/15)}]
    expect(actual).to eq(expected)
  end
  it 'converts from grams to cups' do
    aoh = [{'chicken' => 16}, {'bacon' => 5}]
    conv = RecipeConverter.new(aoh)
    actual = conv.to_cups
    expected = [{'chicken' => (16/15/16)}, {'bacon' => (5/15/16)}]
    expect(actual).to eq(expected)
  end
end