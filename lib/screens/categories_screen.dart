import 'package:flutter/material.dart';

import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vamos cozinhar?'),
      ),
          body: GridView(
        //faz um grid com rolagem vertical
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //limita o tamanho de 200 pra cada elemento
          maxCrossAxisExtent: 200,
          //define a proporção, se ele é mais largo, quadrado...
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((cat) {
          return CategoryItem(cat);
        }).toList(),
      ),
    );
  }
}