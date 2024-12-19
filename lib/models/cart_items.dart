import 'food.dart'; // Importing the Food and Addon classes from the food.dart file.

class CartItems {
  // The Food object representing the food item added to the cart.
  Food food;

  // A list of selected add-ons for the food item.
  List<Addon> selectedAddons;

  // The quantity of this food item in the cart.
  int quantity;

  // Constructor to initialize the CartItems object with the required fields.
  CartItems({
    required this.selectedAddons, // List of add-ons must be provided.
    required this.food, // Food item must be provided.
    required this.quantity, // Quantity of the food item must be provided.
  });

  // Getter to calculate the total price of the cart item.
  double get totalPrice {
    // Calculate the total price of the selected add-ons using fold.
    // fold starts with an initial value of 0 and iterates through the list
    // to sum up the prices of all the add-ons.
    double addonPrice =
        selectedAddons.fold(0, (sum, addon) => sum + addon.price);

    // Add the base price of the food item to the total add-on price
    // and multiply by the quantity to get the final total price.
    return (addonPrice + food.price) * quantity;
  }
}
