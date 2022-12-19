import 'package:diva_project/models/dress_models.dart';
import 'package:diva_project/presntion_layer/widgets/category/rounded_input_field.dart';
import 'package:diva_project/presntion_layer/widgets/home_screen/grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/category/circle_avtar_content.dart';
import '../../widgets/home_screen/container_content.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  String _repeat = 'الأعلي';
  List<String> repeatList = ['الأعلي', 'الأقل'];
  List<int> remindList = [5, 10, 15, 20];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 161.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: DressModels.dressList.length,
                itemBuilder: (context, index) => CircleAvatarContent(
                  dressModels: DressModels.dressList[index],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: InputField(
                      text: 'ترتيب حسب : ',
                      hintText: _repeat,
                      widget: DropdownButton(
                        borderRadius: BorderRadius.circular(15.r),
                        iconEnabledColor: Colors.blueGrey,
                        underline: Container(),
                        iconSize: 20,
                        dropdownColor: Colors.blueGrey,
                        items: repeatList
                            .map<DropdownMenuItem<String>>(
                              (value) => DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              ),
                            )
                            .toList(),
                        onChanged: (String? newVal) {
                          setState(() {
                            _repeat = newVal!;
                          });
                        },
                        elevation: 2,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
                    flex: 2,
                    child: InputField(hintText: '70', text: ' عدد المنتجات : '),
                  ),
                ],
              ),
            ),
            ViewGrid(
              itemBuilder: (BuildContext context, int index) {
                return const ContainerContent();
              },
              crossAxisCount: 2,
              itemCount: 4,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              childAspectRatio:
                  ScreenUtil().screenWidth / ScreenUtil().screenHeight,
            ),
          ],
        ),
      ),
    );
  }
}
