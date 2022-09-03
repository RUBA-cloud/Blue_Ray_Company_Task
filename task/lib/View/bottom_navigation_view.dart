import 'package:flutter/material.dart';
import 'package:task/helpers/icons.dart';

import '../model/exported_packages.dart';

class BottomNavigationView extends StatelessWidget {
  final BottomNavigationController controller;
  const BottomNavigationView({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
   
      return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: categoryIcon,
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: faviorateIcon,
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: bagIcon,
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: locationIcon,
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: accountIcon,
            label: 'Account Icon',
          ),
        ],
        currentIndex: controller.tabIndex,
        selectedItemColor: Colors.amber[800],
        onTap: controller.changeTabIndex,
      );
    }
  }

