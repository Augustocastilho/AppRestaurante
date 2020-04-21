import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      //faz um grid com rolagem vertical
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //limita o tamanho de 200 pra cada elemento
        maxCrossAxisExtent: 200,
        //define a proporção, se ele é mais largo, quadrado...
        childAspectRatio: 3/2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: <Widget>[

      ],
    );
  }
}