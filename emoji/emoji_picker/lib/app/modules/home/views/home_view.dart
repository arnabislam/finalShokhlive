import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Emoji'),
          centerTitle: true,
        ),
        body: WillPopScope(
          onWillPop: () {
            if(
            controller.isEmojiVisible.value
            ){
              controller.isEmojiVisible.value=false;
            }
            else {

              Navigator.pop(context);
            }
            return Future.value(false);
          },
          child: Column(
            children: [
              Expanded(child: Container()),
              Container(
                height: 70,
                child: Row(
                  children: [
                    IconButton(onPressed: () {
                      controller.isEmojiVisible.value =
                      !controller.isEmojiVisible.value;
                      controller.focusNode.unfocus();
                      controller.focusNode.canRequestFocus=true;
                    }, icon: Icon(Icons.emoji_emotions, color: Colors.blue,)),
                    Expanded(child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      child: TextField(
                        controller: controller.textEditingController,
                        focusNode: controller.focusNode,
                        decoration: InputDecoration(
                        hintText: 'Type message',
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 8.0, bottom: 8.0,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0)
                        ),
                      ),),
                    ),

                    )
                  ],
                ),
              ),
              Obx(() {
                return Offstage(
                  offstage: !controller.isEmojiVisible.value,
                  child: SizedBox(
                      height: 250,
                      child: EmojiPicker(
                        onEmojiSelected: (category, emoji) {
                          controller.textEditingController.text=  controller.textEditingController.text+emoji.emoji;
                        },
                        onBackspacePressed: () {},
                        config: const Config(
                          columns: 7,

                          //emojiSizeMax: 32 * (foundation.defaultTargetPlatform == TargetPlatform.iOS ? 1.30 : 1.0), // Issue: https://github.com/flutter/flutter/issues/28894
                          verticalSpacing: 0,
                          horizontalSpacing: 0,
                          gridPadding: EdgeInsets.zero,
                          initCategory: Category.RECENT,
                          bgColor: Color(0xFFF2F2F2),
                          indicatorColor: Colors.blue,
                          iconColor: Colors.grey,
                          iconColorSelected: Colors.blue,
                          backspaceColor: Colors.blue,
                          skinToneDialogBgColor: Colors.white,
                          skinToneIndicatorColor: Colors.grey,
                          enableSkinTones: true,
                          recentTabBehavior: RecentTabBehavior.RECENT,
                          recentsLimit: 28,
                          noRecents: Text(
                            'No Recents',
                            style: TextStyle(fontSize: 20, color: Colors.black26),
                            textAlign: TextAlign.center,
                          ),
                          // Needs to be const Widget
                          loadingIndicator: SizedBox.shrink(),
                          // Needs to be const Widget
                          tabIndicatorAnimDuration: kTabScrollDuration,
                          categoryIcons: CategoryIcons(),
                          buttonMode: ButtonMode.MATERIAL,
                        ),
                      )

                  ),
                );
              })
            ],
          ),
        )
    );
  }
}
