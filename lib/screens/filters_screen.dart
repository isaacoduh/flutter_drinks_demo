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
      appBar: AppBar(title: Text('Your Filters'),),
      
      drawer: MainDrawer(),
      body: Center(
        child: Text('Filters'),
      ),
    );
  }
}