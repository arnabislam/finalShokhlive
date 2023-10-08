import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: const MyMusic(title: '"arnab',)
    );
  }
}
class MyMusic extends StatefulWidget {
  const MyMusic({super.key,required this.title});
final String title;



  @override
  State<MyMusic> createState() => _MyMusicState();
}

class _MyMusicState extends State<MyMusic> {
  final OnAudioQuery _audioQuery = OnAudioQuery();

  @override
  void initState() {
    super.initState();
    requstStoragePermission();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  FutureBuilder<List<SongModel>>(
          future: _audioQuery.querySongs(
            ignoreCase: true,orderType: OrderType.ASC_OR_SMALLER,sortType: null,uriType: UriType.EXTERNAL,
          ),
          builder: (BuildContext context,snapshot) {
            if(snapshot.data==null){
              return const Center(
                child: CircularProgressIndicator(),
              );
            } if(
            snapshot.data!.isEmpty
            ){
              print(snapshot.data);
              return const Center(
                child: Text("No songs Found",style: TextStyle(color: Colors.black,fontSize: 15),),
              );
            }
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 50,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(snapshot.data![index].title),
                    subtitle: Text(snapshot.data![index].displayName),
                    trailing: const Icon(Icons.play_arrow,color: Colors.black,),
                    leading: QueryArtworkWidget(id: snapshot.data![index].id, type: ArtworkType.AUDIO),
                  );
                  //   Container(
                  //   margin: const EdgeInsets.only(bottom: 2 ),
                  //
                  //   child:
                  //
                  //   ListTile(
                  //     shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(6)
                  //     ),
                  //     tileColor: Colors.grey,
                  //     title: const Text("Music Name",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                  //     subtitle: const Text("Artist name",style: TextStyle(color: Colors.black,fontSize: 12),),
                  //     leading: IconButton(onPressed: (){}, icon: const Icon(Icons.music_note,size: 26,color: Colors.black,),),
                  //     trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.play_arrow,size: 26,color: Colors.black,),),
                  //   ),
                  // );
                },
              ),
            );

          }
      ),
    );

  }

  requstStoragePermission() async {
    if (!kIsWeb) {
      bool permissionStatus = await _audioQuery.permissionsRequest();
      if (!permissionStatus) {
        await _audioQuery.permissionsRequest();
      }
    }
  }
}
