import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medigem/app/modules/all_package/views/all_package_view.dart';
import 'package:medigem/app/modules/auth/views/auth_view.dart';
import 'package:medigem/app/modules/auth/views/login_view.dart';
import 'package:medigem/app/modules/auth/views/register_view.dart';
import 'package:medigem/app/modules/home/views/home_view.dart';
import 'package:medigem/app/modules/utils/views/constant_view.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({Key? key}) : super(key: key);

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  int _currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    const HomeView(),
    const LoginView(),
    const RegisterView(),
    const AuthView(),
    const AllPackageView(),
  ];

  final List<Color> _unselectedColors = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  final Color _selectedColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _currentIndex = 2;
          });
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.yellow,
        child: Image.asset('assets/images/notice.png'),
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: BottomAppBar(
          notchMargin: 4.0,
          shape: const CircularNotchedRectangle(),
          color: Colors.black
          ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10.0),
                child: InkWell(onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                  child: Column(
                    children: [
                      const Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: _currentIndex == 0
                                ? _selectedColor
                                : _unselectedColors[0]),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(right: 20.0, top: 10, bottom: 10),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  child: Column(
                    children: [
                      const Icon(
                        Icons.edit_location_alt_sharp,
                        color: Colors.white,
                      ),
                      Text(
                        "Routine",
                        style: TextStyle(
                            color: _currentIndex == 1
                                ? _selectedColor
                                : _unselectedColors[0]),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                     top: 10, bottom: 10, left: 30),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = 3;
                    });
                  },
                  child: Column(
                    children: [
                      const Icon(
                        Icons.slow_motion_video_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        "Mark Question",
                        style: TextStyle(
                            color: _currentIndex == 3
                                ? _selectedColor
                                : _unselectedColors[0]),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0, top: 10, bottom: 10),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = 4;
                    });
                  },
                  child: Column(
                    children: [
                      const Icon(
                        Icons.menu_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        "Menu",
                        style: TextStyle(
                          color: _currentIndex == 4
                              ? _selectedColor
                              : _unselectedColors[0],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
