class RecipeConverter
  def initialize(ingredients_list)
    @ingredients_list = ingredients_list
  end

  def to_tablespoons
    @ingredients_list.each do |ingredient|
      ingredient.each do |key, value|
        tbsp = value / 15
        ingredient[key] = tbsp
      end
    end
  end
end