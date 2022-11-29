import 'package:flutter/material.dart';

class Animal {
  Animal(this.icon, this.img, this.name, this.talk) ;

  Icon icon ;
  Image img ;
  String name;
  String talk ;
}

class Oiseau extends Animal{

  static Oiseau create(){
    return Oiseau(Icon(Icons.flutter_dash, size: 70), Image.asset('assets/oiseau.jpg'),  "Oiseau", "cuicui");
  }

  Oiseau(super.icon, super.img, super.name, super.talk);

 // animal(Icon(Icons.flutter_dash, size: 70),Image.asset('assets/oiseau.jpg'), "Oiseau", "cuicui");

}
class Chien extends Animal{

  static Chien create(){
    return Chien(Icon(Icons.pets, size: 70), Image.asset('assets/chien.jpg'),  "Chien", "ouafouaf");
  }

  Chien(super.icon, super.img, super.name, super.talk);
}