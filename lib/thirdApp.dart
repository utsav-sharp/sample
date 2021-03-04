import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sampleproject/secondApp.dart';
class thirdApp extends StatelessWidget {
  String dashboardId;
  String dashboardTitle;
  String cnt;


  thirdApp({
    Key key,@required this.dashboardId,@required this.dashboardTitle,@required this.cnt
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
       // backgroundColor: Colors.teal,

        //backgroundColor: Color(0xFFaf002a),
        backgroundColor:  Color(0xFF91288d),

        title: Text('View Details'),

        actions: [

        ],
        iconTheme: IconThemeData(
          color: Colors.white,

        ),
       // title: Text(receiverName,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        //centerTitle: true,
      ),
      body: ChatScreen(dashboardId:dashboardId,dashboardTitle:dashboardTitle,cnt:cnt),
    );
  }

}
class ChatScreen extends StatefulWidget {
  String dashboardId;
  String dashboardTitle;
  String cnt;

  ChatScreen({
    Key key,@required this.dashboardId,@required this.dashboardTitle,this.cnt
  }):super(key:key);


  @override
  State createState() => ChatScreenState(dashboardId:dashboardId,dashboardTitle:dashboardTitle,cnt:cnt);
}
class ChatScreenState extends State<ChatScreen> {
  String dashboardId="";
  String dashboardTitle="";
  String cnt="";
String testCode="";
  String testName="";
  String alternativesNames="";
  String keywords="";
  String parameters="";
  String specialty="";
  String intendedUse="";
  String clinicalSignificance="";
  String methodology="";
  String referenceRange="";
  String interpretation="";
  String specimen="";
  String specimenVolume="";
  String transportContainer="";
  String specimenStability="";
  String specimenStability2="";
  String specimenStability20="";
  String collectionInstruction="";
  String preRequisite="";
  String rejectionCriteria="";
  String testSchedule="";
  String tAT="";
  var dashboardIdArray = [];
  var dashboardNameArray=[];
  var cntArray=[];
  var checkArray=[];
  bool ytap;
  bool clinicalSignificanceBool;
  bool alternativesNamesBool;
  bool keywordsBool;
  bool parametersBool;
  bool specialtyBool;
  bool intendedUseBool;
  bool methodologyBool;
  bool referenceRangeBool;
  bool interpretationBool;
  bool specimenBool;
  bool specimenVolumeBool;
  bool transportContainerBool;
  bool specimenStabilityBool;
  bool specimenStability2Bool;
  bool specimenStability20Bool;
  bool collectionInstructionBool;
  bool preRequisiteBool;
  bool rejectionCriteriaBool;
  bool testScheduleBool;
  bool tATBool;
  ChatScreenState({
    Key key,@required this.dashboardId,@required this.dashboardTitle,@required this.cnt
  });
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("dashboardId==>${dashboardId}");
    print("dashboardTitle==>${dashboardTitle}");
    print("cnt==>${cnt}");
  // getData();
   fetchDataFromServer(context,cnt);
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Container(

            margin: EdgeInsets.fromLTRB(5, 5, 5, 0),

            child: IntrinsicHeight(
              child:Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(

                    child:Container(

                      height:50,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF91288d),
                          border: Border.all(
                              color: Color(0xFF91288d),
                              width: 0.2
                          )
                      ),
                      child:Padding(padding: EdgeInsets.all(5.0),
                        child: Container(child: Align(
                          alignment: Alignment.center,
                          child: Text("Particular",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                        )),
                      ),
                    ),
                    flex: 2,
                  ),
                  Expanded(

                    child:Container(
                      height:50,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF91288d),
                          border: Border.all(
                              color: Color(0xFF91288d),
                              width: 0.2
                          )
                      ),
                      child:Padding(padding: EdgeInsets.all(5.0),
                        child: Container(child: Align(
                          alignment: Alignment.center,
                          child: Text("Information",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                        )),
                      ),
                    ),
                    flex: 2,
                  ),

                ],
              ),
            ),),

          Expanded(
            child:SingleChildScrollView(

              child: Column (
                mainAxisAlignment: MainAxisAlignment.start,


                children: [
                  IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [



                                            Text("${testCode}"),

                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Test Code",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text("${testName}"),

                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Test Name",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(alternativesNamesBool==true){
                                                    alternativesNamesBool=false;
                                                  }
                                                  else{
                                                    alternativesNamesBool=true;
                                                  }

                                                });

                                              },
                                              child: alternativesNamesBool==true?Center(child:Text(alternativesNames,
                                              )):
                                              Center(
                                                child: Text(alternativesNames,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),

                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Alternative Names",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                   IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                             GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(keywordsBool==true){
                                                    keywordsBool=false;
                                                  }
                                                  else{
                                                    keywordsBool=true;
                                                  }

                                                });

                                              },
                                              child: keywordsBool==true?Center(child:Text(keywords,
                                              )):
                                              Center(
                                                child: Text(keywords,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Keywords",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                 IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(parametersBool==true){
                                                    parametersBool=false;
                                                  }
                                                  else{
                                                    parametersBool=true;
                                                  }

                                                });

                                              },
                                              child: parametersBool==true?Center(child:Text(parameters,
                                              )):
                                              Center(
                                                child: Text(parameters,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Parameters Included in Panel/Profile",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                 IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(specialtyBool==true){
                                                    specialtyBool=false;
                                                  }
                                                  else{
                                                    specialtyBool=true;
                                                  }

                                                });

                                              },
                                              child: specialtyBool==true?Center(child:Text(specialty,
                                              )):
                                              Center(
                                                child: Text(specialty,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Specialty",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                  IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(intendedUseBool==true){
                                                    intendedUseBool=false;
                                                  }
                                                  else{
                                                    intendedUseBool=true;
                                                  }

                                                });

                                              },
                                              child: intendedUseBool==true?Center(child:Text(intendedUse,
                                              )):
                                              Center(
                                                child: Text(intendedUse,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),

                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Intended Use",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                  IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(clinicalSignificanceBool==true){
                                                    clinicalSignificanceBool=false;
                                                  }
                                                  else{
                                                    clinicalSignificanceBool=true;
                                                  }

                                                });

                                              },
                                              child: clinicalSignificanceBool==true?Center(child:Text(clinicalSignificance,
                                              )):
                                              Center(
                                                child: Text(clinicalSignificance,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),

                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Clinical Significance",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                  IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(methodologyBool==true){
                                                    methodologyBool=false;
                                                  }
                                                  else{
                                                    methodologyBool=true;
                                                  }

                                                });

                                              },
                                              child: methodologyBool==true?Center(child:Text(methodology,
                                              )):
                                              Center(
                                                child: Text(methodology,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Methodology",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                  IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(referenceRangeBool==true){
                                                    referenceRangeBool=false;
                                                  }
                                                  else{
                                                    referenceRangeBool=true;
                                                  }

                                                });

                                              },
                                              child: referenceRangeBool==true?Center(child:Text(referenceRange,
                                              )):
                                              Center(
                                                child: Text(referenceRange,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Reference Range",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                  IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(intendedUseBool==true){
                                                    intendedUseBool=false;
                                                  }
                                                  else{
                                                    intendedUseBool=true;
                                                  }

                                                });

                                              },
                                              child: intendedUseBool==true?Center(child:Text(interpretation,
                                              )):
                                              Center(
                                                child: Text(interpretation,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Interpretation",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                  IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(specialtyBool==true){
                                                    specialtyBool=false;
                                                  }
                                                  else{
                                                    specialtyBool=true;
                                                  }

                                                });

                                              },
                                              child: specialtyBool==true?Center(child:Text(specimen,
                                              )):
                                              Center(
                                                child: Text(specimen,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Specimen",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                  IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(specimenVolumeBool==true){
                                                    specimenVolumeBool=false;
                                                  }
                                                  else{
                                                    specimenVolumeBool=true;
                                                  }

                                                });

                                              },
                                              child: specimenVolumeBool==true?Center(child:Text(specimenVolume,
                                              )):
                                              Center(
                                                child: Text(specimenVolume,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Specimen Volume",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                 IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(transportContainerBool==true){
                                                    transportContainerBool=false;
                                                  }
                                                  else{
                                                    transportContainerBool=true;
                                                  }

                                                });

                                              },
                                              child: transportContainerBool==true?Center(child:Text(transportContainer,
                                              )):
                                              Center(
                                                child: Text(transportContainer,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Transport Container",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                  IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(specimenStabilityBool==true){
                                                    specimenStabilityBool=false;
                                                  }
                                                  else{
                                                    specimenStabilityBool=true;
                                                  }

                                                });

                                              },
                                              child: specimenStabilityBool==true?Center(child:Text(specimenStability,
                                              )):
                                              Center(
                                                child: Text(specimenStability,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Specimen Stability (Ambient)",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                  IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(specimenStability2Bool==true){
                                                    specimenStability2Bool=false;
                                                  }
                                                  else{
                                                    specimenStability2Bool=true;
                                                  }

                                                });

                                              },
                                              child: specimenStability2Bool==true?Center(child:Text(specimenStability2,
                                              )):
                                              Center(
                                                child: Text(specimenStability2,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Specimen Stability (2-8°C)",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                  IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(specimenStability20Bool==true){
                                                    specimenStability20Bool=false;
                                                  }
                                                  else{
                                                    specimenStability20Bool=true;
                                                  }

                                                });

                                              },
                                              child: specimenStability20Bool==true?Center(child:Text(specimenStability20,
                                              )):
                                              Center(
                                                child: Text(specimenStability20,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Specimen Stability (-20°C)",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                 IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(collectionInstructionBool==true){
                                                    collectionInstructionBool=false;
                                                  }
                                                  else{
                                                    collectionInstructionBool=true;
                                                  }

                                                });

                                              },
                                              child: collectionInstructionBool==true?Center(child:Text(collectionInstruction,
                                              )):
                                              Center(
                                                child: Text(collectionInstruction,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Collection Instruction",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                  IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(preRequisiteBool==true){
                                                    preRequisiteBool=false;
                                                  }
                                                  else{
                                                    preRequisiteBool=true;
                                                  }

                                                });

                                              },
                                              child: preRequisiteBool==true?Center(child:Text(preRequisite,
                                              )):
                                              Center(
                                                child: Text(preRequisite,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Rejection Criteria",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
               IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(rejectionCriteriaBool==true){
                                                    rejectionCriteriaBool=false;
                                                  }
                                                  else{
                                                    rejectionCriteriaBool=true;
                                                  }

                                                });

                                              },
                                              child: rejectionCriteriaBool==true?Center(child:Text(rejectionCriteria,
                                              )):
                                              Center(
                                                child: Text(rejectionCriteria,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Rejection Criteria",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                 IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if(testScheduleBool==true){
                                                    testScheduleBool=false;
                                                  }
                                                  else{
                                                    testScheduleBool=true;
                                                  }

                                                });

                                              },
                                              child: testScheduleBool==true?Center(child:Text(testSchedule,
                                              )):
                                              Center(
                                                child: Text(testSchedule,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("Test Schedule",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),
                  IntrinsicHeight(
                    child:
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [

                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [

                                            GestureDetector(
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
                                              child: tATBool==true?Center(child:Text(tAT,
                                              )):
                                              Center(
                                                child: Text(tAT,
                                                  maxLines: 4,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(

                            child:Container(
                              //  height:70,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white54,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 0.2
                                  )
                              ),
                              child:Padding(padding: EdgeInsets.all(5.0),
                                child:Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child:Container(child: Center(
                                        child:Text("TAT",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ),)
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                        ]
                    ),
                  ),

                ],
              ),
            ),

          ),









          Container(
            margin: EdgeInsets.fromLTRB(100.0, 40, 100.0, 0),

            width: 300,height: 40,
            child:RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Color(0xFF91288d),
                    )),
                color: Color(0xFF91288d),
                elevation: 10.0,
                child: Text("Close",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0,)),
                onPressed: () {

                  Navigator.of(context).pop();
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => secondApp()));


                }

            ),
          ),
        ],
      ),
    );
  }

  fetchDataFromServer(BuildContext context,String serachText) async {
    print("serach Text ${serachText.toString()}");
    var body = {
      'key': "edos",
      'OperationName': "get_test_data",
      'OperationType': "G",
      '@testcode': serachText.trim(),
    };


    var headers = {
      'content-type': 'application/json'

    };
    try {
      var response = await http.post("https://webpush.sharpitech.in//GenericWebAPI/GenericAPI",headers:headers,body: json.encode(body));
      print(response.statusCode);
      if (response.statusCode == 200) {

        //print("is empty body ${response.body}");

        if(response.body.length==2){
          //  _scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text("Check Username and Password ",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),backgroundColor: Colors.greenAccent,));
        }
        else{
          //mainDataList.clear();

          // print("json : ${json.decode(response.body)}");
          //return Album.fromJson(json.decode(response.body));
          var myMap = json.decode(response.body);
          List list = json.decode(response.body);
         // print("body123 : ${json.decode(response.body)}");
        //  Object.keys(json.decode(response.body));



         // print(Object.keys(json.decode(response.body)));

          if (response.body.contains("Test Code")) {
            var lst = new List(list.length);
           // json.decode(response.body).keys.forEach((key){ print("ram bharavase ${key}"); });
            for (int i = 0; i < list.length; i++) {
               testCode = list[i]['Test Code'];



               testName = list[i]['Test Name'];
               alternativesNames = list[i]['Alternative Names'];
               keywords = list[i]['Keywords'];
               parameters = list[i]['Parameters Included in Panel/Profile'];
               specialty = list[i]['Specialty'];
               intendedUse = list[i]['Intended Use'];
               clinicalSignificance = list[i]['Clinical Significance'];
               methodology = list[i]['Methodology'];
               referenceRange = list[i]['Reference Range'];
               interpretation = list[i]['Interpretation'];
               specimen = list[i]['Specimen'];
               specimenVolume = list[i]['Specimen Volume'];
               transportContainer = list[i]['Transport Container'];
               specimenStability = list[i]['Specimen Stability (Ambient)'];
               specimenStability2 = list[i]['Specimen Stability (2-8°C)'];
               specimenStability20 = list[i]['Specimen Stability (-20°C)'];
               collectionInstruction = list[i]['Collection Instruction'];
               preRequisite = list[i]['Any Other Pre-Requisite'];
               rejectionCriteria = list[i]['Rejection Criteria'];
               testSchedule = list[i]['Test Schedule'];
               tAT = list[i]['TAT'];
if(preRequisite==null){
  preRequisite="-";
}

             // Object.keys(dashboard_id);
              print("dashboardId123==>${preRequisite}");
            }
          }
/*
          print("dashboard id String ${dashboardIdArray.toString}");
          print("dashboard name String ${dashboardNameArray.toString()}");
          print("mainDataList name String ${mainDataList.toString()}");
          print("dashboard id Size ${dashboardIdArray.length}");
          print("dashboard name Size ${dashboardNameArray.length}");
          print("mainDataList name Size ${mainDataList.length}");*/

          // print("myMap String ${myMap.toString()}");
          //  var dashboard_title = myMap[0]['Dashboard_Title'];
          // print('${myName}');
          // print("Dashboard_Title ${dashboard_title}");

          setState(() {

          });
        }

      } else{
        print("final error : jaym " +response.body);
      }
    } catch (error) {
      print("error : ${error}");
      print("error : ${error.toString()}");
    }
  }

  getData() async{
    print("i  AM IN getData");

    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String> dashboardIdArray123=prefs.getStringList("dashboardIdArray123")??  "";
print("getData dashboardIdArray123==>${dashboardIdArray123.length}");


  }
}