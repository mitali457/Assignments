import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginpage/screen/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // class _LoginPageState extends State<LoginPage> {

//   /*final TextEditingController _nameFilter = new TextEditingController();
//     final TextEditingController _passwordFilter = new TextEditingController();
//     String _name = "";
//     String _password = "";
//     _LoginPageState() {
//         _emailFilter.addListener(_nameListen);
//         _passwordFilter.addListener(_passwordListen);
//     void _nameListen()
//      {
//         if (_nameFilter.text.isEmpty) {
//             _name = "";
//         } else {
//             _name = _nameFilter.text;
//         }
//     }
//     void _passwordListen() {
//         if (_passwordFilter.text.isEmpty) {
//             _password = "";
//         } else {
//             _password = _nameFilter.text;
//         }
//     }*/

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           title: Text(
//             'Login Page',
//             style: TextStyle(
//                 color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic),
//             textAlign: TextAlign.center,
//           ),
//         ),
//         body: Center(
//             child:
//                 Column(mainAxisAlignment: MainAxisAlignment.start, children: <
//                     Widget>[
//           Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
//             Container(
//               width: 200,
//               height: 90,
//               margin: EdgeInsets.only(top: 15, bottom: 10),
//               child: Image.network(
//                   'https://www.inspectionsupport.net/wp-content/uploads/2014/07/LoginRed.jpg'),
//             )
//           ]),
//           Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
//             Container(
//               width: 350,
//               height: 300,
//               margin: EdgeInsets.only(top: 15, bottom: 10),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 2)],
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Column(children: <Widget>[
//                 Padding(
//                   padding: EdgeInsets.only(top: 25, left: 15, right: 15),
//                   child: TextField(
//                     keyboardType: TextInputType.text,
//                     inputFormatters: <TextInputFormatter>[
//                       WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
//                     ],
//                     decoration: InputDecoration(
//                       hintText: ' Enter Your Name',
//                       icon: Icon(Icons.person, color: Colors.blue),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 25, left: 15, right: 15),
//                   child: TextField(
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       hintText: ' password',
//                       icon: Icon(Icons.lock_outline, color: Colors.blue),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 70, left: 10, right: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//                       Container(
//                         width: 100,
//                         height: 35,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(5),
//                           color: Colors.blue,
//                         ),
//                         child: FlatButton(
//                           onPressed: () {},
//                           child: Text(
//                             'Login',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: 200,
//                         height: 35,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(5),
//                           color: Colors.blue,
//                         ),
//                         child: FlatButton(
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         RegistrationFormForGeekyAntsAcademyCourse()));
//                           },
//                           child: Text(
//                             'Register Your Account',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ]),
//             ),
//           ]),
//         ])));
//   }
// }

// @override
// Widget build(BuildContext context) {
//   // TODO: implement build
//   return null;
// }

// class RegistrationFormForGeekyAntsAcademyCourse extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Registration Form For GeekyAnts Academy Course"),
//       ),
//       body: Center(
//         child: RaisedButton(
//           onPressed: () {
//             // Navigate back to first route when tapped.
//           },
//           child: Text('Register'),
//         ),
//       ),
//     );
//   }
// }
