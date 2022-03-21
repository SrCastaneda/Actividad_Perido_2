import 'package:ejercicio_practico_ev2/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';


class principalApp extends StatefulWidget {
  @override
  State<principalApp> createState() => _principalAppState();
}

class _principalAppState extends State<principalApp> {

   int activeTab = 0;

  int _paginaActual = 0;

  Widget buttonsFooter(){
    List items = [
      FeatherIcons.home,
      FeatherIcons.search,
      FeatherIcons.heart,
      FeatherIcons.user
    ];

    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.white), //cambiar a negro
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return IconButton(
                onPressed: () {
                  setState(() {
                    activeTab = index;
                  });
                },
                icon: Icon(
                  items[index],
                  color: activeTab == index ? Colors.pink : Colors.grey,
                ));
          }),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: buttonsFooter(),
      body: getPages(),
    );
  }

  Widget getPages(){
    return IndexedStack(
      index: activeTab,
      children: [
        homePage(),
        Center(
          child: Text(
            "Busqueda",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
         Center(
          child: Text(
            "Favoritos",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
         Center(
          child: Text(
            "Perfil",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      
      ],
    );
  }
}