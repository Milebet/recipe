class Api::V1::DoctorSerializer < Api::V1::BaseSerializer
  attributes(*Doctor.attribute_names.map(&:to_sym), :recipes)

  def recipes
    object.recipes.map do |recipe|
      Api::V1::RecipeSerializer.new(recipe, scope: scope, root: false, event: object)
    end
  end
end