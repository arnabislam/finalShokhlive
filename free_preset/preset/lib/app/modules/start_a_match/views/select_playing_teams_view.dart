import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SelectPlayingTeamsView extends GetView {
  const SelectPlayingTeamsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Playing Teams'),
        centerTitle: true,
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.help,color: Colors.white,))],
      ),
      body: Column(
        children: [
          Text(
            'Scoring a match on CricketInfo is free',
            style: TextStyle(fontSize: 16),
          ),

         CircleAvatar(
           radius: 45,
           child: Icon(Icons.add,color: Colors.white,
         )
         )],
      ),
    );
  }
}
