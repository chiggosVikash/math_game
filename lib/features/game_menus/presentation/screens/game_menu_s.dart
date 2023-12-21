
import 'package:flutter/material.dart';
import 'package:math_game/features/game_menus/presentation/widgets/menu_tile_w.dart';
import 'package:math_game/features/game_zone/presentation/screens/game_zone_s.dart';
import 'package:math_game/utils/constants/constants.dart';

class GameMenuS extends StatefulWidget {
  static const routeAddress = "/gameMenu";
  const GameMenuS({super.key});

  @override
  State<GameMenuS> createState() => _GameMenuSState();
}

class _GameMenuSState extends State<GameMenuS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game Menu"),
      ),
      body: ListView.builder(
          itemCount: Constants.menus.length,
          itemBuilder: (context,index){
            return MenuTileW(menuName: Constants.menus[index],
              onTap: (){
               Navigator.pushNamed(context, GameZoneS.routeAddress,
               arguments: GameZoneSArgs(gameName: Constants.menus[index],
                operation: Constants.operations[Constants.menus[index]]!,
                )
               );
              },
            );
      }),
    );
  }
}
