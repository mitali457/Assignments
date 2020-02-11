import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  
  File _image;
 
  Future getImage() async {
    var imagecamera = await ImagePicker.pickImage(source: ImageSource.camera);
   


    setState(() {
      _image =  imagecamera;
     
    });}
    Future getImagegallery() async {
    var imagegallery = await ImagePicker.pickImage(source: ImageSource.gallery);
   


    setState(() {
      _image =  imagegallery;
     
    });}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: AppBar(
              flexibleSpace: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      image:DecorationImage(fit:BoxFit.cover,image:NetworkImage('https://show.chinadaily.com.cn/pub/view/af271047ca1e4c3288a5da4f364f0495'))
                    ),
                  ),
               
                    Text("Write Your Blog!!",
                      style: TextStyle(
                          color: Colors.cyan,
                          fontWeight: FontWeight.w500,
                          fontSize: 22)),
                 
               
                ],
              ),
              elevation: 0.0,
              backgroundColor: Colors.white,
              brightness: Brightness.light,
            ),
          ),
          
          body: SingleChildScrollView(
            
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _image == null ?
                        Container(
                          width: 320,
                          height: 200,
                          decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(10),
                            topRight:Radius.circular(40),
                            bottomLeft:Radius.circular(40),
                            bottomRight: Radius.circular(10),
                          ),
                          image: DecorationImage(image: NetworkImage('https://i.dlpng.com/static/png/6743854_preview.png',),fit: BoxFit.cover)
                          ),
                          margin: EdgeInsets.all(20),
                          
                              
                        ) :  Container(
                          width: 320,
                          height: 200,
                          decoration: BoxDecoration(image: DecorationImage(image: FileImage(_image),fit: BoxFit.cover), borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(10),
                            topRight:Radius.circular(40),
                            bottomLeft:Radius.circular(40),
                            bottomRight: Radius.circular(10),
                          ),),
                          margin: EdgeInsets.all(20),
                          
                        )
                      ]),
                      Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
               onPressed: (){
                 getImage();
               },
color: Colors.cyan.withOpacity(0.5),
                child: Text('Take photo',style: TextStyle(color:Colors.white),),
              ),
              RaisedButton(
              onPressed: (){
                getImagegallery();
              },
                color: Colors.cyan.withOpacity(0.5),
                child: Text('Upload',style: TextStyle(color:Colors.white),),
              ),
            ],
          ),
         
 Padding(padding: EdgeInsets.only(left:60,top:20),child: TextFormField(maxLines: 6,decoration:InputDecoration(border: InputBorder.none,hintText: 'Write something here')),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
               onPressed: (){},
                color: Colors.cyan.withOpacity(0.5),
                child: Text('Edit',style: TextStyle(color:Colors.white),),
              ),
              RaisedButton(
              onPressed: (){},
                color: Colors.cyan.withOpacity(0.5),
                child: Text('Save',style: TextStyle(color:Colors.white),),
              ),
            ],
          ),
                ]),
                
          ),
        ),
      ),
    );
  }
}

  

