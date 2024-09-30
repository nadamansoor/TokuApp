
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/components/details.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
            Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column (
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(number.jpname,
                  style: const TextStyle(
                  //  color: Colors.white,
                    fontSize: 18,
                  ),),
                  Text(number.enname
                  ,style: const TextStyle(
                   // color: Colors.white,
                    fontSize: 18,),
                    ),  
                ],
             ),
            ),
   
              const Spacer(
                flex: 1,
                ),

              IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(number.sound));          
             },
               icon: const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Icon(
                  Icons.play_arrow,
                ),
             ),
            ),
      ],
    
    );
  }
}
