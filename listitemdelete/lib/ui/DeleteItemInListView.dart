import 'package:flutter/material.dart';

class DeleteItemInListView extends StatefulWidget {
  @override
  DeleteItemInListViewState  createState() {
    return new DeleteItemInListViewState();
  }
}

class DeleteItemInListViewState
    extends State<DeleteItemInListView> {
  List<String> datas = [
    "Flutter.dev",
    "Inducesmile.com",
    "Yahoo.com",
    "Google.com",
    "Gmail.com",
  ];
  _onSelected(dynamic val) {
    setState(() => datas.removeWhere((data) => data == val));
  }
  _onSubmit() {
    setState(() {
      var _textController;
            datas.add(_textController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[200],
        title: Text("Delete & Add Items In ListView:",style: TextStyle(color: Colors.purple.withBlue(7),fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
        
      ),
      body: ListView(
        children: datas
            .map((data) => ListTile(
                  title: Text(data),
                  trailing: PopupMenuButton(
                    onSelected: _onSelected,
                    icon: Icon(Icons.delete),
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            value: data,
                            child: Text("Delete"),
                          ),
                        ],
                  ),
                ))
            .toList(),
      ),
      
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.details),
      onPressed: () {
        showDialog(
                  context: context,
                  builder: (ctxt) => new AlertDialog
                  (
                    title: Text("AddItem"),
                    //body: Center(
               content:  
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Container(
            
              width: 260,
              height: 200,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 2)],
                borderRadius: BorderRadius.circular(10),
                
              ),
              child: Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: TextField(
                  // onChanged: (),
                    
                    keyboardType: TextInputType.text,
                   // inputFormatters: <TextInputFormatter>[
                     // WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
                   // ],
                    decoration: InputDecoration(
                      hintText: ' Enter Your  Item Name',
                      icon: Icon(Icons.input, color: Colors.blue),
                    ),
                  ),
                ),
                
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                        ),
                        child: FlatButton(
                          onPressed: () {
                            
                           
                          },
                          child: Text(
                            'Add',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
                ),
              )  ]
            ),
                    ]
                    ),        
                      ),
                  
      
        );
        
      },
     )
    );
    
}
  }
