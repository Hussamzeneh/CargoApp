import 'package:bloceproject/Pages/characters_page/character.dart';
import 'package:flutter/material.dart';



class AppRouter {
  Route? generteRoute(RouteSettings settings){
    switch(settings.name){
      case'/':
      return MaterialPageRoute(builder: (_)=> Character());
      case 'details_screen':
    }
  }
}