import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'LOST1', 'iconPath': 'assets/fff.png'},
  {'name': 'LOST2', 'iconPath': 'images/dog.png'},
  {'name': 'LOST3', 'iconPath': 'images/rabbit.png'},
  {'name': 'LOST4', 'iconPath': 'images/parrot.png'},
  {'name': 'LOST5', 'iconPath': 'images/horse.png'}
];

List<Map> drawerItems=[
  {
    'icon': FontAwesomeIcons.paw,
    'title' : 'Профиль'
  },
  {
    'icon': Icons.local_fire_department,
    'title' : 'Тиндер питомцев'
  },
  {
    'icon': FontAwesomeIcons.newspaper,
    'title' : 'Новости'
  },
  {
    'icon': Icons.map,
    'title' : 'Карта'
  },
  {
    'icon': Icons.mail,
    'title' : 'МеСсЕнДжЕр'
  },
  {
    'icon': FontAwesomeIcons.search,
    'title' : 'Потеряшки'
  },
];