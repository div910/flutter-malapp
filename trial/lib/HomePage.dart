import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:async';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const SecondScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        child:
        Column(
            children:[
              Container(
                  margin: const EdgeInsets.only(top:120,bottom: 20),
                  padding: const EdgeInsets.only(left:10,right:10),
              ),
              Image.asset("graphics/img5.jpeg", height: 440, width: 600),
              Image.asset(
                "graphics/gif3.gif",
                height: 240.0,
                width: 300.0,
              ),
            ])

      // child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}


class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}
class _NewScreenState extends State<NewScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) =>
                const ThirdScreen()
                )
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 4, top: 320),
        color: Colors.transparent,
        child:
        Column(
            children: [
              // Container(
              //   margin: const EdgeInsets.only(top:120,bottom: 20),
              //   padding: const EdgeInsets.only(left:10,right:10),
              // ),
              Image.asset(
                "graphics/gif4.gif",
                height: 240.0,
                width: 300.0,
              ),
            ])

      // child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );

    }
  }

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreen();
  }
  class _ThirdScreen extends State<ThirdScreen>{
    TextEditingController textEditingController = TextEditingController();

    @override
    @override
    Widget build(BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("graphics/img8.jpeg"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 100),
                child: Text(
                  'Final Result',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Raleway",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 25, top: 280),
                child: Text(
                  'Benign percentage: 12%',
                  style: TextStyle(
                    color: Colors.deepPurple[200],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Raleway",
                  ),
                ),
              ),
              // Container(
              //   padding: EdgeInsets.only(left: 35, top: 350),
              //   height: 50, width: 9,
              //   color: Colors.red,
              // ),
              Container(
                padding: EdgeInsets.only(left: 25, top: 330),
                child: Text(
                  'Malware percentage: 88%',
                  style: TextStyle(
                    color: Colors.deepPurple[200],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Raleway",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 435),
                child: Image.asset(
                  'graphics/img9.jpeg',
                  width: 400,
                  height: 400,
                  fit: BoxFit.fitHeight,
                ),
              )
            ],
          ),
        ),
      );
  }
}


