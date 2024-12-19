class Food {
  final String name;
  final String description;
  final String image;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

class Addon {
  String name;
  double price;
  Addon({required this.name, required this.price});
}

enum FoodCategory {
  burgers,
  salade,
  sides,
  dessert,
  drink,
}
