import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoesShop = [
    Shoe(
      name: 'Jordan',
      prise: '\$399',
      imagePath: 'assets/images/jordan.png',
      description: 'Comfortable and stylish sneakers for everyday wear.',
    ),
    Shoe(
      name: 'Air force',
      prise: '\$199',
      imagePath: 'assets/images/air_force.png',
      description: 'Comfortable and stylish sneakers.',
    ),
    Shoe(
      name: 'Airmax',
      prise: '\$299',
      imagePath: 'assets/images/nike_airmax.png',
      description: 'Comfortable and sports sneakers.',
    ),
    Shoe(
      name: 'Dunk',
      prise: '\$249',
      imagePath: 'assets/images/nike_dunk.png',
      description: 'Comfortable and stylish sneakers.',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoesShop() {
    return shoesShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
