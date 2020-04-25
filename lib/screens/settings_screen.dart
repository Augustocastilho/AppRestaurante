import 'package:flutter/material.dart';

import '../components/main_drawer.dart';
import '../models/settings.dart';

class SettingsScreen extends StatefulWidget {
  // final Settings settings;

  // const SettingsScreen(this.settings);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var settings = Settings();

  Widget _createSwich(
      String title, String subtitle, bool value, Function onChange) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: onChange,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Configurações',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _createSwich(
                  'Sem Glúten',
                  'Só exibe refeições sem glúten',
                  settings.isGlutenFree,
                  (value) => setState(() => settings.isGlutenFree = value),
                ),
                _createSwich(
                  'Sem Lactose',
                  'Só exibe refeições sem lactose',
                  settings.isLactoseFree,
                  (value) => setState(() => settings.isLactoseFree= value),
                ),
                _createSwich(
                  'Vegana',
                  'Só exibe refeições sem origem animal',
                  settings.isVegan,
                  (value) => setState(() => settings.isVegan= value),
                ),
                _createSwich(
                  'Vegetariana',
                  'Só exibe refeições sem carne',
                  settings.isVegetarian,
                  (value) => setState(() => settings.isVegetarian= value),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
