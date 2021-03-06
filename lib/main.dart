import 'package:flutter/material.dart';

void main() => runApp(Tarea1());

class Tarea1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App ITESO',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _likeState = false;
  bool _dislikeState = false;
  bool _emailState = false;
  bool _phoneState = false;
  bool _saveState = false;

  void _incrementCounter() {
    setState(() {
      _likeState = !_likeState;
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _dislikeState = !_dislikeState;
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App ITESO'),
        ),
        body: Wrap(
          alignment: WrapAlignment.start,
          direction: Axis.horizontal,
          spacing: 8.0,
          runSpacing: 4.0,
          children: [
            Column(
              children: [
                Image.asset("assets/header.jpg"),
                Container(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Wrap(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "El ITESO, Universidad Jesuita de Guadalajara",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            Text("San Pedro Tlaquepaque, Jal.",
                                style: TextStyle(
                                    fontWeight: FontWeight.w200, fontSize: 14)),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Wrap(
                                  children: [
                                    IconButton(
                                        onPressed: _incrementCounter,
                                        icon: Icon(
                                          Icons.thumb_up,
                                          color: _likeState
                                              ? Colors.blue[400]
                                              : Colors.black,
                                        )),
                                    IconButton(
                                        onPressed: _decrementCounter,
                                        icon: Icon(
                                          Icons.thumb_down,
                                          color: _dislikeState
                                              ? Colors.blue[400]
                                              : Colors.black,
                                        )),
                                  ],
                                )
                              ],
                            ),
                            Text(_counter.toString())
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Container(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _emailState = !_emailState;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text('Email'),
                            duration: const Duration(seconds: 5),
                            action: SnackBarAction(
                              label: 'Cerrar',
                              onPressed: () {},
                            ),
                          ));
                        },
                        icon: Icon(
                          Icons.email,
                          color: _emailState ? Colors.blue[400] : Colors.black,
                        )),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _phoneState = !_phoneState;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text('Phone'),
                            duration: const Duration(seconds: 5),
                            action: SnackBarAction(
                              label: 'Cerrar',
                              onPressed: () {},
                            ),
                          ));
                        },
                        icon: Icon(
                          Icons.phone,
                          color: _phoneState ? Colors.blue[400] : Colors.black,
                        )),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _saveState = !_saveState;
                          });
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text('Save'),
                            duration: const Duration(seconds: 5),
                            action: SnackBarAction(
                              label: 'Cerrar',
                              onPressed: () {},
                            ),
                          ));
                        },
                        icon: Icon(
                          Icons.turned_in,
                          color: _saveState ? Colors.blue[400] : Colors.black,
                        )),
                  ],
                ),
                Container(height: 8),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                      "A mediados del decenio de los a??os 50, en Guadalajara no exist??a una universidad jesuita. En Guadalajara existe una instituci??n de educaci??n b??sica llamada Instituto de Ciencias, en la cual participan miembros de la Compa????a de Jes??s. (Esta fue la base de la actual instituci??n) Padres de familia de los estudiantes del Instituto de Ciencias reunieron esfuerzos para que esta Casa de Estudios tomara forma. Entre otras implicaciones, algunos jesuitas que formaban parte de la que era la ??nica universidad cat??lica en Guadalajara, decidieron unirse a las filas del ITESO. Este contexto hizo pol??mica la fundaci??n del ITESO, y sirvi?? para se??alar la participaci??n determinante de la Compa????a de Jes??s en el proyecto. Las primeras instalaciones del ITESO se ubicaron frente a la Rotonda de los Hombres Ilustres.",
                      style:
                          TextStyle(fontWeight: FontWeight.w200, fontSize: 12)),
                )
              ],
            )
          ],
        ));
  }
}
