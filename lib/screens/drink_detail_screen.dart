import 'package:drinksdemo/dummy_data.dart';
import 'package:flutter/material.dart';

class DrinkDetailScreen extends StatelessWidget {
  static const routeName = '/drink-detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final drinkId = ModalRoute.of(context).settings.arguments as String;
    final selectedDrink =
        DUMMY_DRINKS.firstWhere((drink) => drink.id == drinkId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedDrink.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedDrink.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'Ingredients'),
            buildContainer(
              ListView.builder(
                itemBuilder: (context, index) => Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), child: Text(selectedDrink.ingredients[index])),
                ),
                itemCount: selectedDrink.ingredients.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
