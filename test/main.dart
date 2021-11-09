import 'package:flutter/material.dart';
void main() => runApp(MyConverter());

class MyConverter extends StatefulWidget{
   String _startValue;
  String _convertedValue;
  double _numberForm;
  String _resulttext;

  final TextStyle inputStyle=TextStyle(
    fontSize: 21,
    color: Colors.black,
  );

  final TextStyle labelStyle=TextStyle(
    fontSize: 23,
    color: Colors.black54,);

  void initState(){
    _numberForm=0;
    super.initState();
  }

  final List<String> _measures=[
    'miles',
    'kilometers'
  ];

  )
  @override
  State<StatefulWidget> createState() {
    _MyConverterState createState()=> _MyConverterState();
  }}
  class _MyConverter extends State<MyConverter>{
  @override
  Widget build(BuildContext context) {
    return Container();
  }}
  MaterialApp(
debugShowCheckedModeBanner: false,
title:'Length Converter'
home:Scaffold(
resizeToAvoidBottomInsert:true,
appBar:AppBar(
title:Text('Length Converter'),
),
body:Container(
padding:EdgeInsets.symmetric(horizontal:21),
child:Column(
children:[TextField(
Row(
children:[
  DropdownButton(
style:inputStyle,
hint:text(
"Unit",
style:inputStyle,
),
items:_measures.map((String value){
return DropdownMenuItem<String>(
value:value,
child:Text(value),);
}).toList(),
onChanged:(value){
  setState((){
    _startValue=value;
});
},
value:_startValue,
),
Spacer(),
Icon(
Icons.arrow_forward,
colors:Colors.blue[600],
size:25.0,
semanticLabel:'Convert',
),
Spacer(),
DropdownButton(
hint:Text(
"Unit",
style:inputStyle,),
style:inputStyle,
),
stle:inputStyle,
items:_measures.map((String value){
  return DropDownMenuItem<String>(
  value:value,
child:Text(
value,style:inputStyle,
),
  );
}).toList(),
onChanged:(value){
  setState((){
    _convertedValue=value;
});
},
value: _convertedValue,
),],),
})
)
]
)
style: inputStyle,
decoration:InputDecoration(
hintText:"Please enter the value",),
onChanged:(text){
var rv=double.tryParse(text);
if (rv!=null){
setState((){
_numberForm=rv;
});
}
},),
}
);
}
}
)
)],
)


