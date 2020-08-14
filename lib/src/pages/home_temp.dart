import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  /*List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }*/

  List<Widget> _crearItemsCorta() {
    return opciones.map((String item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('holis'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.arrow_drop_down),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
