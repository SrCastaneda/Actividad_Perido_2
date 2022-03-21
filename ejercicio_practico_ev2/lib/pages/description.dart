import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ejercicio_practico_ev2/const/const.dart';

class DescriptionPage extends StatefulWidget {
  final dynamic description;
  DescriptionPage({Key? key, this.description}) : super(key: key);

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     body: DescriptionImagen(),
    );
  }

  Widget DescriptionImagen(){
    var tamanio = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: tamanio.width,
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.description['img']),
              fit: BoxFit.cover)
            ),
          ),
          SizedBox(height: 30,),
          Padding(padding: const EdgeInsets.only(left: 30, right: 30, top: 230),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.description['title'],
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),)
            ],
          ),
          ),

          SizedBox(height: 30,),
          Container(
            child: Padding(padding: const EdgeInsets.only(left: 30, right: 30, top: 260),
              child: Container(
                child: Text(
                  widget.description['description'],
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  
}