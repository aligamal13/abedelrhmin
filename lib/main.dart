import 'package:abelrhmen/bottom_pro/bottom_prov.dart';
import 'package:abelrhmen/component/components.dart';
import 'package:abelrhmen/local/cash_hlper.dart';
import 'package:abelrhmen/page/page_screen.dart';
import 'package:flutter/material.dart';


import 'package:provider/provider.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Cash_Hlper.init();
  bool? isDark = Cash_Hlper.getBoolean(key: 'isDark');
  runApp( MyApp(isDark));
}

class MyApp extends StatelessWidget {
  bool? isDark;
  MyApp(this.isDark);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [




        ChangeNotifierProvider(create: (context) => BottomProvedr()..checkisdark(fromshard: isDark),),

      ],
      child: Consumer<BottomProvedr>(
        builder: (BuildContext context, value, Widget? child) {

          return MaterialApp(
            title: '01030838299',
            theme: tehemdata(),
            darkTheme: darkTheme(),
            debugShowCheckedModeBanner: false,
            themeMode: value.isdark?ThemeMode.light:ThemeMode.dark,
            home: PageScreen(),
          );
        },

      ),
    );
  }
}
