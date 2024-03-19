import 'package:flutter/material.dart';
import 'package:abelrhmen/model/data.dart';
import 'package:abelrhmen/recources/color_managr.dart';

class ShowBottom extends StatelessWidget {
  TableRow _tableRow = TableRow(children: [
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('الباقه'),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('السعر'),
    ),
    // Padding(
    //   padding: EdgeInsets.all(10),
    //   child: Text('سعر الجيجا'),
    // ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        'بدلا من',
        style: TextStyle(
          color: ColorManager.erorr,
          decoration: TextDecoration.lineThrough,
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('توفير'),
    ),
  ]);
  TableRow _tableRow2 = TableRow(children: [
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('جيجا 50'),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('100 جنيه'),
    ),
    // Padding(
    //   padding: EdgeInsets.all(10),
    //   child: Text('2 جنيه'),
    // ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Icon(Icons.hourglass_empty),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Icon(Icons.hourglass_empty),
    ),
  ]);
  TableRow _tableRow3 = TableRow(children: [
    Padding(
      padding: EdgeInsets.all(10),
      child: Text(' جيجا 75'),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('150 جنيه'),
    ),
    // Padding(
    //   padding: EdgeInsets.all(10),
    //   child: Text('2 جنيه'),
    // ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Icon(Icons.hourglass_empty),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Icon(Icons.hourglass_empty),
    ),
  ]);
  TableRow _tableRow4 = TableRow(children: [
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('جيجا 107'),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('200 جنيه'),
    ),
    // Padding(
    //   padding: EdgeInsets.all(10),
    //   child: Text('1.86 قرش'),
    // ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('215',style: TextStyle(
        color: ColorManager.erorr,
        decoration: TextDecoration.lineThrough,
      ),),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('15جنيه'),
    ),
  ]);
  TableRow _tableRow5 = TableRow(children: [
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('جيجا 150'),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('270 جنيه'),
    ),
    // Padding(
    //   padding: EdgeInsets.all(10),
    //   child: Text('1.80 قرش'),
    // ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('300',style: TextStyle(
        color: ColorManager.erorr,
        decoration: TextDecoration.lineThrough,
      ),),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('30جنيه'),
    ),
  ]);
  TableRow _tableRow6 = TableRow(children: [
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('جيجا 170'),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('300 جنيه'),
    ),
    // Padding(
    //   padding: EdgeInsets.all(10),
    //   child: Text('1.76 قرش'),
    // ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('340',style: TextStyle(
        color: ColorManager.erorr,
        decoration: TextDecoration.lineThrough,
      ),),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('40 جنيه'),
    ),
  ]);
  TableRow _tableRow7 = TableRow(children: [
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('جيجا 200'),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('350 جنيه'),
    ),
    // Padding(
    //   padding: EdgeInsets.all(10),
    //   child: Text('1.75 قرش'),
    // ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('400',style: TextStyle(
        color: ColorManager.erorr,
        decoration: TextDecoration.lineThrough,
      ),),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('50 جنيه'),
    ),
  ]);
  TableRow _tableRow8 = TableRow(children: [
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('جيجا 250'),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('425 جنيه'),
    ),
    // Padding(
    //   padding: EdgeInsets.all(10),
    //   child: Text('1.70 قرش'),
    // ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('500',style: TextStyle(
        color: ColorManager.erorr,
        decoration: TextDecoration.lineThrough,
      ),),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('75 جنيه'),
    ),
  ]);
  TableRow _tableRow9 = TableRow(children: [
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('جيجا 300'),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('480 جنيه'),
    ),
    // Padding(
    //   padding: EdgeInsets.all(10),
    //   child: Text('1.60 قرش'),
    // ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('600',style: TextStyle(
        color: ColorManager.erorr,
        decoration: TextDecoration.lineThrough,
      ),),
    ),
    Padding(
      padding: EdgeInsets.all(10),
      child: Text('120 جنيه'),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Text(
            'شبكة عباد الرحمن لخدمات الإنترنت',
            style: TextStyle(color: ColorManager.app, fontSize: 25),
          ),
          SizedBox(
            width: 150,
            child: Card(
              color: ColorManager.primary,
              child: Center(
                child: Text(
                  'أسعار الباقات',
                  style: TextStyle(color: ColorManager.erorr, fontSize: 20),
                ),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Table(
                  border: TableBorder.all(),
                 // defaultColumnWidth: FixedColumnWidth(70),
                  children: <TableRow>[
                    _tableRow,
                    _tableRow2,
                    _tableRow3,
                    _tableRow4,
                    _tableRow5,
                    _tableRow6,
                    _tableRow7,
                    _tableRow8,
                    _tableRow9,
                  ],
                ),
              ),
              Divider(
                endIndent: 5,
                color: ColorManager.app,
                height: 5,
                indent: 6,
              ),
            ],
          ),
          Text(
            'ملحوظة : سعر الجيجا الإضافية ٥ جنية للجيجا الواحدة',
            style: TextStyle(color: ColorManager.app, fontSize: 16),
          ),
          Text(
            'جميع الباقات شاملة شهر واحد فقط',
            style: TextStyle(color: ColorManager.black, fontSize: 16),
          ),
          Text(
            'هام : لن تحصل على التوفير فى أسعار الباقات فى حالة تأجيل الإشتراك حتى لو ساعه واحدة',
            style: TextStyle(color: ColorManager.erorr, fontSize: 16),
          ),
          Text(
            'ادارة : م محمود جمال أبوجمي ',
            style: TextStyle(color: ColorManager.app, fontSize: 16),
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
