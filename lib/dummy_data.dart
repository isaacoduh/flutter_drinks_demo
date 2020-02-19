import 'package:drinksdemo/models/drink.dart';
import 'package:flutter/material.dart';
import './models/category.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'cat_1',
    title: 'Amarena Cocktails',
    color: Colors.purple,
  ),
  Category(id: 'cat_2', title: 'Aria&Velluto', color: Colors.red),
  Category(id: 'cat_3', title: 'Caffetteria', color: Colors.orange),
  Category(
      id: 'cat_4', title: 'Caffetteria Internazionale', color: Colors.amber),
  Category(id: 'cat_5', title: 'Alcoholic Cocktail', color: Colors.blue),
  Category(id: 'cat_6', title: 'Analcoholic Cocktail', color: Colors.green),
  Category(id: 'cat_7', title: 'Cocktail IBA', color: Colors.lightBlue),
  Category(id: 'cat_8', title: 'Cocktail Solido', color: Colors.pink),
  Category(id: 'cat_9', title: 'Coffee Specialty', color: Colors.teal),
  Category(id: 'cat_10', title: 'Cold Drink', color: Colors.brown),
  Category(id: 'cat_11', title: 'Frappè', color: Colors.cyan),
  Category(id: 'cat_12', title: 'Gelato Cocktail', color: Colors.deepOrange),
  Category(id: 'cat_13', title: 'Granita', color: Colors.indigo),
  Category(id: 'cat_14', title: 'Hot Drink', color: Colors.limeAccent),
  Category(id: 'cat_15', title: 'Italian soda', color: Colors.redAccent),
  Category(id: 'cat_16', title: 'Lemonade', color: Colors.yellow),
  Category(id: 'cat_17', title: 'Smoothie', color: Colors.deepPurpleAccent),
  Category(id: 'cat_18', title: 'Sorbet', color: Colors.lightGreen),
];

const DUMMY_DRINKS = const [
  Drink(
    id: 'drink_1',
    categories: ['cat_9', 'cat_14'],
    title: 'ZABAIONE CHOCOLATE',
    servetime: ServeTime.AfterDinner,
    imageUrl:
        'https://en.cocktail.fabbri1905.com/imgpub/1913618/400/0/Cioccolata-zabaione-new-400x400.jpg',
    ingredients: [
      '15 ml TOP ZABAIONE',
      '125 ml hot chocolate',
      '3 biscuits',
      'whipped cream flavoured it with MIXYBAR CINNAMON'
    ],
    isGluttenFree: false,
  ),
  Drink(
    id: 'drink_2',
    categories: ['cat_5', 'cat_9', 'cat_10'],
    title: 'TIKAL FLOWER',
    servetime: ServeTime.Anytime,
    imageUrl:
        'https://en.cocktail.fabbri1905.com/imgpub/1913589/400/0/Tikal-Flower-400x400.jpg',
    ingredients: [
      '10 ml MIXYBAR ELDERFLOWER',
      '90 ml tonic water',
      '1 espresso',
      '150g ice (8/10) cubes'
    ],
    isGluttenFree: true,
  ),
  Drink(
      id: 'drink_3',
      categories: ['cat_6', 'cat_10'],
      title: 'ICE TEA GREEN APPLE AND CINNAMON',
      imageUrl:
          'https://en.cocktail.fabbri1905.com/imgpub/1913590/400/0/Iced-mela-400x400.jpg',
      ingredients: [
        '50ml hot water',
        '1 black tea bag',
        '25 ml MIXYBAR GREEN APPLE',
        '5 ml MIXYBAR CINNAMON',
        '150 g ice (8\10 cubes)',
        '50 ml still water'
      ],
      servetime: ServeTime.Anytime,
      isGluttenFree: true),
  Drink(
      id: 'drink_4',
      categories: ['cat_6', 'cat_10'],
      title: 'ICE TEA ELDERFLOWER AND RASPBERRY',
      imageUrl:
          'https://en.cocktail.fabbri1905.com/imgpub/1913591/400/0/Iced-lampone-fiori-400x400.jpg',
      ingredients: [
        '50ml hot water',
        '1 black tea bag',
        '20 ml MIXYBAR ELDERFLOWER',
        '5 ml MIXYBAR RASPBERRY',
        '150 g ice (8\10 cubes)',
        '50 ml still water'
      ],
      servetime: ServeTime.Anytime,
      isGluttenFree: true),
  Drink(
      id: 'drink_5',
      categories: ['cat_3', 'cat_14'],
      title: 'NUTTY CHOCOLATE',
      imageUrl:
          'https://en.cocktail.fabbri1905.com/imgpub/1913788/400/0/Cioccolata-Nutty-400x400.jpg',
      ingredients: [
        '15 ml TOP GOLD HAZELNUT SUPER',
        '125 ml hot chocolate',
      ],
      servetime: ServeTime.AfterDinner,
      isGluttenFree: true),
  Drink(
      id: 'drink_6',
      categories: ['cat_1', 'cat_5', 'cat_10'],
      title: 'MARENDRY AND TONIC',
      imageUrl:
          'https://en.cocktail.fabbri1905.com/imgpub/1913772/400/0/Marendry-and-tonic-400x400.jpg',
      ingredients: ['50ml MARENDRY', 'top tonic water'],
      servetime: ServeTime.Anytime,
      isGluttenFree: true),
];
