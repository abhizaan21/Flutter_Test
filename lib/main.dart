import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

Future <List<int>> fetch() async{

}
  final String apiUrl = "https://randomuser.me/api/?results=10";

  Future<List<dynamic>> fetchUsers() async {

    var result = await http.get(apiUrl);
    return json.decode(result.body)['results'];

  }

class MyApp extends StatelessWidget {


 static final String title= "Randomizer";

  @override
  Widget build(BuildContext context) =>MaterialApp(
    debugShowCheckedModeBanner:false,
    title:title,
    theme:ThemeData(primarySwatch:Colors.green),
    home: MyHomePage(),
  );
  }
class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    // list of 5 random Number between 1 to 100
    final list= nextNumbers(5, min: 1 , max:100);
    print(list);

    return Scaffold(
     appBar: AppBar(
     title: Text(MyApp.title),
       centerTitle: true,
     ),
      body: Center(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children:[
            Text(
              'Randomly Generated Number: $list',
              style:TextStyle(fontSize: 21),
            ),
            Container(
              padding:EdgeInsets.all(20.0),
              child:ElevatedButton(
                child: Text('Generate'),
                onPressed: (){
                  int nextNumber({required int min,required int max}) =>
                    min + Random().nextInt(max - min + 1 );
                },
              )
            )
          ]
        )
      ),
      );
  }

 int nextNumber({required int min,required int max}) =>
    min + Random().nextInt(max - min + 1 );
  
List<int> nextNumbers(int length,{required int min, required int max}){
  final numbers= Set<int>();

 while (numbers.length < length) {
   final number= nextNumber(min: min, max: max);
   numbers.add(number);
 }
 return List.of(numbers);
  }
}
