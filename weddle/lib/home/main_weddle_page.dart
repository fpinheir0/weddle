import 'package:flutter/material.dart';
import 'package:weddle/Utils/colors.dart';
import 'package:weddle/Utils/dimensions.dart';
import 'package:weddle/home/hall_page_body.dart';
import 'package:weddle/widgets/big_text.dart';
import 'package:weddle/widgets/small_text.dart';

class MainWeddlePage extends StatefulWidget {
  const MainWeddlePage({super.key});

  @override
  State<MainWeddlePage> createState() => _MainWeddlePage();
}

class _MainWeddlePage extends State<MainWeddlePage> {
  @override
  Widget build(BuildContext context) {
    //print("current height is" + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "São Paulo / SP",
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "São Carlos",
                            color: Colors.black54,
                          ),
                          const Icon(Icons.arrow_drop_down_rounded),
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor,
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.iconSize24,
                      ),
                    ),
                  )
                ],
              )),
          //showing the body
          const FoodPageBody(),
        ],
      ),
    );
  }
}
