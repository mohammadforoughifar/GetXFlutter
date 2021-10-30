import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/Page2.dart';

class FirstPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("GetX"),
      centerTitle: true,
    ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              FlatButton(
                color: Colors.red,
                child: Text("SnackBar",style: TextStyle(color: Colors.white)),
                onPressed: (){
                  Get.snackbar("Login", "ورود با موفقیت انجام شد",
                  backgroundColor: Colors.green,
                    icon:Icon(Icons.six_k_plus_outlined),
                    shouldIconPulse: false,
                      borderWidth: 2,
                    borderColor: Colors.grey[400],
                    snackPosition: SnackPosition.TOP,
                    overlayColor: Colors.grey.withOpacity(0.5),
                    overlayBlur: 1,
                    dismissDirection: SnackDismissDirection.HORIZONTAL,
                    progressIndicatorBackgroundColor: Colors.white,
                    showProgressIndicator: true,
                    // userInputForm: Form(child: TextFormField()),

                  );
                },
              ),
              FlatButton(onPressed: (){
                Get.defaultDialog(
                  title: "Dialog Title",
                  // middleText: "Dialog Midle"
                  // content: Row(
                  //   children: [
                  //     Text("Content Text")
                  //   ],
                  // )

                  textCancel: "Cancle",
                  textConfirm: "Confirm",
                  barrierDismissible: false,
                  cancelTextColor: Colors.red,
                  onWillPop: ()async{
                    return false;
                  },
                  radius: 8,
                  titleStyle: TextStyle(color: Colors.blue),




                );
              }, child: Text("Dialog",),color: Colors.blue,),
              FlatButton(onPressed: (){
                  Get.bottomSheet(
                    Container(
                      width: Get.width,
                      child: Wrap(
                        children: [
                          ListTile(
                            title: Text("LightColor"),
                            leading: Icon(Icons.shopping_basket),

                            onTap: (){
                              Get.changeTheme(ThemeData.light());
                              Get.back();
                            },
                          ),

                          ListTile(
                            title: Text("DarkColor"),
                            leading: Icon(Icons.shopping_basket),

                            onTap: (){
                              Get.changeTheme(ThemeData.dark());
                              Get.back();
                            
                            },
                          ),
                        ],
                      ),
                    ),
                    backgroundColor: Colors.green,
                    barrierColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      )
                    ),
                    elevation: 30,
                    enableDrag: false,
                    //isDismissible: false,
                    enterBottomSheetDuration: Duration(milliseconds: 200),
                    exitBottomSheetDuration: Duration(milliseconds: 200),


                  );


              },
                  child: Text("Buttn Sheet"),
                color: Colors.grey,
              ),
              FlatButton(onPressed: () async{
               // var result=await Get.to(Page2(),
               //    arguments: "Data From FirstPage",
               //    fullscreenDialog: true,
               //    duration: Duration(milliseconds: 1000),
               //    transition: Transition.leftToRightWithFade,
               //    curve: Curves.easeInOutQuad,
               //
               //
               //  );
               // print(result);
                Get.toNamed("/Page2",arguments: "ssss");
                
              }, child:
              Text("Navigator",),
                color: Colors.greenAccent,
              ),
              FlatButton(onPressed: () async{
                // var result=await Get.to(Page2(),
                //    arguments: "Data From FirstPage",
                //    fullscreenDialog: true,
                //    duration: Duration(milliseconds: 1000),
                //    transition: Transition.leftToRightWithFade,
                //    curve: Curves.easeInOutQuad,
                //
                //
                //  );
                // print(result);
                Get.toNamed("/StateManagment");

              }, child:
              Text("State Managment",),
                color: Colors.greenAccent,
              ),
              FlatButton(onPressed: () async{
                // var result=await Get.to(Page2(),
                //    arguments: "Data From FirstPage",
                //    fullscreenDialog: true,
                //    duration: Duration(milliseconds: 1000),
                //    transition: Transition.leftToRightWithFade,
                //    curve: Curves.easeInOutQuad,
                //
                //
                //  );
                // print(result);
                Get.toNamed("/StateController");

              }, child:
              Text("StateController",),
                color: Colors.yellow,
              ),
              FlatButton(onPressed: () async{
                // var result=await Get.to(Page2(),
                //    arguments: "Data From FirstPage",
                //    fullscreenDialog: true,
                //    duration: Duration(milliseconds: 1000),
                //    transition: Transition.leftToRightWithFade,
                //    curve: Curves.easeInOutQuad,
                //
                //
                //  );
                // print(result);
                Get.toNamed("/ProductList");

              }, child:
              Text("ProductList",),
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),

    );
  }
}
