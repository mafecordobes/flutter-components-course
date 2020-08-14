import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
        ],
      ),
    );
  }

  _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text('Esta es la descripción de mi bebe tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 3.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: [
          FadeInImage(
              image: NetworkImage(
                  'https://images.wallpapersden.com/image/download/alone-in-the-universe-art_64066_1920x1080.jpg'),
              placeholder: AssetImage('assets/loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              fit: BoxFit.cover),
          //Image(
          //image: NetworkImage(
          // 'https://images.wallpapersden.com/image/download/alone-in-the-universe-art_64066_1920x1080.jpg'),
          //),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Universo'),
          )
        ],
      ),
    );
  }
}
