import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/providers/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.imageUrl, width: double.infinity),
            SizedBox(height: 10.h),
            Text(product.name,
                style: Theme.of(context).textTheme.headlineMedium),
            Text('\$${product.price}',
                style: Theme.of(context).textTheme.headlineSmall),
            SizedBox(height: 10.h),
            Text(product.description,
                style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: 20.h),
            ElevatedButton(
              onPressed: () {
                cartProvider.addItem(product);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${product.name} added to cart!')),
                );
              },
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
