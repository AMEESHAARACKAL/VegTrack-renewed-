class NutritionalValues {
  final double calories;
  final double protein;
  final double fat;
  final double carbohydrates;

  NutritionalValues({
    required this.calories,
    required this.protein,
    required this.fat,
    required this.carbohydrates,
  });

  factory NutritionalValues.fromJson(Map<String, dynamic> json) {
    return NutritionalValues(
      calories: json['calories']?.toDouble() ?? 0.0,
      protein: json['protein']?.toDouble() ?? 0.0,
      fat: json['fat']?.toDouble() ?? 0.0,
      carbohydrates: json['carbohydrates']?.toDouble() ?? 0.0,
    );
  }
}