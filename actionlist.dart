import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Action_list extends StatefulWidget {


  @override
  _Action_listState createState() => _Action_listState();
}

class _Action_listState extends State<Action_list> {
  var url=Uri.parse('https://www.googleapis.com/books/v1/volumes?q=green');
  var ttl;
  var img;
  var lng;
  var arth;
  var data="nothing";
  fetch_data()async
  {
    var resp= await http.post(url);
    data = resp.body;
    print(resp);
    print("/n gg /n /n");
    print(resp.body);
    data=json.decode(resp.body);


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            RaisedButton(onPressed: (){fetch_data();},child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("gg no re"),
            ),),
           Text(data),
          ],
        ),
      )
    );
  }
}
