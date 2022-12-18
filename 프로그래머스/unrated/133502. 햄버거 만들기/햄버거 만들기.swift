import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var ingredient = ingredient
    var ingredientIndex = 0
    var answer: Int = 0
    
    while (ingredientIndex <= (ingredient.count - 4)) {
        if ingredient[ingredientIndex...(ingredientIndex + 3)] == [1, 2, 3, 1] {
            answer += 1
            ingredient = Array(ingredient.dropLast(ingredient.count - ingredientIndex) + ingredient.dropFirst(ingredientIndex + 4))
            ingredientIndex = ingredientIndex < 3 ? 0 : ingredientIndex - 3
        }
        else {
            ingredientIndex += 1
        }
    }
    
    return answer
}