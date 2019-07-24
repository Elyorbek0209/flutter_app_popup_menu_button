import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class MenuItem{


  String menuVal;

  IconData iconVal;


  MenuItem(this.menuVal, this.iconVal);

}



final List<MenuItem> menuitems = [

  MenuItem("Favourites", FontAwesomeIcons.heart),

  MenuItem("Bookmark", FontAwesomeIcons.bookmark),

];


