// ignore_for_file: file_names, must_be_immutable, prefer_const_constructors, unnecessary_new, avoid_unnecessary_containers, avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:football_team/Common/Validation.dart';
import 'package:football_team/Common/WebService.dart';
import 'package:football_team/Common/kboxdecor.dart';
import 'package:football_team/DataModels/SessionDataModel.dart';


class SessionEditor extends StatefulWidget {
  late String Session;
  late int duration;
  @override
  _SessionEditorState createState() => _SessionEditorState();
}

class _SessionEditorState extends State<SessionEditor> {
  late String Session;
  late int duration;
  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
  SessionDataModel session = SessionDataModel.empty();
  TextEditingController sessionnamecontroller = TextEditingController();
  TextEditingController durationcontroller = TextEditingController();
  WebserviceHelper web = WebserviceHelper();
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Session'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              // Positioned(
              //   top: -MediaQuery.of(context).size.height * .15,
              //   right: -MediaQuery.of(context).size.width * .4,
              // child: BezierContainer(),
              // ),

              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Form(
                  key: _FormKey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // SizedBox(height: height * .2),
                        SizedBox(height: 50),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                          decoration: kBoxdecorationStyle,
                          child: TextFormField(
                            validator: (value) {
                              return Validate.txtValidator(value!);
                            },
                            onSaved: (String? value) {
                              session.Session = value!;
                            },
                            controller: sessionnamecontroller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Session Name',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                              // icon: Icon(
                              //   Icons.location_on_sharp,
                              //   color: Colors.black38,
                              // ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                          decoration: kBoxdecorationStyle,
                          child: TextFormField(
                            validator: (value) {
                              return Validate.txtValidator(value!);
                            },
                            onSaved: (String? value) {
                              session.duration = value! as int;
                            },
                            controller: durationcontroller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Duration',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                              // icon: Icon(
                              //   Icons.location_on_sharp,
                              //   color: Colors.black38,
                              // ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.lightGreen,
        onPressed: () async {
          if (_FormKey.currentState!.validate()) {}
          session.Session = sessionnamecontroller.text;
          session.duration= int.parse(durationcontroller.text);
          print('Data : ${session.toJson()}');
          await web.SessionRecord(model: session);
        },
        child: Icon(Icons.check_outlined),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
