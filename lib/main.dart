 import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/products_provider.dart';
import 'package:flutter_application_1/providers/cart_provider.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      builder: (_, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => ProductsProvider()),
            ChangeNotifierProvider(create: (_) => CartProvider()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter App',
            theme: AppTheme.theme,
            home: HomeScreen(),
          ),
        );
      },
    );
  }
}
