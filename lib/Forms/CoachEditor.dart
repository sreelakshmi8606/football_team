// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:football_team/Common/Validation.dart';
import 'package:football_team/Common/WebService.dart';
import 'package:football_team/Common/kboxdecor.dart';
import 'package:football_team/DataModels/CoachModel.dart';

class Coach extends StatefulWidget {
  late String FirstName;
  late String LastName;
  late int Age;
  late String Gender;
  late int PhoneNumber;
  late String Email;
  late String Address;
  late String Qualification;
  late String Experience;
  late String Achievements;
  late String BloodGroup;
  late int SalaryperHour;
  @override
  _CoachState createState() => _CoachState();
}

class _CoachState extends State<Coach> {
  late String FirstName;
  late String LastName;
  late int Age;
  late String Gender;
  late int PhoneNumber;
  late String Email;
  late String Address;
  late String Qualification;
  late String Experience;
  late String Achievements;
  late String BloodGroup;
  late int SalaryperHour;
  String? gender;
  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
  CoachDataModel coach = CoachDataModel.empty();
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnameInputcontroller = TextEditingController();
  TextEditingController ageInputcontroller = TextEditingController();
  TextEditingController genderInputcontroller = TextEditingController();
  TextEditingController phoneInputcontroller = TextEditingController();
  TextEditingController emailInputcontroller = TextEditingController();
  TextEditingController addressInputcontroller = TextEditingController();
  TextEditingController qualificationInputcontroller = TextEditingController();
  TextEditingController experienceInputcontroller = TextEditingController();
  TextEditingController achievementInputcontroller = TextEditingController();
  TextEditingController bloodInputcontroller = TextEditingController();
  TextEditingController salaryInputcontroller = TextEditingController();
  WebserviceHelper web = WebserviceHelper();
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Coach'),
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
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            validator: (value) {
                              return Validate.txtValidator(value!);
                            },
                            onSaved: (String? value) {
                              coach.FirstName = value!;
                            },
                            controller: firstnamecontroller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'First Name',
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
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            validator: (value) {
                              return Validate.txtValidator(value!);
                            },
                            onSaved: (String? value) {
                              coach.LastName = value!;
                            },
                            controller: ageInputcontroller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Last Name',
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
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            validator: (value) {
                              return Validate.txtValidator(value!);
                            },
                            onSaved: (String? value) {
                              coach.Age = value! as int;
                            },
                            controller: ageInputcontroller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Age',
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
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: DropdownButtonFormField(
                            value: gender,
                            onChanged: (gen) =>
                                setState(() => gender = (gen as String?)),
                            decoration: InputDecoration(
                                hintText: 'Gender',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black38),
                                icon: Icon(
                                  Icons.perm_identity,
                                  color: Colors.black38,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide.none)),
                            validator: (value) =>
                            value == null ? "field required" : null,
                            items: [
                              'FEMALE',
                              'MALE',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem(
                                child: Text(
                                  value,
                                  style: TextStyle(color: Colors.black),
                                ),
                                value: value,
                              );
                            }).toList(),
                          ),
                          // child: TextFormField(
                          //   validator: (value) {
                          //     return Validate.txtValidator(value!);
                          //   },
                          //   onSaved: (String? value) {
                          //     coach.Gender = value!;
                          //   },
                          //   controller: genderInputcontroller,
                          //   keyboardType: TextInputType.text,
                          //   decoration: InputDecoration(
                          //     border: InputBorder.none,
                          //     hintText: 'Gender',
                          //     hintStyle: TextStyle(
                          //         fontWeight: FontWeight.bold,
                          //         color: Colors.black38),
                          //     // icon: Icon(
                          //     //   Icons.reduce_capacity_rounded,
                          //     //   color: Colors.black38,
                          //     // ),
                          //   ),
                          // ),
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
                              coach.PhoneNumber = value! as int;
                            },
                            controller: phoneInputcontroller,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Phone Number',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                              // icon: Icon(
                              //   Icons.note_add,
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
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0),
                          ),                          child: TextFormField(
                            validator: (value) {
                              return Validate.txtValidator(value!);
                            },
                            onSaved: (String? value) {
                              coach.Email = value!;
                            },
                            controller: emailInputcontroller,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                              // icon: Icon(
                              //   Icons.batch_prediction,
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
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            validator: (value) {
                              return Validate.txtValidator(value!);
                            },
                            onSaved: (String? value) {
                              coach.Address = value!;
                            },
                            controller: addressInputcontroller,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Address',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                              // icon: Icon(
                              //   Icons.batch_prediction,
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
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            validator: (value) {
                              return Validate.txtValidator(value!);
                            },
                            onSaved: (String? value) {
                              coach.Qualification = value!;
                            },
                            controller: qualificationInputcontroller,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Qualification',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                              // icon: Icon(
                              //   Icons.batch_prediction,
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
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0),
                          ),                          child: TextFormField(
                            validator: (value) {
                              return Validate.txtValidator(value!);
                            },
                            onSaved: (String? value) {
                              coach.Experience = value!;
                            },
                            controller: experienceInputcontroller,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Experience',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                              // icon: Icon(
                              //   Icons.batch_prediction,
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
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            validator: (value) {
                              return Validate.txtValidator(value!);
                            },
                            onSaved: (String? value) {
                              coach.Achievements = value!;
                            },
                            controller: achievementInputcontroller,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Achievements',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                              // icon: Icon(
                              //   Icons.batch_prediction,
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
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0),
                          ),                          child: TextFormField(
                            validator: (value) {
                              return Validate.txtValidator(value!);
                            },
                            onSaved: (String? value) {
                              coach.BloodGroup = value!;
                            },
                            controller: bloodInputcontroller,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Blood Group',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                              // icon: Icon(
                              //   Icons.batch_prediction,
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
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextFormField(
                            validator: (value) {
                              return Validate.txtValidator(value!);
                            },
                            onSaved: (String? value) {
                              coach.SalaryperHour = value! as int;
                            },
                            controller: salaryInputcontroller,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Salary per Hour',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                              // icon: Icon(
                              //   Icons.batch_prediction,
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
          //  mhatchery.FarmId = uuid.v4();
          coach.FirstName = firstnamecontroller.text;
          coach.LastName = lastnameInputcontroller.text;
          coach.Age = int.parse(ageInputcontroller.text);
          coach.Gender = genderInputcontroller.text;
          coach.PhoneNumber = int.parse(phoneInputcontroller.text);
          coach.Email = emailInputcontroller.text;
          coach.Address = addressInputcontroller.text;
          coach.Qualification = qualificationInputcontroller.text;
          coach.Experience = experienceInputcontroller.text;
          coach.Achievements = achievementInputcontroller.text;
          coach.BloodGroup = bloodInputcontroller.text;
          coach.SalaryperHour = int.parse(salaryInputcontroller.text);
          print('Data : ${coach.toJson()}');
          await web.coachRecord(model: coach);
        },
        child: Icon(Icons.check_outlined),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
