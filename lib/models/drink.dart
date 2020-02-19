import 'package:flutter/foundation.dart';

enum ServeTime {
  PreDinner,
  Anytime,
  AfterDinner,
}

class Drink {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final ServeTime servetime;
  final bool isGluttenFree;
  

  const Drink({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.servetime,
    @required this.isGluttenFree,
  });
}