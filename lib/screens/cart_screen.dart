import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: cartProvider.items.isEmpty
          ? Center(
              child: Text('No items in cart',
                  style: Theme.of(context).textTheme.bodyLarge))
          : ListView.builder(
              itemCount: cartProvider.items.length,
              itemBuilder: (context, index) {
                final cartItem = cartProvider.items[index];
                return ListTile(
                  leading: Image.network(cartItem.product.imageUrl,
                      width: 50.w, height: 50.h),
                  title: Text(cartItem.product.name,
                      style: Theme.of(context).textTheme.bodyLarge),
                  subtitle: Text(
                      'Quantity: ${cartItem.quantity} - \$${cartItem.totalPrice}',
                      style: Theme.of(context).textTheme.bodyLarge),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () => cartProvider.removeItem(cartItem.product),
                  ),
                );
              },
            ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total: \$${cartProvider.totalAmount}',
                style: Theme.of(context).textTheme.headlineSmall),
            ElevatedButton(
              onPressed: () {
                // Handle checkout or other actions
              },
              child: const Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
