import 'package:flutter/material.dart';
import 'package:tokuapp/components/ItemInfo.dart';
import 'package:tokuapp/components/details.dart';

class GeneralItem extends StatelessWidget {
  const GeneralItem({Key? key,required this.number, required this.color});
  final Number number;
  final Color color;
  
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        color:color,
        child:Row(
          children: [
            number.image==null? SizedBox():
Container(
              color: const Color.fromARGB(243, 245, 239, 241),
              child: Image.asset(number.image!),),
              Expanded(child: ItemInfo(number: number),)

             
          ],
        ),
      );
      
  
  }

}