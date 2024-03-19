
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:abelrhmen/bottom_pro/bottom_prov.dart';
import 'package:abelrhmen/component/components.dart';

import 'package:abelrhmen/recources/color_managr.dart';
import 'package:abelrhmen/widget/custum_sliver.dart';
import 'package:abelrhmen/widget/show_bottom.dart';
import 'package:abelrhmen/widget/show_bottom_webview.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class PageScreen extends StatefulWidget {
  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  String fodafone = '01097203083';
  String numberwhatssap = '+201120066675';
  String numbedam = '01120066675';
  String numberadera = '01002914322';

  final Uri toLaunch =
  Uri.parse('http://advrapp.com:5662/user/');

  //whatsapp


  bool err = false;
  String msgErr = '';


  static String replaceFarsiNumber(String s) {
    var sb = new StringBuffer();
    for (int i = 0; i < s.length; i++) {
      switch (s[i]) {
      //Persian digits
        case '\u06f0':
          sb.write('0');
          break;
        case '\u06f1':
          sb.write('1');
          break;
        case '\u06f2':
          sb.write('2');
          break;
        case '\u06f3':
          sb.write('3');
          break;
        case '\u06f4':
          sb.write('4');
          break;
        case '\u06f5':
          sb.write('5');
          break;
        case '\u06f6':
          sb.write('6');
          break;
        case '\u06f7':
          sb.write('7');
          break;
        case '\u06f8':
          sb.write('8');
          break;
        case '\u06f9':
          sb.write('9');
          break;

      //Arabic digits
        case '\u0660':
          sb.write('0');
          break;
        case '\u0661':
          sb.write('1');
          break;
        case '\u0662':
          sb.write('2');
          break;
        case '\u0663':
          sb.write('3');
          break;
        case '\u0664':
          sb.write('4');
          break;
        case '\u0665':
          sb.write('5');
          break;
        case '\u0666':
          sb.write('6');
          break;
        case '\u0667':
          sb.write('7');
          break;
        case '\u0668':
          sb.write('8');
          break;
        case '\u0669':
          sb.write('9');
          break;
        default:
          sb.write(s[i]);
          break;
      }
    }
    return sb.toString();
  }


  Future<void> _launchInBrowser(Uri url) async {
    showToast(
        text: 'لوحة تحكم العميل',
        color: ColorManager.black,
        textcolor: ColorManager.white);
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInBrowseRouterSetting() async {
    const url = 'http://';
    var info = NetworkInfo();
    dynamic wifiGateway =
    await info.getWifiGatewayIP(); // 192.168.1.1
    replaceFarsiNumber(wifiGateway);
    showToast(
        text: 'iP =>' + replaceFarsiNumber(wifiGateway),
        color: ColorManager.black,
        textcolor: ColorManager.white);
    if (!await launch(
      url + replaceFarsiNumber(wifiGateway),


    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void>? _launched;
  Future<void>? _launched2;






  List<String>info=[];



  @override
  Widget build(BuildContext context) {
    var dark = Provider.of<BottomProvedr>(context);

    return Scaffold(

      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
              CustumSliverAppBar(),
          SliverToBoxAdapter(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height/1,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),


                        SizedBox(height: 25,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
//تفاصيل الاشتراك والباقه

                            InkWell(
                              onTap: () async {
                                _launched2 = _launchInBrowser(toLaunch);
                              },
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      child: Container(
                                        width: double.infinity,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: dark.isdark
                                              ? ColorManager.black
                                              : ColorManager.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xffBCB6B6),
                                              offset: Offset(0.0, 1.0), //(x,y)
                                              blurRadius: 5.0,
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                            child: Text(
                                              'لوحة تحكم العميل',
                                              style:
                                              Theme
                                                  .of(context)
                                                  .textTheme
                                                  .bodyLarge,
                                            )),
                                      ))),
                            ),

//اعدادت الروارتر

                            GestureDetector(
                              onTap: () async {
                                _launched2 = _launchInBrowseRouterSetting();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: dark.isdark
                                        ? ColorManager.black
                                        : ColorManager.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xffBCB6B6),
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 5.0,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                      child: Text(
                                        'اعدادات الراوتر',
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .bodyLarge,
                                      )),
                                ),
                              ),
                            ),

