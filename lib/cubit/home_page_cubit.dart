import 'package:diva_project/core/icon_root.dart';
import 'package:diva_project/cubit/home_page_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presntion_layer/screens/articles_screen/atricels_screen.dart';
import '../presntion_layer/screens/category_screen/category_screen.dart';
import '../presntion_layer/screens/home_screen/home_screen.dart';
import '../presntion_layer/screens/profile_screen/profile_screen.dart';
import '../presntion_layer/screens/users/users_screen.dart';

class HomePageCubit extends Cubit<HomePageStates> {
  HomePageCubit() : super(HomePageInitial());

  static HomePageCubit get(context) => BlocProvider.of(context);

  //==============================================================================================================
  //ChangeScreenByBottomNavigationBar
  int currentIndex = 0;
  List<String> titleList = [
    'الرئيسية',
    'الفساتين',
    'المحادثات',
    'المقالات',
    'الملف الشخصي'
  ];
  List<Widget> bottomNavScreens = [
    HomePage(),
    const CategoryScreen(),
    const UsersScreen(),
    const ArticlesScreen(),
    const ProfileScreen(),
  ];
  List<BottomNavigationBarItem> bottomNavBarItems = [
    const BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(IconRoot.homeIcon),
        ),
        label: 'homeScreen'),
    const BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(IconRoot.dressIcon),
        ),
        label: 'Dress Screen'),
    const BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage(
          IconRoot.chatIcon,
        ),
      ),
      label: 'ChatScreen',
      activeIcon: ImageIcon(
        AssetImage(IconRoot.messageIcon),
      ),
    ),
    const BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(IconRoot.articleIcon),
        ),
        label: 'ArticlesScreen'),
    const BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(IconRoot.profileIcon),
        ),
        label: 'ProfileScreen'),
  ];

  void changeBottomNavBarIndex(int index) {
    try {
      currentIndex = index;
      emit(BottomNavBarSuccessState());
    } catch (e) {
      emit(BottomNavBarFailState(e.toString()));
    }
  }
//============================================================================================
}
