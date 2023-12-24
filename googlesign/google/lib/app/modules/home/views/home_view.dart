import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(child: Obx(() {
        if (controller.googleAccount.value == null) {
          return buildLoginButton();
        } else {
          return buildLogout();
        }
      })),
    );
  }

  FloatingActionButton buildLoginButton() {
    return FloatingActionButton.extended(
      onPressed: () {
        controller.login();
      },
      icon: const Icon(
        Icons.get_app_sharp,
        color: Colors.green,
      ),
      label: const Text("Google sign in"),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
  }

  buildLogout() {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage:
              Image.network(controller.googleAccount.value?.photoUrl ?? '')
                  .image,
          radius: 100,
        ),
        Text(
          controller.googleAccount.value?.displayName ?? '',
          style: Get.textTheme.headline1,
        ),
        Text(
          controller.googleAccount.value?.email ?? '',
          style: Get.textTheme.bodyText1,
        ),
        ActionChip(
          avatar: const Icon(Icons.logout),
          label: const Text("Logout"),
          onPressed: () {
            controller.logout();
          },
        )
      ],
    );
  }
}
