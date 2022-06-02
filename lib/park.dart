import 'package:flutter/material.dart';
import 'city.dart';


//ISORY SANTANA
class Sn extends Park{
  Sn (): super (
      parkname: 'Let\'s go on an adventure.',
      parkwidget: '/SpecialNeeds',//ISORY SANTANA
      parktext: 'Activity Details ʕ•́ᴥ•̀ʔっ'
  );
}
class Park extends StatelessWidget {
  String parkname,parktext,parkwidget;
  Park({this.parkname='', this.parkwidget= 'const Text('')',this.parktext=''  });

  @override//ISORY SANTANA
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(parkname),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          OutlinedButton(onPressed: (){
          //ISORY SANTANA
            Navigator.pushNamed(context, parkwidget);
          }, child: Text( parktext)),//ISORY SANTANA
          OutlinedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Back'),),
          Text('(>‿◠)✌', style: TextStyle(color: Colors.green),)
        ],//ISORY SANTANA
      ),
    );
  }
}