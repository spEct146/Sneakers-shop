import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_app/models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) => Column(
        children: [
          const Text(
            'My cart',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: cart.getUserCart().length,
              itemBuilder: (context, index) {
                final shoe = cart.getUserCart()[index];
                return ListTile(
                  leading: Image.asset(shoe.imagePath, width: 50, height: 50),
                  title: Text(shoe.name),
                  subtitle: Text(shoe.prise),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle, color: Colors.red),
                    onPressed: () {
                      cart.removeFromCart(shoe);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${shoe.name} removed from cart!'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
