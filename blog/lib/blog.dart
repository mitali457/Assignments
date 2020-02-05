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
            preferredSize: Size.fromHeight(230.0),
            child: AppBar(
              flexibleSpace: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://i.gifer.com/4Snl.gif',
                    fit: BoxFit.contain,
                    width: 170,
                    height: 160,
                  ),
               
                    Text("Write Your Blog!!",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
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
                          width: 220,
                          height: 160,
                          decoration: BoxDecoration(color: Colors.white),
                          margin: EdgeInsets.all(10),
                          child: Image.network(
                              'https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg'),
                        ) :  Container(
                          width: 120,
                          height: 100,
                          decoration: BoxDecoration(color: Colors.white),
                          margin: EdgeInsets.all(10),
                          child: Image.file(_image),
                        )
                      ]),
                      Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
               onPressed: (){
                 getImage();
               },
                color: Colors.teal,
                child: Text('Take Photo'),
              ),
              RaisedButton(
              onPressed: (){
                getImagegallery();
              },
                color: Colors.purple[200],
                child: Text('Upload'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
              
                          width: 220,
                          height: 100,
                          decoration: BoxDecoration(color: Colors.white),
                          margin: EdgeInsets.only(top:30),
             child: Text('Write Something Here......')
              ),
            ]),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
               onPressed: (){},
                color: Colors.teal,
                child: Text('Edit'),
              ),
              RaisedButton(
              onPressed: (){},
                color: Colors.purple[200],
                child: Text('Save'),
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

  

