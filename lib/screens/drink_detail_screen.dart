import 'package:flutter/material.dart';

class DrinkDetailScreen extends StatelessWidget {
  static const routeName = '/drink-detail';

  @override
  Widget build(BuildContext context) {
    final drinkId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text('$drinkId'),),
      body: Center(child: Text('The drink - $drinkId'),),
    );
  }
}