import 'package:flutter/material.dart';
import './text_output.dart';
import 'dart:math';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String text = "Click to get a lucky number";
  //Random rnum = new Random();

  List image = [
    NetworkImage('https://f0.pngfuel.com/png/25/780/smiley-emoji-png-clip-art.png'),
        
    NetworkImage(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJb9KVSoIsbU7w-P1Sa0gJ4mWfTtp-AMTS0uvbK91auOLsdt-2&s'),
    NetworkImage(
        'https://i.pinimg.com/originals/5f/3b/e5/5f3be579fec88cc75ecc2215e79e9621.png'),
    NetworkImage(
        'https://dl.apkawards.com/mod/dl9/games/com.android.vending.billing.InAppBillingService.LOCK/img/com.android.vending.billing.InAppBillingService.LOCK.png'),
    NetworkImage(
        'https://image.shutterstock.com/image-vector/happy-star-smiley-hand-drawn-260nw-610895207.jpg'),
    NetworkImage(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOr9HQvfd9rz9tbT31vcU-zofKqeLa7XqfpbGjVQsYCFY9oZjr&s'),
    NetworkImage(
        'https://cdn.shopify.com/s/files/1/0157/8886/collections/Thumbs_up_emoji_large.png'),
    NetworkImage(
        'https://i.pinimg.com/originals/f3/2d/d2/f32dd26a74a9277a3963060500c7b5a1.png'),
    NetworkImage(
        'https://i.pinimg.com/originals/d0/92/1e/d0921e50a51ec10ec77918551c03c6d2.png'),
    NetworkImage(
        'https://p1.hiclipart.com/preview/392/1021/163/good-luck-text-png-clipart.jpg'),
  ];
  List msg = [
    'Wow!!Your lucky Number is: 1\nHi today is a great day for you',
    'Wow!!Your lucky Number is: 2\nHi today is a not good day for you',
    'Wow!!Your lucky Number is: 3\nHi today is a funny day for you',
    'Wow!!Your lucky Number is: 4\nHi today something will be happend to you,so be carefull',
    'Wow!!Your lucky Number is: 5\nHi Enjoy your great day ',
    'Wow!!Your lucky Number is: 6\nHi today is a great day for you',
    'Wow!! Your lucky Number is: 7 \nToday is lucky day for you',
    'Wow!!Your lucky Number is: 8\nHi today someone make you fool',
    'Wow!!Your lucky Number is: 9\nHi\n today is a great,enjoy your day',
  ];

  int index =0;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            height: 350,
            width: 800,
            decoration:
                BoxDecoration(image: DecorationImage(image: image[index])),
          ),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
              Container(
            //height:300,
            width:340,
            margin: EdgeInsets.only(left: 60),
          child:Text(
            msg[index],
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.indigo)
          )
          
          ),
  ],
),
          Container(
            margin: EdgeInsets.all(24),
            width: 130,
            child: RaisedButton(
              color: Colors.indigo,
              onPressed: () {
                
                setState(() {
                  
                  //index=msg[index];

                  index = Random().nextInt(9);
                });
              },
              child: Text(
                'Click Here',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
