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

  def to_cups
    @ingredients_list.each do |ingredient|
      ingredient.each do |key, value|
        cup = value / 15 /16
        ingredient[key] = cup
      end
    end
  end
end