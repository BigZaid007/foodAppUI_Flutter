import 'package:flutter/material.dart';

import 'ShopAppDashbored.dart';

void main() => runApp(shopApp());

class shopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShopAppDashbored(),

    );
  }
}


