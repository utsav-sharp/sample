import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'thirdApp.dart';
import 'package:shared_preferences/shared_preferences.dart';
class secondApp extends StatelessWidget {
  //const PrimaryColor = const Color(0xFF151026);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xFF91288d),
                title: Center(
                  child: Text('E-DOS'),
                ),
            ),
            body: Center(
                child: ListSearch()
            )
        )
    );
  }
}

class ListSearch extends StatefulWidget {
  ListSearchState createState() => ListSearchState();
}

class ListSearchState extends State<ListSearch> {

  List<String> dashboardIdArray123 = [];

  var testIdArray = [];
  var testNameArray=[];
  var specialityArray = [];
  var clienicalSignificanseArray = [];
  bool _visible = false;
  bool tATBool;
  TextEditingController _textController = TextEditingController();


  /* static List<String> salaryArrayList = [
    "1000",
    "2000",
    "3000",
    "4000",


    "5000",
    "2000",
    "3000",
    "4000",
    "5000",
    "1000",
    "2000",
    "3000",
    "1000",
    "2000",
    "3000",
  ];
  static List<String> designationArrayList = [
    "Mobile App Developer",
    "Android App Developer",
    "Ios App Developer",
    "Flutter App Developer",
    "Flutter Android App Developer",
    "Flutter Ios App Developer",
    "Flutter Web App Developer",
    "Software App Developer",
    "Html App Developer",
    "Mobile App Developer",
    "Android App Developer",
    "Ios App Developer",
    "Flutter Android App Developer",
    "Flutter Ios App Developer",
    "Flutter Web App Developer",
  ];
  static List<String> mainDataList = [
    "Utsav Pajave",
    "Anushree Pajave",
    "Advay Gurav",
    "Ayudra Gurav",
    "Ujwala Gurav",
    "Pratibha Pajave",
    "Rajaram Pajave",
    "Hemant Gurav",
    "Rusha Pajave",
    "Utsav Pajave",
    "Anushree Pajave",
    "Advay Gurav",
    "Pratibha Pajave",
    "Rajaram Pajave",
    "Hemant Gurav",
  ];
  static List<String> mainDataList1 = [
       "Apricot",
    "Apple",
    "Blackberry",
    "Banana",
    "Date",
    "Coconut",
    "Gooseberry",
    "Fig",
    "Lemon",
    "Grapes",
    "Mango",
    "Litchi",
    "Papaya",
    "Orange",
    "Pineapple",
    "Peach",
    "Starfruit",
        "Pomegranate",
  ];
*/
  static List<String> mainDataList1 = [];
  static List<String> mainDataList = [];
  var dashboardIdArray = [];
  var dashboardNameArray=[];
  var cntArray = [];
  var checkArray = [];
  bool ytap;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("I am init state");
/*setState(() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  dashboardIdArray=prefs.getStringList("dashboadId")??  "";
  dashboardNameArray=prefs.getStringList("dashboardNameArray")??  "";
  cntArray=prefs.getStringList("cntArray")??  "";
  checkArray=prefs.getStringList("checkArray")??  "";


  print("initState dashboardIdArray length ${dashboardIdArray.length}");
  print("initState dashboardNameArray length ${dashboardNameArray.length}");
  print("initState cntArray length ${cntArray.length}");
  print("initState checkArray length ${checkArray.length}");

});*/
    //  removeChatBadge();
  }

  // Copy Main List into New List.
  List<String> newDataList = List.from(mainDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    print("dashboard Id==>${dashboardIdArray.length}");

    if (dashboardIdArray.length == 0) {
      print("i  AM IN dashboard length 0");
    //  getData();
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
//  margin: EdgeInsets.all(10),
            //width: double.infinity,
            width: 350,
            height: 100,
            child: Image.network(
              // "https://images.unsplash.com/photo-1547721064-da6cfb341d50?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
              "https://redcause.suburbandiagnostics.com/Content/images/logo.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          /*    new Image.asset(
            'images/logo1.png',
          ),*/
          Container(
            //margin: EdgeInsets.all(5.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: Color(0xFF91288d), width: 1.0)
                      ),
                      height: 40,
                      margin: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: TextField(

                        controller: _textController,
                        decoration: InputDecoration(
                          hintText: 'Search Here...',
                          border: InputBorder.none,
                          /*     enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF91288e), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF91288e), width: 2.0),
                          ),*/

                        ),
                        //  onChanged: onItemChanged,
                      )
                  ),

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  height: 40,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(

                        //borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Color(0xFF91288d),
                          )),
                      color: Color(0xFF91288d),
                      //elevation: 10.0,

                      //child: Text("Serach",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0,)),
                      child: Icon(
                        Icons.search, color: Colors.white, size: 30.0,),
                      onPressed: () {
                        fetchDataFromServer(context, _textController.text);
                      }

                  ),
                ),
              ],
            )
            /**/,
          ),

          /*    Container(
            margin: EdgeInsets.fromLTRB(100.0, 0, 100.0, 0),

            width: 300,height: 40,
            child:RaisedButton(
                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Color(0xFF91288e),
                    )),
                color: Color(0xFF91288e),
                elevation: 10.0,

               //child: Text("Serach",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0,)),
                child: Icon(Icons.search,color: Colors.white,size: 30.0,),
                onPressed: () {
                  fetchDataFromServer(context,_textController.text);

                }

            ),
          ),*/
          SizedBox(
            height: 10,
          ),


          Visibility(
            visible: _visible,
            child: Container(

              //margin: EdgeInsets.fromLTRB(5, 0, 5, 0),

              child: IntrinsicHeight(
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(

                      child: Container(

                        height: 50,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF91288d),
                            border: Border.all(
                                color: Color(0xFF91288d),
                                width: 0.2
                            )
                        ),
                        child: Padding(padding: EdgeInsets.all(5.0),
                          child: Container(child: Align(
                            alignment: Alignment.center,
                            child: Text("Test", style: TextStyle(fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),),
                          )),
                        ),
                      ),
                      flex: 4,
                    ),
                    Expanded(

                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF91288d),
                            border: Border.all(
                                color: Color(0xFF91288d),
                                width: 0.2
                            )
                        ),
                        child: Padding(padding: EdgeInsets.all(5.0),
                          child: Container(child: Align(
                            alignment: Alignment.center,
                            child: Text("Description", style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),),
                          )),
                        ),
                      ),
                      flex: 4,
                    ),
                    Expanded(

                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF91288d),
                            border: Border.all(
                                color: Color(0xFF91288d),
                                width: 0.2
                            )
                        ),
                        child: Padding(padding: EdgeInsets.all(5.0),
                          child: Container(child: Align(
                            alignment: Alignment.center,
                            child: Text("Specialiastion", style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),),
                          )),
                        ),
                      ),
                      flex: 4,
                    ),
                    Expanded(

                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF91288d),
                            border: Border.all(
                                color: Color(0xFF91288d),
                                width: 0.2
                            )
                        ),
                        child: Padding(padding: EdgeInsets.all(5.0),
                          child: Container(child: Align(
                            alignment: Alignment.center,
                            child: Text("Info", style: TextStyle(fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),),
                          )),
                        ),
                      ),
                      flex: 4,
                    ),
                  ],
                ),
              ),),
          ),

          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: new ListView.builder(
                  itemCount: mainDataList.length,
                  shrinkWrap: true,
                  // padding: EdgeInsets.all(10.0),
                  itemBuilder: (context, index) {
                    return IntrinsicHeight(


                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child: Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child: Padding(padding: EdgeInsets.all(5.0),
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child: Container(child:
                                    mainDataList[index].contains(
                                        _textController.text) ?
                                    Center(
                                      child: RichText(
                                        text: TextSpan(
                                          children: highlightOccurrences(
                                              mainDataList[index],
                                              _textController.text),
                                          style: TextStyle(
                                              color: Colors.black),
                                        ),
                                      ),
                                      //child:Text(mainDataList[index],style: TextStyle(color: Colors.blueAccent),)
                                    ) : Center(
                                        child: Text(mainDataList[index])
                                    )
                                    )
                                ),
                              ),
                            ),
                            flex: 4,
                          ),
                          Expanded(
                            child: Container(
                              //height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child: Padding(padding: EdgeInsets.all(5.0),
                                  child: Container(
                                    child:GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if(ytap==true){
                                            ytap=false;
                                          }
                                          else{
                                            ytap=true;
                                          }

                                        });

                                      },
                                      child: ytap==true?Center(child:Text(dashboardIdArray[index].toString(),
                                      )):
                                      Center(
                                        child: Text(dashboardIdArray[index].toString(),
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),


                                    ),


                                    /*        child: Center(
                                        child: Text(dashboardIdArray[index].toString(),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            )
                                    ),*/
                                  )
                              ),
                            ),
                            flex: 4,
                          ),
                          Expanded(
                            child: Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child: Padding(padding: EdgeInsets.all(5.0),
                                  child: Container(child:GestureDetector(
    onTap: () {
                    setState(() {
                    if(tATBool==true){
                    tATBool=false;
                    }
                    else{
                    tATBool=true;
                    }

                    });
    },
                    child: tATBool==true?   Center(
                        child: Text(cntArray[index].toString())
                    ):
                    Center(
                    child: Text(cntArray[index].toString(),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    ),
                    ),

                    )



                              ),
                            ),
                            ),
                            flex: 4,
                          ),
                          Expanded(
                            child: Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child: Padding(padding: EdgeInsets.all(5.0),
                                  child: Container(child: Center(
                                    child: GestureDetector(
                                        onTap: () {
                                          print(
                                              "gesture Detector index ${index}");
                                          print(
                                              "gesture Detector main ${mainDataList[index]}");
                                          print(
                                              "gesture Detector designation ${dashboardIdArray[index]}");
                                          print(
                                              "gesture Detector designation ${dashboardIdArray[index]}");
                                          print(
                                              "gesture Detector salary ${dashboardNameArray[index]}");
                                          print(
                                              "gesture Detector salary ${cntArray[index]}");
                                          print(
                                              "gesture Detector checkArray ${checkArray[index]}");


                                          String name = mainDataList[index]
                                              .toString();
                                          String designation = dashboardIdArray[index]
                                              .toString();
                                          String salary = cntArray[index]
                                              .toString();
                                          String testCode=checkArray[index];
                                          print(checkArray.toString());




                                          dataStored();

                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      thirdApp(
                                                          dashboardId: name
                                                              .toString(),
                                                          dashboardTitle: designation,
                                                          cnt: testCode
                                                              .toString())));
                                        },
                                        child:
                                        Text("...", style: TextStyle(
                                            decoration: TextDecoration
                                                .underline,
                                            color: Colors.blueAccent,
                                            fontSize: 30),)
                                    ),

                                  ),)
                              ),
                            ),
                            flex: 4,
                          ),

                        ],
                      ),
                    );
                  }
              ),
            ),
          ),












        ],
      ),
    );
  }

  fetchDataFromServer(BuildContext context, String serachText) async {
    print("serach Text ${serachText.toString()}");



    mainDataList.clear();
    newDataList.clear();
    dashboardIdArray.clear();
    dashboardNameArray.clear();
    cntArray.clear();
    checkArray.clear();
    dashboardIdArray123.clear();
/*    var body = {
      'key': "icms",
      'OperationName': "getApprovalCount",
      'OperationType': "G",
      '@LoginID': 4,
    };*/
    var body = {

    'key': "edos",
    'OperationName': "find_test",
    'OperationType': "G",
    '@searchword': _textController.text,
    };

    var headers = {
      'content-type': 'application/json'
    };
    try {
      var response = await http.post(
          "https://webpush.sharpitech.in//GenericWebAPI/GenericAPI",
          headers: headers, body: json.encode(body));
      print(response.statusCode);
      if (response.statusCode == 200) {
        //print("is empty body ${response.body}");

        if (response.body.length == 2) {
          //  _scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text("Check Username and Password ",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),backgroundColor: Colors.greenAccent,));
        }
        else {
          print("body : ${response.body}");
          // print("json : ${json.decode(response.body)}");
          //return Album.fromJson(json.decode(response.body));
          var myMap = json.decode(response.body);
          List list = json.decode(response.body);

          if (response.body.contains("Test Code")) {
            var lst = new List(list.length);

            for (int i = 0; i < list.length; i++) {
              var dashboard_id = list[i]['Clinical Significance'];
              var dashboard_name = list[i]['Test name'];
              var cnt = list[i]['Specialty'];
              var test_Code = list[i]['Test Code'];
            //  var clinical_Significance = list[i]['Clinical Significance'];
              //print("idValuee ${idValue}");
              dashboardIdArray.add(dashboard_id);
              dashboardNameArray.add(dashboard_name);
              cntArray.add(cnt);
              mainDataList.add(dashboard_name);
              checkArray.add(test_Code);
              dashboardIdArray123.add(dashboard_name);
            }
          }
          print("dashboard id String ${dashboardIdArray.toString}");
          print("dashboard name String ${dashboardNameArray.toString()}");
          print("mainDataList name String ${mainDataList.toString()}");
          print("dashboard id Size ${dashboardIdArray.length}");
          print("dashboard name Size ${dashboardNameArray.length}");
          print("mainDataList name Size ${mainDataList.length}");
          print("mainDataList name dashboardIdArray123 ${dashboardIdArray123.length}");
          newDataList = mainDataList;
          // print("myMap String ${myMap.toString()}");
          //  var dashboard_title = myMap[0]['Dashboard_Title'];
          // print('${myName}');
          // print("Dashboard_Title ${dashboard_title}");

          setState(() {
            if (dashboardIdArray.length > 0) {
              _visible = true;
            }
          });
        }
      } else {
        print("final error : jaym " + response.body);
      }
    } catch (error) {
      print("error : ${error}");
      print("error : ${error.toString()}");
    }
  }

  List<TextSpan> highlightOccurrences(String source, String query) {
    if (query == null || query.isEmpty ||
        !source.toLowerCase().contains(query.toLowerCase())) {
      return [ TextSpan(text: source)];
    }
    final matches = query.toLowerCase().allMatches(source.toLowerCase());

    int lastMatchEnd = 0;

    final List<TextSpan> children = [];
    for (var i = 0; i < matches.length; i++) {
      final match = matches.elementAt(i);

      if (match.start != lastMatchEnd) {
        children.add(TextSpan(
          text: source.substring(lastMatchEnd, match.start),
        ));
      }

      children.add(TextSpan(
        text: source.substring(match.start, match.end),
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow),
      ));

      if (i == matches.length - 1 && match.end != source.length) {
        children.add(TextSpan(
          text: source.substring(match.end, source.length),
        ));
      }

      lastMatchEnd = match.end;
    }
    return children;
  }

  dataStored() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setStringList('dashboardIdArray123', dashboardIdArray123);
/*    SharedPreferences prefs = await SharedPreferences.getInstance();


    await prefs.setStringList('dashboardIdArray', dashboardIdArray);
    await prefs.setStringList('dashboardNameArray', dashboardNameArray);
    await prefs.setStringList('cntArray', cntArray);
    await prefs.setStringList('checkArray', checkArray);
  }*/


  }
  getData() async {
    print("i  AM IN getData");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var dashboardIdArray123 = prefs.getString("dashboardIdArray123") ?? "";
  /*  dashboardNameArray = prefs.getStringList("dashboardNameArray") ?? "";
    cntArray = prefs.getStringList("cntArray") ?? "";
    checkArray = prefs.getStringList("checkArray") ?? "";*/


    print("initState dashboardIdArray length getData${dashboardIdArray123.toString()}");
  /*  print("initState dashboardNameArray length getData ${dashboardNameArray.length}");
    print("initState cntArray length getData ${cntArray.length}");
    print("initState checkArray length ${checkArray.length}");*/
  }
}