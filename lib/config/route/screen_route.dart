
import 'package:flutter/material.dart';
import 'package:math_game/features/game_menus/presentation/screens/game_menu_s.dart';
import 'package:math_game/features/game_zone/presentation/screens/game_zone_s.dart';

class ScreenRoute{
  Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case "/":
        return MaterialPageRoute(builder:(_)=> const GameMenuS());
        case GameMenuS.routeAddress:
          return MaterialPageRoute(builder:(_)=> const GameMenuS());
          case GameZoneS.routeAddress:
            final args = settings.arguments as GameZoneSArgs;
            return MaterialPageRoute(builder:(_)=> GameZoneS(args: args));
      default:
        return MaterialPageRoute(builder: (_)=> const Scaffold(body: Center(child: Text("404"),)));
    }
  }

}