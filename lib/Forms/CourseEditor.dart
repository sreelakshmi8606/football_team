// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, curly_braces_in_flow_control_structures, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:football_team/Common/Validation.dart';
import 'package:football_team/Common/WebService.dart';
import 'package:football_team/DataModels/BatchModel.dart';
import 'package:football_team/DataModels/CourseModel.dart';
import 'package:football_team/DataModels/SessionDataModel.dart';
import 'package:football_team/DataModels/StudentPro.dart';
import 'package:football_team/Forms/CourseSearchDeligate.dart';
import 'package:intl/intl.dart';

class CourseEditor extends StatefulWidget {
  late String Course;
  late List<SessionDataModel> sessions;

  @override
  _CourseEditorState createState() => _CourseEditorState();
}

class _CourseEditorState extends State<CourseEditor> {
  TextEditingController CourseController = TextEditingController();
  WebserviceHelper web = WebserviceHelper();

  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
  CourseDataModel course = CourseDataModel.empty();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
          child: Container(
              child: Stack(children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
              key: _FormKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextFormField(
                        validator: (value) {
                          return Validate.txtValidator(value!);
                        },
                        onSaved: (String? value) {
                          course.Course = value!;
                        },
                        controller: CourseController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Course Name',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black38),
                          icon: Icon(
                            Icons.book,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ])),
        )
      ]))),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.blue,
        onPressed: () async {
          SessionDataModel session = await showSearch(
            context: context,
            delegate: CustomSearchDelegate(),
          );

        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
