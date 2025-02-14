import 'package:flutter/foundation.dart';
import 'package:minimal_eshop/models/product.dart';

class Shop extends ChangeNotifier{
  //products for sale
   final List<Product> _shop = [
    //product
    Product(
      name: "Product 1",
      price: 90.00,
      description: "Item description",
      // imagePath: '',
    ),
    Product(
      name: "Product 2",
      price: 80.00,
      description: "Item description",
      // imagePath: '',
    ),
    Product(
      name: "Product 3",
      price: 70.00,
      description: "Item description",
      // imagePath: '',
    ),
    Product(
      name: "Product 4",
      price: 60.00,
      description: "Item description",
      // imagePath: '',
    )
  ];

  //User cart
  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}