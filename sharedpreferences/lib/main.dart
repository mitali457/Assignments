import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';


void main() => runApp(sharedpreferenceexample());



class sharedpreferenceexample extends StatefulWidget {
  sharedpreferenceexample() : super();
 
  final String title = "Shared Preference Demo";
  @override
  _sharedpreferenceexampleState createState() => _sharedpreferenceexampleState();
}
class _sharedpreferenceexampleState extends State<sharedpreferenceexample> {
  String _kdata='';
  String namekey='_key_name';
  TextEditingController controller=TextEditingController ();
  @override
  void initState()
  {
    super.initState();
  }
  Future<bool> saveData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(namekey,controller.text);
  }
  Future<String> loadData() async{
   SharedPreferences preferences = await SharedPreferences.getInstance(); 
   return await preferences.getString(namekey);
  }
  setData()
  {
    loadData().then((value)
    {
      setState((){
        _kdata=value;
      });
    });
  }
  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text('Shared preferenced Example!!'),
      ),
      body: Container(
         alignment: Alignment.center,
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              controller: controller,
              decoration: InputDecoration.collapsed(hintText: "Enter Name"),

              
            ),
            OutlineButton(
              child:Text('Save Name'),
              onPressed:(){
                saveData();

              }
            ),
            Text(
               _kdata,
              style:TextStyle(fontSize: 23),
            ),
            OutlineButton(
              child:Text('Load Name'),
              onPressed:(){
              setData();
              },
            ),
           
          ],
        ),
      ),
    ),
    );
  }
}
