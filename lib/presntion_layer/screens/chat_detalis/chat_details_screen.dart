import 'package:diva_project/core/image_root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: 428.w,
                height: 100.h,
                padding: const EdgeInsets.all(20),
                color: const Color(0xFFF7F8FB),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 30.r,
                          backgroundImage: AssetImage(ImageRoot.girlLogo),
                        ),
                        CircleAvatar(
                          radius: 6.r,
                          backgroundColor: Colors.white,
                        ),
                        CircleAvatar(
                          radius: 5.r,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'mona tarek',
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'نشط الان',
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 73.r,
                      height: 44.r,
                      padding: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(30.0.r),
                          bottomEnd: Radius.circular(30.0.r),
                        ),
                        color: const Color(0xFFBFC4D3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          // SizedBox(
                          //   width: 8.w,
                          // ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        buildMessage(),
                        buildMyMessage(),
                      ],
                    ),
                  ),
                  itemCount: 10,
                ),
              ),
              Container(
                width: 428.w,
                height: 80.h,
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.send,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'اكتب شيئا ....'),
                      ),
                    ),
                    const Icon(
                      Icons.emoji_emotions,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 11.w,
                    ),
                    Container(
                      width: 22.r,
                      height: 22.r,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.grey,
                      ),
                      padding: const EdgeInsets.all(2.0),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMessage() => Align(
        alignment: AlignmentDirectional.centerStart,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 18.r,
                  backgroundImage: AssetImage(ImageRoot.girlLogo),
                ),
              ],
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 250.r,
                  height: 66.r,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0.r,
                    vertical: 5.0.r,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(10.0.r),
                      topEnd: Radius.circular(10.0.r),
                      bottomEnd: Radius.circular(10.0.r),
                    ),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFF0F75BD), Color(0xFFA826C7)],
                    ),
                  ),
                  child: Text(
                    'هل يوجد خصم عروض الجمعه البيضاء على الفساتين السواريه',
                    style: TextStyle(color: Colors.white, fontSize: 12.sp),
                    maxLines: 3,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  '8:10',
                  style: TextStyle(
                      fontSize: 10.sp, color: const Color(0xFF63697B)),
                ),
              ],
            ),
          ],
        ),
      );

  Widget buildMyMessage() => Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 250.r,
              height: 66.r,
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(10.0.r),
                  bottomStart: Radius.circular(10.0.r),
                  topEnd: Radius.circular(10.0.r),
                ),
                color: const Color(0xFFFEF2F7),
              ),
              child: Text(
                'هل يوجد خصم عروض الجمعه البيضاء على الفساتين السواريه',
                style:
                    TextStyle(color: const Color(0xFF63697B), fontSize: 12.sp),
                maxLines: 3,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              '8:10',
              style: TextStyle(fontSize: 10.sp, color: const Color(0xFF63697B)),
            ),
          ],
        ),
      );
}
//220
//66
