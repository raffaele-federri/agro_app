import 'package:agro_app/pages/address_page.dart';
import 'package:agro_app/pages/gender_and_name_page_dart.dart';
import 'package:agro_app/widgets/page_indicator_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/age_page.dart';

class BottomNavBarAuth extends StatelessWidget {
  final int index;
  const BottomNavBarAuth({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
      child: Row(
        children: [
          SizedBox(
            height: 18.38.h,
            width: 69.69.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PageIndicatorContainer(rotate: index == 1 ? 0.76 : 0),
                PageIndicatorContainer(rotate: index == 2 ? 0.76 : 0),
                PageIndicatorContainer(rotate: index == 3 ? 0.76 : 0),
                PageIndicatorContainer(rotate: index == 4 ? 0.76 : 0),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          SizedBox(
            height: 60.h,
            width: 60.h,
            child: FloatingActionButton(
                highlightElevation: 0,
                elevation: 0,
                onPressed: () {
                  if (index == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AgePage(),
                      ),
                    );
                  } else if (index == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddressPage(),
                      ),
                    );
                  } else if (index == 3) {}
                },
                child: const Icon(Icons.arrow_forward)),
          ),
        ],
      ),
    );
  }
}
