import 'package:ejercicio_practico_ev2/const/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:ejercicio_practico_ev2/pages/description.dart';
import 'package:page_transition/page_transition.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  int activeMenu1 = 0;
  int activeMenu2 = 0;

  Widget showAppBar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(padding: const EdgeInsets.only(left: 0, right: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Text(
              "Bienvenido",
              style: TextStyle(
                  fontSize: 27,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold),
            ),
            Icon(FeatherIcons.user, color: Colors.pink,),
          ],
      ),),
    );
  }

  Widget bodyAppEx(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //banner Letras

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: List.generate(menu_list_1.length, (index){
                return Padding(padding: const EdgeInsets.only(right: 25),
                child: GestureDetector(onTap: (){
                  setState(() {
                    activeMenu1 = index;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      menu_list_1[index],style: TextStyle(color: activeMenu1 == index ? Colors.pink: Colors.grey, fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 3,),
                    activeMenu1 == index ?
                    Container(width: 10, height: 3, decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(5)),):
                    Container()
                  ],
                ),
                ),);
              }),
            ),),
          ),

          //Imagen Portada

          SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(padding: const EdgeInsets.only(left: 30),
            child: Row(children: List.generate(portada.length, (index){
              return Padding(padding: const EdgeInsets.only(right: 30),
              child: GestureDetector(
                onTap: (){

                  
                },
                child: Column(children: [Container(
                  width: 350,
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(portada[index]['img']),
                      fit: BoxFit.cover),
                      color: Colors.blue, 
                      borderRadius: BorderRadius.circular(10)
                  ),
                )]),
              ),);
            })),),
          ),
      /// Segundo Bloque Animales
      ///
      //titutlo
      SizedBox(height: 10,),
      SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: List.generate(titulos.length, (index){
                return Padding(padding: const EdgeInsets.only(right: 25),
                child: GestureDetector(onTap: (){
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titulos[index],style: TextStyle(color: Colors.pink, fontSize: 20, fontWeight: FontWeight.w600),
                    ), 
                  ],
                ),
                ),);
              }),
            ),),
          ),

        //Imagen Animales
        SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(padding: const EdgeInsets.only(left: 30),
            child: Row(children: List.generate(animales.length, (index){
              return Padding(padding: const EdgeInsets.only(right: 30),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, PageTransition(alignment: Alignment.bottomCenter, child: DescriptionPage(
                          description: animales[index],
                        ),
                        type: PageTransitionType.scale)); 
                },
                child: Column(children: [Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(animales[index]['img']),
                      fit: BoxFit.cover),
                      color: Colors.blue, 
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Text(animales[index]['title'],
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600
                ),)
                ]),
              ),);
            })),),
          ),


//Segundo Titulo 
          SizedBox(height: 10,),
      SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: List.generate(titulos2.length, (index){
                return Padding(padding: const EdgeInsets.only(right: 25),
                child: GestureDetector(onTap: (){
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titulos2[index],style: TextStyle(color: Colors.pink, fontSize: 20, fontWeight: FontWeight.w600),
                    ), 
                  ],
                ),
                ),);
              }),
            ),),
          ),
          //Imagen paisaje
        SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(padding: const EdgeInsets.only(left: 30),
            child: Row(children: List.generate(paisajes.length, (index){
              return Padding(padding: const EdgeInsets.only(right: 30),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, PageTransition(alignment: Alignment.bottomCenter, child: DescriptionPage(
                          description: paisajes[index],
                        ),
                        type: PageTransitionType.scale));
                },
                child: Column(children: [Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(paisajes[index]['img']),
                      fit: BoxFit.cover),
                      color: Colors.blue, 
                      borderRadius: BorderRadius.circular(10)
                  ),
                  
                  
                ),
                Text(paisajes[index]['title'],
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600
                ),)
                ]),
              ),);
            })),),
          ),
        ],
      ),
      
    );
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: showAppBar(),
      ),
      body: bodyAppEx(),

    );
  }
}