import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/details_page.dart';
import 'package:flutter_application_1/handlers/test_handler.dart';
import 'package:flutter_application_1/models/dummy.dart';


class HomePage extends StatefulWidget {
  static String tag = "home";
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Future<String>? _futureMyIP;
  List<Dummy> dummyList = [
    Dummy(id: 1, nama: "Oscar", umur: 20),
    Dummy(id: 2, nama: "Defry", umur: 15),
    Dummy(id: 3, nama: "Roltan", umur: 21),
    Dummy(id: 4, nama: "Oscar", umur: 20),
    Dummy(id: 15, nama: "Defry", umur: 15),
    Dummy(id: 16, nama: "Roltan", umur: 21),
    Dummy(id: 17, nama: "Oscar", umur: 20),
    Dummy(id: 18, nama: "Defry", umur: 15),
    Dummy(id: 19, nama: "Roltan", umur: 21),
    Dummy(id: 111, nama: "Oscar", umur: 20),
    Dummy(id: 123, nama: "Defry", umur: 15),
    Dummy(id: 4324, nama: "Roltan", umur: 21),
    Dummy(id: 5454, nama: "Oscar", umur: 20),
    Dummy(id: 232, nama: "Defry", umur: 15),
    Dummy(id: 1233, nama: "Roltan", umur: 21),
    Dummy(id: 232, nama: "Oscar", umur: 20),
    Dummy(id: 44, nama: "Defry", umur: 15),
    Dummy(id: 12, nama: "Roltan", umur: 21),
    Dummy(id: 44, nama: "Oscar", umur: 20),
    Dummy(id: 545, nama: "Defry", umur: 15),
    Dummy(id: 66, nama: "Roltan", umur: 21),
    Dummy(id: 44, nama: "Oscar", umur: 20),
    Dummy(id: 33, nama: "Defry", umur: 15),
    Dummy(id: 77, nama: "Roltan", umur: 21),
  ];

  @override
  void initState() {
    super.initState();
    // _futureMyIP = TestHandler.getIP();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HOME PAGE")),
      // body: Column(
      //   children: [
      //       SizedBox(height: 20),
      //       TextButton(
      //         onPressed: () {
      //           showDialog(context: context, builder: (context){
      //             return Dialog(
      //               child: Container(
      //                 width: 300,
      //                 height: 500,
      //                 child: Text("haha"),
      //               ),
      //             );
      //           });
      //         },
      //         child: const Text("Alert Dialog",
      //           style: TextStyle(
      //             color: Colors.white
      //           ),
      //         ),
      //         style: ButtonStyle(
      //           minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
      //           backgroundColor: MaterialStateProperty.all(Colors.blue),
      //         ),
      //       ),
      //       SizedBox(height: 20),
      //       TextButton(
      //         onPressed: () {
      //           showDialog(
      //             context: context, 
      //             barrierDismissible: false,
      //             builder: (context) {
      //               return AlertDialog(
      //                 title: Text("Confirmation"),
      //                 content: Text("Are you sure blab la ?"),
      //                 actions: [
      //                   TextButton(onPressed: () => Navigator.of(context).pop(true), child: Text("Ok")),
      //                   TextButton(onPressed: () => Navigator.of(context).pop(false), child: Text("Cancel")),
      //                 ],
      //               );
      //           }).then((value){
      //             if(value) {
      //               print("tadi pencet ok");
      //             } else {
      //               print("tadi pencet cancel");
      //             }
      //           });
      //         },
      //         child: const Text("Action Dialog",
      //           style: TextStyle(
      //             color: Colors.white
      //           ),
      //         ),
      //         style: ButtonStyle(
      //           minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
      //           backgroundColor: MaterialStateProperty.all(Colors.blue),
      //         ),
      //       ),
      //       SizedBox(height: 20),
      //       TextButton(
      //         onPressed: () {
      //           showModalBottomSheet(
      //             context: context, 
      //             isScrollControlled: true,
      //             builder: (context) {
      //               return Container(
      //                 height: MediaQuery.of(context).size.height * 0.7,
      //                 color: Colors.green,
      //                 child: Container(
      //                   // color: Colors.green,
      //                   padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      //                   decoration: BoxDecoration(
      //                     color: Colors.white,
      //                     borderRadius: BorderRadius.only(
      //                       topLeft: Radius.circular(10),
      //                       topRight: Radius.circular(10),
      //                     )
      //                   ),
      //                   child: Text("This is modal bottom sheet"),
      //                 ),
      //               );
      //             },
      //           );
      //         },
      //         child: const Text("Bottom sheet",
      //           style: TextStyle(
      //             color: Colors.white
      //           ),
      //         ),
      //         style: ButtonStyle(
      //           minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
      //           backgroundColor: MaterialStateProperty.all(Colors.blue),
      //         ),
      //       ),
      //   ],
      // ),

      // body: Container(
      //   child: FutureBuilder(
      //     future: _futureMyIP,
      //     builder: (context, AsyncSnapshot<String> snapshot) {
      //       print("ketembak");
      //       if (snapshot.hasError) {
      //         //biasanya return page error sendiri
      //         return Text("error nih ${snapshot.error.toString()}");
      //       } else if (snapshot.hasData) {
      //         return Text("${snapshot.data}");
      //       }

      //       return const CircularProgressIndicator();
      //     },
      //   ),
      // ),

      body: Container(
        // child: ListView.separated(
        //   itemCount: dummyList.length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: Column(
        //         children: [
        //           Text(dummyList.elementAt(index).nama),
        //           Text(dummyList.elementAt(index).umur.toString()),
        //         ],
        //       ),
        //     );
        //   }, 
        //   separatorBuilder: (context, index) {

        //     return Card(child: Text("separator nih"),);
        //   }, 
        // )

        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(DetailsPage.tag, arguments: dummyList.elementAt(index));
              },
              child: Card(
                child: Column(
                  children: [
                    Text(dummyList.elementAt(index).id.toString()),
                    Text(dummyList.elementAt(index).nama),
                    Text(dummyList.elementAt(index).umur.toString()),
                  ],
                ),
              ),
            );
            
