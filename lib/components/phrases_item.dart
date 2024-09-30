import 'package:flutter/material.dart';
import 'package:tokuapp/components/ItemInfo.dart';
import 'package:tokuapp/components/details.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.number, required this.color});
  final Number number;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        color:color,
        child:ItemInfo(number: number)
          
        );
      
  }
}