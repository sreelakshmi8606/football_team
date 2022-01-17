// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, curly_braces_in_flow_control_structures, use_key_in_widget_constructors, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'package:football_team/Common/Validation.dart';
import 'package:football_team/Common/WebService.dart';
import 'package:football_team/DataModels/AttributeModel.dart';
import 'package:football_team/DataModels/SessionDataModel.dart';
import 'package:football_team/Forms/CourseSearchDeligate.dart';

class AttributeEditor extends StatefulWidget {
  late String Name;
  late String Type;
  late int Value;
  @override
  _AttributeEditorState createState() => _AttributeEditorState();
}

class _AttributeEditorState extends State<AttributeEditor> {
  TextEditingController NameController = TextEditingController();
  TextEditingController TypeController = TextEditingController();
  TextEditingController ValueController = TextEditingController();
  WebserviceHelper web = WebserviceHelper();

  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
  AttributeDataModel attribute = AttributeDataModel.empty();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attributes'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
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
                                      attribute.Name = value!;
                                    },
                                    controller: NameController,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Attribute Name',
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),
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
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: TextFormField(
                                    validator: (value) {
                                      return Validate.txtValidator(value!);
                                    },
                                    onSaved: (String? value) {
                                      attribute.Type = value!;
                                    },
                                    controller: TypeController,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Attribute Type',
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),
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
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: TextFormField(
                                    validator: (value) {
                                      return Validate.txtValidator(value!);
                                    },
                                    onSaved: (String? value) {
                                      attribute.Value = value! as int ;
                                    },
                                    controller: ValueController,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Value',
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ])),
                    )
                  ]))),
          // BlocBuilder<SessionlistCubit, SessionlistState>(
          //   builder: (context, state) {
          //     if (state is Fetching) {
          //       return Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     } else if (state is FetchError) {
          //       return Center(
          //         child: Text(state.msg),
          //       );
          //     } else if (state is FetchCompleted) {
          //       final List data = state.data;
          //       return Container(
          //         color: Theme.of(context).secondaryHeaderColor,
          //         child: Column(
          //           children: [
          //
          //             Flexible(
          //               flex: 2,
          //               child: Container(
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.start,
          //                   children: [
          //
          //                     Text('Session'),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //
          //             Flexible(
          //               flex: 3,
          //               child: Container(
          //                 color: Colors.teal,
          //                 child: Padding(
          //                   padding: const EdgeInsets.all(8.0),
          //                   child: TextFormField(
          //                     decoration: InputDecoration(hintText: 'Narration'),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       );
          //     } else
          //       return Center(
          //         child: Text('Undefined State'),
          //       );
          //   },
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.blue,
        onPressed: () async {
          SessionDataModel? Session = await showSearch(
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
