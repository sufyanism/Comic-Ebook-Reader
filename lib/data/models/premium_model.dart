class PremiumPlan {
  final String duration;
  final double price;
  final double? originalPrice;
  final bool isSelected;

  PremiumPlan({
    required this.duration,
    required this.price,
    this.originalPrice,
    this.isSelected = false,
  });
}
