import 'package:flutter/material.dart';


class kButton extends StatelessWidget {
  var text;
  kButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

        height: 32,

        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.blue, Colors.red], // Customize your gradient colors
            ),
            borderRadius: BorderRadius.circular(15)
        ),
        child: Center(child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(text,style: const TextStyle(color: Colors.white),),
        )));
  }
}

class kMoreRow extends StatelessWidget {
  var text,icon;
  kMoreRow({
    super.key,
    required this.text,required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:12.0,left: 8,right: 4,bottom:8 ),
          child: Icon(icon,size: 30,color: Colors.black,),
        ),
        SizedBox(width: 12),
        Text(text,style: TextStyle(color: Colors.black),)
      ],
    );
  }
}