import 'package:flutter/material.dart';

class Page7 extends StatelessWidget {
   Page7({super.key});

final List<String> _names =["karthika","Rahul","Arjun","sangeth","sona"];
final List<String> _message =["HI","Call ","heslo","evening","good morning"];
final List<String> _Image =["assets/mbj2.jpg","assets/mbj.jpg","assets/Untitled.jpg","assets\iphone1.jpg","assets/iphone5.jpg"];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text("whats app clone",style: TextStyle(color: Colors.white60,fontWeight: FontWeight.bold),),
      centerTitle: true,
     ),


     body: SafeArea(child: ListView.separated(itemBuilder: (Context,index)=>CardElement(name: _names[index], image: _Image[index], message: _message[index]), 
     separatorBuilder: (context,index)=>Divider(thickness: 2,color: Colors.indigo,),
      itemCount: _names.length)),
    );
  }
}


class CardElement extends StatelessWidget {
  String name="";
  String message="";
  String image="";
   CardElement({super.key,required this.name,required this.image ,required this.message});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          ListTile(
            title: Text(name),
            subtitle: Text(message),
            leading: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
          )
        ],
      ),
    );
  }
}