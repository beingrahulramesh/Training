import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
   Page6({super.key});

List<Map<String,dynamic>> iphonedate =[
{
  'title':'iphone1',
    'subtitle':'iphone1',
  'trailing':'iphone1',
  'leading':'assets/iphone1.jpg',

}
,
{
  'title':'iphone2',
    'subtitle':'iphone2',
  'trailing':'iphone1',
  'leading':'assets/iphone222.jpg',

}
,
{
  'title':'iphone3',
    'subtitle':'iphone3',
  'trailing':'iphone1',
  'leading':'assets/iphone33.jpg',

}
,
{
  'title':'iphone5',
    'subtitle':'iphone5',
  'trailing':'iphone1',
  'leading':"assets/iphone5.jpg",

}

];




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("list -map",style: TextStyle(color: Colors.orangeAccent),),
        centerTitle: true,
      ),

      body: SafeArea(child: ListView.builder(
        itemCount: iphonedate.length,
        itemBuilder: (context,index)=>
        Card(
          child: ListTile(
            title: Text(iphonedate[index]["title"]),
            subtitle: Text(iphonedate[index]["subtitle"]),
            trailing: Text(iphonedate[index]["trailing"]),
            leading: CircleAvatar(
              backgroundImage: AssetImage(iphonedate[index]["leading"]),
            ),
          ),
        )
        
        )),
    );
  }
}