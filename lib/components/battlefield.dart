import 'package:blotto_game_ui/components/battle_cell.dart';
import 'package:flutter/material.dart';

class Battlefield extends StatelessWidget {
  Battlefield({super.key});

  final cell1 = BattleCell();
  final cell2 = BattleCell();
  final cell3 = BattleCell();
  final cell4 = BattleCell();
  final cell5 = BattleCell();
  final cell6 = BattleCell();
  final cell7 = BattleCell();
  final cell8 = BattleCell();
  final cell9 = BattleCell();

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(width: 10,);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [cell1, sizedBox, cell2, sizedBox, cell3,],),
        const SizedBox(height: 10,),
        Row(children: [cell4, sizedBox, cell5, sizedBox, cell6,],),
        const SizedBox(height: 10,),
        Row(children: [cell7, sizedBox, cell8, sizedBox, cell9,],),
      ]
    );
  }

  getSoldiers() {
    return [
      cell1.text, cell2.text, cell3.text,
      cell4.text, cell5.text, cell6.text,
      cell7.text, cell8.text, cell9.text
    ];
  }
}
