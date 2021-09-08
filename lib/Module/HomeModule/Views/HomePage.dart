import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_dekho/Module/AddMobileModule/Screens/AddMobile.dart';
import 'package:mobile_dekho/Module/HomeModule/controller/ItemController.dart';

import '../../../Size_Config.dart';

class HomePage extends StatelessWidget {
  static final String routeName = "/home";
  final itemController = Get.put(ItemController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10,),
                Text("MOBILE  DEKHO",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5
                ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, AddMobiles.routeName);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("Add Mobiles",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ),
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: GetX<ItemController>(builder: (controller){
                    return GridView.builder(
                      itemCount: controller.items.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20
                        ),
                        itemBuilder: (context , index){
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                              width: 1
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                            child: Text(controller.items[index].title),
                          ),
                        );
                        });
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
