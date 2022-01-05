// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, curly_braces_in_flow_control_structures, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:football_team/Common/Validation.dart';
import 'package:football_team/Common/WebService.dart';
import 'package:football_team/DataModels/BatchModel.dart';
import 'package:football_team/DataModels/StudentPro.dart';
import 'package:intl/intl.dart';

class Batches extends StatefulWidget {
  late String Batch;

  @override
  _BatchesState createState() => _BatchesState();
}

class _BatchesState extends State<Batches> {
  TextEditingController BatchController =  TextEditingController();
  WebserviceHelper web = WebserviceHelper();

  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
  BatchDataModel batches = BatchDataModel.empty();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Batches'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
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
                            batches.Batch = value!;
                          },
                          controller: BatchController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Batch Name',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.batch_prediction_rounded,
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
]
        )
        ),

              )
        ]
    )
    )
    ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.blue,

        onPressed: () async {
          if (_FormKey.currentState!.validate()) {}

          batches.Batch=BatchController.text;

          print('Data : ${batches.toJson()}');
          await web.BatchRecord(model: batches);
        },
        child: Icon(Icons.check_outlined),
        backgroundColor: Colors.blue,
      ),

    );
  }

}

