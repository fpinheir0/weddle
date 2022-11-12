import 'package:flutter/material.dart';
import 'package:weddle/Utils/colors.dart';
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
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(
              margin: const EdgeInsets.only(top: 45, bottom: 15),
              padding: const EdgeInsets.only(left: 20, right: 20),
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
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor,
                      ),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
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
