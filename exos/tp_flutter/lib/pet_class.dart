import 'package:flutter/material.dart';

class animal {
  Icon icon =  Icon(Icons.face, size: 70);
  Image img = Image.asset('assets/oiseau.jpg');
  String name = "Animal";
  String talk = "blabla";
}
class oiseau extends animal{
  Icon icon =  Icon(Icons.flutter_dash, size: 70);
  Image img = Image.asset('assets/oiseau.jpg');
  String name = "Oiseau";
  String talk = "cuicui";

}
class chien extends animal{
Icon icon =  Icon(Icons.pets, size: 70);
Image img = Image.asset('assets/chien.jpg');
String name = "Chien";
String talk = "ouafouaf";
}