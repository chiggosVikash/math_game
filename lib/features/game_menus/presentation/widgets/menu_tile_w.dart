import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MenuTileW extends ConsumerWidget {
  final String _menuName;
  final VoidCallback _onTap;
  const MenuTileW({super.key,required String menuName,
  required VoidCallback onTap}):_menuName = menuName,_onTap = onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: ListTile(
        title: Text(_menuName),
        onTap: _onTap,
      ),
    );
  }
}
