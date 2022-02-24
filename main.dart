import 'package:acm_app/actionlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



void main() {
  runApp(MaterialApp( home:Mainpage(),color: Colors.black,));
}

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title:Text("MangaWiz",style:GoogleFonts.comforterBrush(fontSize: 26,fontStyle:FontStyle.italic,fontWeight:FontWeight.bold,color:Colors.white))),
      body: Stack(
        fit:StackFit.expand,
        children:[
          Image.network("https://i.dlpng.com/static/png/4702934-comic-book-background-png-image-free-download-searchpngcom-comic-book-png-715_715_preview.png",fit: BoxFit.cover,),
          Padding(padding: const EdgeInsets.all(10),
            child:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 75),
                    child:Card(color: Colors.black,
                    child: Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded),color: Colors.white,),
                      ],
                    ),)
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(color: Colors.black,
                      child:Padding(padding: const EdgeInsets.all(5),
                          child:RaisedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Action_list()));
                              },
                              child:
                              Padding(padding:const EdgeInsets.symmetric(vertical: 20,horizontal: 100),child:Text("Action!!",style:GoogleFonts.luckiestGuy(fontSize: 12,fontStyle:FontStyle.italic,fontWeight:FontWeight.bold,color:Colors.black)),),
                              color: Colors.white,
                              textColor: Colors.black,
                            ),
                          )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(color: Colors.black,
                        child:Padding(padding: const EdgeInsets.all(5),
                          child:RaisedButton(
                            onPressed: (){},
                            child:
                            Padding(padding:const EdgeInsets.symmetric(vertical: 20,horizontal: 98),child:Text("Comedy!!"),),
                            color: Colors.white,
                            textColor: Colors.black,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(color: Colors.black,
                        child:Padding(padding: const EdgeInsets.all(5),
                          child:RaisedButton(
                            onPressed: (){},
                            child:
                            Padding(padding:const EdgeInsets.symmetric(vertical: 20,horizontal: 105),child:Text("SCI-FI!!"),),
                            color: Colors.white,
                            textColor: Colors.black,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(color: Colors.black,
                        child:Padding(padding: const EdgeInsets.all(5),
                          child:RaisedButton(
                            onPressed: (){},
                            child:
                            Padding(padding:const EdgeInsets.symmetric(vertical: 20,horizontal: 85),child:Text("Slice of Life!!",style:GoogleFonts.pacifico(fontSize: 12,fontStyle:FontStyle.italic,fontWeight:FontWeight.bold,color:Colors.black)),),
                            color: Colors.white,
                            textColor: Colors.black,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(color: Colors.black,
                        child:Padding(padding: const EdgeInsets.all(5),
                          child:RaisedButton(
                            onPressed: (){},
                            child:
                            Padding(padding:const EdgeInsets.symmetric(vertical: 20,horizontal: 110),child:Text("Dark"),),
                            color: Colors.white,
                            textColor: Colors.black,
                          ),
                        )),
                  ),





                ],
              ),
            ),)
        ],
      ),
    );

  }
}