class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreen();
}
  class _SecondScreen extends State<SecondScreen>{
    String dropdownvalue = 'Item 1';

// List of items in our dropdown menu
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];

    bool isLoading=true;
    @override
    // Widget build(BuildContext context) {


      Widget build(BuildContext context) {
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("graphics/img6.jpeg"), fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 35, top: 100),
                  child: Text(
                    'Malware\n    Analysis',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Raleway",
                    ),
                  ),
                ),



                Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.32,
                    // left: 10,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'graphics/img7.jpeg',
                      width: 430,
                      height: 200,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.6,
                      right: 30,
                      left: 30),
                  child: Column(
                    children: [
                      Text("  Select a file from your storage", style: TextStyle(fontSize:18,
                          foreground: Paint()..color=Colors.white)),
                      // TextField(
                      //   decoration: InputDecoration(
                      //       hintText: 'Choose your file to scan',
                      //       border: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(8))),
                      // ),
                      SizedBox(
                        width: 30,
                        height: 15,
                      ),
                      Container(
                        // padding: EdgeInsets.only(left: 20, top: 20),
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.teal[800]),
                          child: Text('Pick a file'),
                          onPressed: () async {
                            final result=await FilePicker.platform.pickFiles();
                          },
                        ),
                      ),



                      // Container(
                      //     padding: EdgeInsets.only(left: 15),
                      //     height: 50,
                      //     width: 150,
                      //     decoration: BoxDecoration(
                      //         color: Colors.teal[900],
                      //         borderRadius: BorderRadius.circular(15),
                      //         border: Border.all(
                      //             color: Colors.blue,
                      //             style: BorderStyle.solid,
                      //             width: 0.80)),
                      //     child: DropdownButton(
                      //       // Initial Value
                      //       value: dropdownvalue,
                      //
                      //       // Down Arrow Icon
                      //       icon: const Icon(Icons.keyboard_arrow_down),
                      //       isExpanded: true,
                      //       // Array list of items
                      //       items: items.map((String items) {
                      //         return DropdownMenuItem(
                      //           value: items,
                      //           child: Text(items),
                      //         );
                      //       }).toList(),
                      //       // After selecting the desired option,it will
                      //       // change button value to selected value
                      //       onChanged: (String? newValue) {
                      //         setState(() {
                      //           dropdownvalue = newValue!;
                      //         });
                      //       },
                      //     )),
                      SizedBox(
                        width: 20,
                        height: 30,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        child: ElevatedButton(
                          child: Text("SCAN FILE"),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red[700],
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(10)),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const NewScreen())),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }

    // class NewScreen extends StatefulWidget {
    // const NewScreen({Key? key}) : super(key: key);
    //
    // @override
    // State<NewScreen> createState() => _NewScreenState();
    // }

    // class _NewScreenState extends State<NewScreen> {
    // TextEditingController textEditingController = TextEditingController();
    //
    // @override
    // @override
    // Widget build(BuildContext context) {
    // return Scaffold(
    // appBar: AppBar(
    // backgroundColor: Colors.cyan,
    // title: const Text('New Screen'),
    // ),
    // body: Container(
    // alignment: Alignment.center,
    // padding: EdgeInsets.all(32),
    // ),
    // );
    // }
    // }
  //
  //     return Container(
  //       decoration: const BoxDecoration(
  //           image: DecorationImage(
  //               image: AssetImage("graphics/img6.jpeg"), fit: BoxFit.cover)),
  //       child: Scaffold(
  //       body: Stack(
  //         children: [
  //           Container(
  //             margin: const EdgeInsets.only(top:75,bottom: 0),
  //             padding: const EdgeInsets.only(left:19,right:10),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Column (
  //                   children: [
  //                     Text("MALWARE ANALYSIS", style: TextStyle(fontSize: 35,
  //                         fontWeight: FontWeight.bold,
  //                         fontFamily: "Roboto",
  //                         foreground: Paint() ..color=Colors.deepOrange ..strokeWidth=3.0
  //                           ..style=PaintingStyle.stroke)),
  //                     Text("New Android Police in Town", style: TextStyle(fontSize: 18,
  //                         // fontWeight: FontWeight.bold,
  //                         fontFamily: "Roboto",
  //                         foreground: Paint() ..color=Colors.deepOrange ..strokeWidth=1.0
  //                           ..style=PaintingStyle.stroke)),
  //                     Image.asset("graphics/img4.jpeg",height:500 ,width:349),
  //                     Text("Select a file from the drop-down list", style: TextStyle(fontSize:14, foreground: Paint() ..color=Colors.lightBlueAccent)),
  //                   ],
  //                 ),
  //               ],
  //             ),),
  //
  //
  //           DropdownButton(
  //             // Initial Value
  //             value: dropdownvalue,
  //
  //             // Down Arrow Icon
  //             icon: const Icon(Icons.keyboard_arrow_down),
  //
  //             // Array list of items
  //             items: items.map((String items) {
  //               return DropdownMenuItem(
  //                 value: items,
  //                 child: Text(items),
  //               );
  //             }).toList(),
  //             // After selecting the desired option,it will
  //             // change button value to selected value
  //             onChanged: (String? newValue) {
  //               setState(() {
  //                 dropdownvalue = newValue!;
  //               });
  //             },
  //           ),
  //
  //           Container(
  //             width: 100,
  //             height: 45,
  //             child: ElevatedButton(
  //               child: Text("SCAN"),
  //               style: ElevatedButton.styleFrom(
  //                 primary: Colors.green,
  //               ),
  //               onPressed: () => Navigator.of(context)
  //                   .push(MaterialPageRoute(builder: (context) => const NewScreen())),
  //             ),
  //           ),
  //
  //         ],
  //       ),
  //     ),
  //     );
  //   }
  // }
