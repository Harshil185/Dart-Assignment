/*  5. Shopping Cart
Simulate a simple shopping cart system with classes for products and a shopping cart.
Users can add items in cart and view items and total value of cart .
Following things should be covered in the program.
1. Feed default products with price and show it to user on program start.
2. We need to provide a selection of operations to users. We need to support following
operations
  1. Add product to cart
  2. View cart
  3. Exit
3. View cart will show all the items in cart and show total value of cart.
4. Program will keep asking to enter options until the user selects option 3. Exit
5. Implement required class properties and methods to achieve mentioned behaviour.
6. Implement required restrictions and validation. 
*/

import 'dart:io';

class Product {
  String name;
  double price;

  Product(this.name, this.price);

  void displayInfo(int index) {
    print('$index. $name - ₹${price.toStringAsFixed(2)}');
  }
}

class CartItem {
  Product product;
  int quantity;

  CartItem(this.product, this.quantity);

  double getTotalPrice() {
    return product.price * quantity;
  }

  void displayItem(int index) {
    print(
        '$index. ${product.name} - ₹${product.price.toStringAsFixed(2)} x $quantity = ₹${getTotalPrice().toStringAsFixed(2)}');
  }
}

class ShoppingCart {
  List<CartItem> items = [];

  void addItem(Product product, int quantity) {
    items.add(CartItem(product, quantity));
    print('${product.name} added to the cart.');
    print('==================================');
  }

  void viewCart() {
    if (items.isEmpty) {
      print('Your cart is empty.');
    } else {
      print('\nItems in your cart:');
      double total = 0.0;
      for (var i = 0; i < items.length; i++) {
        items[i].displayItem(i + 1);
        total += items[i].getTotalPrice();
      }
      print('\nTotal value of cart: ₹${total.toStringAsFixed(2)}');
    }
  }
}

void main() {
  List<Product> products = [
    Product('Laptop', 60000.00),
    Product('Smartphone', 30000.00),
    Product('Headphones', 1500.00),
    Product('Keyboard', 1000.00),
    Product('Mouse', 500.00)
  ];

  ShoppingCart cart = ShoppingCart();
  String choice;

  do {
    print('\nAvailable Products:');
    for (var i = 0; i < products.length; i++) {
      products[i].displayInfo(i + 1);
    }

    print('\nShopping Cart System');
    print('1. Add product to cart');
    print('2. View cart');
    print('3. Exit');
    print('Enter your choice:');
    choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        print('Enter the product number to add to the cart:');
        int productNumber = int.parse(stdin.readLineSync()!);
        if (productNumber > 0 && productNumber <= products.length) {
          print('Enter the quantity:');
          int quantity = int.parse(stdin.readLineSync()!);
          if (quantity > 0) {
            cart.addItem(products[productNumber - 1], quantity);
          } else {
            print('Invalid quantity. Please enter a positive number.');
            print('==================================');
          }
        } else {
          print('Invalid product number. Please select a valid product.');
          print('==================================');
        }
        break;
      case '2':
        cart.viewCart();
        print('==================================');
        break;
      case '3':
        print('Exiting...');
        break;
      default:
        print('Invalid choice. Please select a valid option.');
        print('==================================');
    }
  } while (choice != '3');
}
