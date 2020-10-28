import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_detay.dart';
import 'package:flutter_burc_rehberi/testdart.dart';

import 'burc_liste.dart';

void main() => runApp(MyApps());


class MyApps extends StatefulWidget {
  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Burc Rehnberi",
      debugShowCheckedModeBanner: false,
      initialRoute: "/burcListesi",
      routes: {
        "/":(context)=>BurcListesi(),
        "/burcListesi":(context)=>BurcListesi(),
      },
      onGenerateRoute: (RouteSettings settings){
        List<String> pathElemanlari=settings.name.split("/"); //  / burcDetay /1
        if(pathElemanlari[1]=='burcDetay') {
          return MaterialPageRoute(builder:(context)=>BurcDetay((int.parse(pathElemanlari[2]))));
        }
        return null;
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}