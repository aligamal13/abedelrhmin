

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:abelrhmen/bottom_pro/bottom_prov.dart';
import 'package:abelrhmen/recources/color_managr.dart';
import 'package:provider/provider.dart';

class CustumSliverAppBar extends StatelessWidget {
  const CustumSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dark = Provider.of<BottomProvedr>(context);

    return  SliverAppBar(

        title: Text('مرحبا في شبكة عبادالرحمن', style: TextStyle(
            color: ColorManager.white,
            fontWeight: FontWeight.bold,
            fontSize: 15
        )),
        centerTitle: true,
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: ColorManager.erorr,
          child: Container(
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(45),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffBCB6B6),
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 5.0,
                ),
              ],
            ), clipBehavior: Clip.antiAlias,
            child: CachedNetworkImage(

              imageUrl: 'https://static7.depositphotos.com/1238677/724/i/950/depositphotos_7243404-stock-photo-wifi-logo-3d-concept.jpg',

              fit: BoxFit.cover,
              height: 150,
              width: 150,

              placeholder: (context, url) =>
                  SizedBox(
                    child: Image.asset('assets/icon.png'),
                  ),
              errorWidget: (context, url, error) =>
                  Image.asset('assets/icon.png'),
            ),
          ),),
        actions: [
          IconButton(
              onPressed: () {
                dark.checkisdark();
              },
              icon: Icon(Icons.dark_mode,color: ColorManager.white,))
        ],
        expandedHeight: 200,
        shadowColor: Colors.red,
        foregroundColor: Colors.black,
        backgroundColor: Colors.black,
        flexibleSpace: LayoutBuilder(
          builder: (context, constraints) {
            var top = constraints.biggest.height;
            return FlexibleSpaceBar(
              centerTitle: true,
              title: AnimatedOpacity(
                duration: Duration(milliseconds: 300),
                opacity: top <= 130 ? 1.0 : 0.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CachedNetworkImage(
                      imageUrl: 'https://img.freepik.com/free-vector/wireless-internet-technology-icon-vector-neon-gradient-background_53876-112183.jpg?w=2000',
                      fit: BoxFit.cover,
                      height: 150,
                      width: 150,

                      placeholder: (context, url) =>
                          SizedBox(
                            child: Image.asset('assets/icon.png'),
                          ),
                      errorWidget: (context, url, error) =>
                          Image.asset('assets/icon.png'),
                    ),
                  ],
                ),
              ),
              background: InkWell(
                onTap: () {
                  // navgiTo(context, WebViewScreen(product.openGiveawayUrl.toString()));
                },
                child: CachedNetworkImage(
                  imageUrl: 'https://img.freepik.com/free-vector/wireless-internet-technology-icon-vector-neon-gradient-background_53876-112183.jpg?w=2000',
                  fit: BoxFit.cover,
                  height: 150,
                  width: 150,

                  placeholder: (context, url) =>
                      SizedBox(
                        child: Image.asset('assets/icon.png'),
                      ),
                  errorWidget: (context, url, error) =>
                      Image.asset('assets/icon.png'),
                ),
              ),
            );
          },
        )
    );
  }
}
