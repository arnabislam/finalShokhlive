import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


import 'package:get/get.dart';
import 'package:preset/app/modules/home/views/reusable.dart';

class DailyView extends GetView {
  const DailyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Daily New',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),),
            Text('47+ Daily presets10',style: TextStyle(color: Colors.white,fontSize: 14),),
          ],
        ),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.white,size: 35,),padding: EdgeInsets.only(right: 25),)],


      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            crossAxisSpacing: 5.0, // Spacing between columns
            mainAxisSpacing: 5.0, // Spacing between rows
          ),
          itemCount: 16, // The number of items in your grid
          itemBuilder: (BuildContext context, int index) {

            return     Container(

     margin: EdgeInsets.only(top: 4),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Stack(
                  alignment: Alignment.topRight,
                children: [
                  CachedNetworkImage(
                    imageUrl: index != 1
                        ? "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRjMC2dtj9v9674BGKzkPg34BsjgskuQgbK53kB8xdGdmSZ01Nj"
                        : "https://media.istockphoto.com/id/903321474/photo/music-background-design-musical-writing-and-christmas-carol.webp?b=1&s=170667a&w=0&k=20&c=4eQ1ob6Khxra45S8XyI7YzrJKXUdoGhWAihXB4W6N1w=",
                    fit: BoxFit.cover,height: 220,width: 220,
                  ),
                  Positioned(
                    top: 7,
                    right: 5,

                    child: Container(height: 35,
                      width: 35,
                      decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey),
                      child: Center(child: Icon(Icons.favorite_outline,color: Colors.white,)),),
                  )
                ],
                ),
              ),
            );

          },
        ),
      )


    );
  }
}



