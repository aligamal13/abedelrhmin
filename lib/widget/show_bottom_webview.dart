import 'package:flutter/material.dart';
import 'package:abelrhmen/component/components.dart';
import 'package:abelrhmen/model/data.dart';
import 'package:abelrhmen/page/web_wview.dart';
import 'package:abelrhmen/recources/color_managr.dart';

class ShowBottomWebview extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return       SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Text('شبكة عباد الرحمن لخدمات الإنترنت',
            style: TextStyle(
                color: ColorManager.app,
                fontSize: 25
            ),),

          InkWell(
            onTap: () async {
              navgiTo(context, WebViewSpeedInterint(

              ));
            },
            child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorManager.black,

                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffBCB6B6),
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Text(
                                'سرعة الربط',
                                style:
                                Theme
                                    .of(context)
                                    .textTheme
                                    .bodyLarge,
                              )),
                          Icon(Icons.speed_outlined,color: ColorManager.white,)
                        ],
                      ),
                    ))),
          ),
          InkWell(
            onTap: () async {
              navgiTo(context, WebViewSpeedLink(

              ));
            },
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorManager.black,

                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffBCB6B6),
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Text(
                                'سرعة الانترنت',

                                style:
                                Theme
                                    .of(context)
                                    .textTheme
                                    .bodyLarge,
                              )),
                          Icon(Icons.speed_outlined,color: ColorManager.white,)
                        ],
                      ),
                    ))),
          ),





        ],
      ),
    );
  }
}