//الاتصال بلدعم الفني

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  FlutterPhoneDirectCaller.callNumber('$numbedam');
                                  showToast(
                                      text: 'الاتصال بلدعم الفني',
                                      color: ColorManager.black,
                                      textcolor: ColorManager.white);
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: dark.isdark
                                        ? ColorManager.black
                                        : ColorManager.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xffBCB6B6),
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 5.0,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                      child: Text(
                                        'الاتصال بالدعم الفني',
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(

                                        ),
                                      )),
                                ),
                              ),
                            ),

//للتوصل عبر الواتس

                            GestureDetector(
                              onTap: ()async {
                                await launch(
                                    "https://wa.me/${numberwhatssap}?text=Hello");
                                showToast(
                                    text: 'للتوصل عبر الواتس',
                                    color: ColorManager.black,
                                    textcolor: ColorManager.white);

                              },
                              child:     Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: dark.isdark
                                        ? ColorManager.black
                                        : ColorManager.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xffBCB6B6),
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 5.0,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                      child: Text(
                                        'للتوصل عبر الواتس',
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .bodyLarge,
                                      )),
                                ),
                              ),
                            ),
//فودافون كاش

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  launch('tel:$fodafone');

                                  showToast(
                                      text: 'فودافون كاش',
                                      color: ColorManager.black,
                                      textcolor: ColorManager.white);
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: dark.isdark
                                        ? ColorManager.black
                                        : ColorManager.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xffBCB6B6),
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 5.0,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                      child: Text(
                                        'فودافون كاش',
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .bodyLarge,
                                      )),
                                ),
                              ),
                            ),
//اسعار وتفاصيل الباقات
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: GestureDetector(
//                                 onTap: () {
//                                   showModalBottomSheet(
//                                       context: context,
//                                       builder: (c) {
//                                         return ShowBottom();
//                                       });
//                                 },
//                                 child: Container(
//                                   width: double.infinity,
//                                   height: 50,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(15),
//                                     color: dark.isdark
//                                         ? ColorManager.black
//                                         : ColorManager.white,
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: Color(0xffBCB6B6),
//                                         offset: Offset(0.0, 1.0), //(x,y)
//                                         blurRadius: 5.0,
//                                       ),
//                                     ],
//                                   ),
//                                   child: Center(
//                                       child: Text(
//                                         'اسعار وتفاصيل الباقات  ',
//                                         style: Theme
//                                             .of(context)
//                                             .textTheme
//                                             .bodyLarge,
//                                       )),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: GestureDetector(
//                                 onTap: () {
//                                   showModalBottomSheet(
//                                       context: context,
//                                       builder: (c) {
//                                         return ShowBottomWebview();
//                                       });
//                                 },
//                                 child: Container(
//                                   width: double.infinity,
//                                   height: 50,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(15),
//                                     color: dark.isdark
//                                         ? ColorManager.black
//                                         : ColorManager.white,
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: Color(0xffBCB6B6),
//                                         offset: Offset(0.0, 1.0), //(x,y)
//                                         blurRadius: 5.0,
//                                       ),
//                                     ],
//                                   ),
//                                   child: Center(
//                                       child: Text(
//                                         'قياس السرعة',
//                                         style: Theme
//                                             .of(context)
//                                             .textTheme
//                                             .bodyLarge,
//                                       )),
//                                 ),
//                               ),
//                             ),

                          ],
                        ),
                      ],
                    ),
                  ),


                ],
              ),
          ),
        ],



      )
    );
  }




}





