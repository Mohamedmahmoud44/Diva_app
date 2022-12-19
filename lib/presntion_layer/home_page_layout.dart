import 'package:diva_project/cubit/home_page_cubit.dart';
import 'package:diva_project/cubit/home_page_states.dart';
import 'package:diva_project/models/drawer_model.dart';
import 'package:diva_project/presntion_layer/widgets/custom_app_bar.dart';
import 'package:diva_project/presntion_layer/widgets/drawer_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/app_color.dart';
import '../core/app_style.dart';
import '../core/image_root.dart';

class HomePageLayoutScreen extends StatelessWidget {
  const HomePageLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageCubit, HomePageStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = HomePageCubit.get(context);
        return Scaffold(
          appBar: CustomAppBar(
            title: cubit.titleList[cubit.currentIndex],
            appBar: AppBar(),
          ),
          drawer: Drawer(
            backgroundColor: AppColor.whiteColor,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 70.r,
                        height: 70.r,
                        // width: MediaQuery.of(context).size.width * 0.150,
                        // height: MediaQuery.of(context).size.height * 0.09,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColor.pinkColor.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(70.r)),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            ImageRoot.divaLogo,
                            // width: 110.r,
                            // height: 49.r,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Diva center',
                          style: bodyStyle2.copyWith(
                            color: AppColor.purpleColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => DrawerContent(
                    drawerModel: drawerList[index],
                  ),
                  itemCount: drawerList.length,
                )
              ],
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 81,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: BottomNavigationBar(
                selectedIconTheme: const IconThemeData(
                  color: Color(0xFFE50263),
                ),
                unselectedIconTheme: const IconThemeData(
                  color: Color(0xFF858EA9),
                ),
                items: cubit.bottomNavBarItems,
                currentIndex: cubit.currentIndex,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                onTap: (index) => cubit.changeBottomNavBarIndex(index),
              ),
            ),
          ),
          body: Directionality(
              textDirection: TextDirection.rtl,
              child: cubit.bottomNavScreens[cubit.currentIndex]),
        );
      },
    );
  }
}
