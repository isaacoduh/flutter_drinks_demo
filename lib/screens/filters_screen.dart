import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function saveFilters;
  final Map<String, bool> currentFilters;

  FiltersScreen(this.currentFilters, this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _gluttenFree = false;

  @override
  void initState() {
    _gluttenFree = widget.currentFilters['glutten'];
    super.initState();
  }

  Widget _builSwitchListTile(String title, String description, bool currentValue, Function updateValue){
    return SwitchListTile(title: Text(title), value: currentValue, subtitle: Text(description), onChanged: updateValue,);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Filters'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.save),
          onPressed: (){
            final selectedFilters = {
              'glutten': _gluttenFree,
            };
            widget.saveFilters(selectedFilters);
          },
        ),
      ],),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _builSwitchListTile('Glutten-Free', 'only include glutten free drinks', _gluttenFree, (newValue){
                  setState(() {
                    _gluttenFree = newValue;
                  });
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}