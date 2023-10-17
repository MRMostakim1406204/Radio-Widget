import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
 enum Sub {Bangla,English,Math,Physics,Chemistry,Biology}

class _HomePageState extends State<HomePage> {
  Sub? _selectedSub = Sub.Bangla; //difold hisebe mane all time selected hoea thakbe.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Radio"),
      centerTitle: true,
      ),
      body: SafeArea(child: Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Text("Which Subject Do You Like?",style: TextStyle(
              fontSize: 20,color: Colors.pink,
              fontStyle: FontStyle.italic,fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 40,),
            ListTile(
              title: Text("Bangla",style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.black
              ),),
              leading: Radio(value: Sub.Bangla,
               groupValue: _selectedSub, 
               onChanged: (Sub? value){
               setState(() {
                 _selectedSub = value;
               });
               }),
            ),

            ListTile(
              title: Text("English",style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.black
              ),),
              leading: Radio(value: Sub.English,
               groupValue: _selectedSub, 
               onChanged: (Sub? value){
               setState(() {
                  _selectedSub = value;
               });
               }),
            ),

            ListTile(
              title: Text("Math",style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.black
              ),),
              leading: Radio(value: Sub.Math,
               groupValue: _selectedSub, 
               onChanged: (Sub? value){
               setState(() {
                  _selectedSub = value;
               });
               }),
            ),
            
            ListTile(
              title: Text("Physics",style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.black
              ),),
              leading: Radio(value: Sub.Physics,
               groupValue: _selectedSub, 
               onChanged: (Sub? value){
               setState(() {
                  _selectedSub = value;
               });
               }),
            ),
            
            ListTile(
              title: Text("Chemistry",style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.black
              ),),
              leading: Radio(value: Sub.Chemistry,
               groupValue: _selectedSub, 
               onChanged: (Sub? value){
               setState(() {
                  _selectedSub = value;
               });
               }),
            ),

            ListTile(
              title: Text("Biology",style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.black
              ),),
              leading: Radio(value: Sub.Biology,
               groupValue: _selectedSub, 
               onChanged: (Sub? value){
               setState(() {
                  _selectedSub = value;
               });
               }),
            )
          ],
        ),
      )),
    );
  }
}
