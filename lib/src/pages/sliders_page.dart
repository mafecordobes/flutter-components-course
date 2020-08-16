import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 250.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sliders'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              _crearSlider(),
              _crearCheckboxs(),
              _crearSwitch(),
              Expanded(child: _crearImagen()),
            ],
          ),
        ));
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'tamaño',
        value: _valorSlider,
        min: 10.0,
        max: 500.0,
        onChanged: (_bloquearCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
              });
  }

  Widget _crearImagen() {
    return FadeInImage(
      image: NetworkImage(
          'https://vignette.wikia.nocookie.net/death-battle-fanon-wiki-en-espanol/images/8/87/Doctor_Strange.png/revision/latest?cb=20190720215146&path-prefix=es'),
      placeholder: AssetImage('assets/loading.gif'),
      fadeInDuration: Duration(milliseconds: 200),
      fit: BoxFit.contain,
      width: _valorSlider,
    );
  }

  Widget _crearCheckboxs() {
    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }
}