            Card(
              child: Column(
                children: [
                  Text(dummyList.elementAt(index).id.toString()),
                  Text(dummyList.elementAt(index).nama),
                  Text(dummyList.elementAt(index).umur.toString()),
                ],
              ),
            );
          }, 
        ),

        // child: Column(
        //   children: [
        //     Flexible(
        //       child: ListView.builder(
        //         // controller: _scrollController,
        //         shrinkWrap: true,
        //         itemCount: dummyList.length,
        //         itemBuilder: (context, index) {
        //           return Card(
        //             child: Row(
        //               children: [
        //                 Text(dummyList.elementAt(index).nama),
        //                 Text(dummyList.elementAt(index).umur.toString()),
        //               ],
        //             ),
        //           );
        //         }, 
        //       ),
        //     ),
            
        //     TextButton(
        //       onPressed: () {
        //         Navigator.of(context).pushNamed(HomePage.tag);
        //       },
        //       child: const Text("Login",
        //         style: TextStyle(
        //           color: Colors.white
        //         ),
        //       ),
        //       style: ButtonStyle(
        //         minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
        //         backgroundColor: MaterialStateProperty.all(Colors.blue),
        //       ),
        //     )
        //   ],
        ),

        // child: ListView(
        //   children: [
        //     ListView.builder(
        //         // controller: _scrollController,
        //       shrinkWrap: true,
        //       physics: NeverScrollableScrollPhysics(),
        //       itemCount: dummyList.length,
        //       itemBuilder: (context, index) {
        //         return Card(
        //           child: Row(
        //             children: [
        //               Text(dummyList.elementAt(index).nama),
        //               Text(dummyList.elementAt(index).umur.toString()),
        //             ],
        //           ),
        //         );
        //       }, 
        //     ),
            
        //     TextButton(
        //       onPressed: () {
        //         Navigator.of(context).pushNamed(HomePage.tag);
        //       },
        //       child: const Text("Login",
        //         style: TextStyle(
        //           color: Colors.white
        //         ),
        //       ),
        //       style: ButtonStyle(
        //         minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
        //         backgroundColor: MaterialStateProperty.all(Colors.blue),
        //       ),
        //     ),
        //   ],
        // ),
      // ),
    );
  }
}

