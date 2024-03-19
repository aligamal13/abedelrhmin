import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:abelrhmen/local/cash_hlper.dart';



class BottomProvedr extends ChangeNotifier {

  //Position? position2;
 // String? currentAddress;

  int curintIndex = 3;
  var context;

  void ChingIndex(index) {
    curintIndex = index;
    notifyListeners();
  }

  int currintIndex = 1;
  List<Widget> listScreen = [

    // CatgoryScreen(),
    // OrdersScreen(),
    //
    // FavoritScreen(),
    //
    // HomeScreen(),
  ];
  List<String> listTitle = [
    'HomeScreen',
    'CatgoryScreen',
    'FavoriteScreen',
    'SettingsScreen',
  ];
  List<BottomNavigationBarItem>bootomItem=[

    BottomNavigationBarItem(icon: Icon(Icons.clear_all_rounded),label: 'setting',),
    BottomNavigationBarItem(icon: Icon(Icons.card_giftcard_outlined,),label: 'catgory'),
    BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'favorite',),
    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),

  ];
  List<Widget> lisBottom = [
    Icon(
      Icons.add_shopping_cart_outlined,
      size: 25,
    ),
    Icon(
      CupertinoIcons.home,
      size: 33,
      color: Colors.red,
    ),
    Icon(
      Icons.favorite,
      size: 25,
    ),
    Icon(
      Icons.settings,
      size: 25,
    ),
  ];

  bool isdark = false;

  void checkisdark({@required bool? fromshard}) {
    if (fromshard != null) {
      isdark = fromshard;
      notifyListeners();
    } else
      isdark = !isdark;
    Cash_Hlper.putBoolean(key: 'isDark', value: isdark).then((value) {
      notifyListeners();
    });
  }

  bool iseye = false;

  checkeye(eyepass) {
    iseye = !eyepass;
    notifyListeners();
  }






}