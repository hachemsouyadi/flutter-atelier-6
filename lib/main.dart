import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int compteur = 0;
double degre = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 home: Scaffold(
 body: Center(
 child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
  Text("La valeur du compteur est : $compteur"),
 Text("Atelier 4 - StatefulWidget"),
 Row(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
 
 IconButton(onPressed: () { setState(() { compteur--; }); }, icon:
Icon(Icons.remove)),
 SizedBox(width: 10),
 IconButton(onPressed: () { setState(() { compteur = 0; }); }, icon:
Icon(Icons.refresh)),
 SizedBox(width: 10),
 IconButton(onPressed: () { setState(() { compteur++; }); }, icon:
Icon(Icons.add)),
Text("Merci de choisir le degré de rotation"),
Slider(
 value: degre,
 min: 0,
 max: 360,
 onChanged: (value) {
 setState(() {
 degre = value;
 });
 },
),
Text("Le degré choisi est${degre.toStringAsFixed(0)}")
 ],
),

 ],
 ),
 ),
 ),
 );
}
  }