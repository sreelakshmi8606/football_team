// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, curly_braces_in_flow_control_structures, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:football_team/Common/Validation.dart';
import 'package:football_team/Common/WebService.dart';
import 'package:football_team/DataModels/StudentPro.dart';
import 'package:intl/intl.dart';

class StudentHome extends StatefulWidget {
  late String FirstName;
  late String LastName;
  late DateTime DOB;
  late int Age;
  late String Gender;
  late int PhoneNumber;
  late String GuardianName;
  late int GuardianPhone;
  late String SchoolName;
  late String Address;
  late String Email;
  late DateTime Admission;
  late String Timeperiod;
  late DateTime EndingDate;
  late double Fee;
  late double Height;
  late double Weight;
  late String SportsType;
  late String CoachName;
  late String TeamName;
  late int EmergencyNumber;
  late String RelationToPlayer;
  late String InsuranceCarrier;
  late String BloodGroup;

  @override
  _StudentHomeState createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  String? gender;
  String? bloodg;
  DateTime selectedDate = DateTime.now();
  late String dob;
  late String end;
  late String adm;

  TextEditingController FirstnameController = TextEditingController();
  TextEditingController LastNameController = TextEditingController();
  TextEditingController DobContoller = TextEditingController();
  TextEditingController AgeController = TextEditingController();
  TextEditingController GenderController = TextEditingController();
  TextEditingController PhnController = TextEditingController();
  TextEditingController GuardiannameController = TextEditingController();
  TextEditingController GuardianPhnController = TextEditingController();
  TextEditingController RelationController = TextEditingController();
  TextEditingController SchoolNameController = TextEditingController();
  TextEditingController AddressController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController AdmissionDateController = TextEditingController();
  TextEditingController TimePeriodController = TextEditingController();
  TextEditingController EndingDateController = TextEditingController();
  TextEditingController feeController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController sportstypeController = TextEditingController();
  TextEditingController CoachnameController = TextEditingController();
  TextEditingController TeamNameController = TextEditingController();
  TextEditingController EmergencyNoController = TextEditingController();
  TextEditingController InsuranceController = TextEditingController();
  TextEditingController BloodgroupController = TextEditingController();
  WebserviceHelper web = WebserviceHelper();

  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
  StudentProDataModel StdntPro = StudentProDataModel.empty();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Profile'),
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
                            StdntPro.LastName = value!;
                          },
                          controller: FirstnameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'First Name',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.person,
                              color: Colors.black38,
                            ),
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
                            StdntPro.LastName = value!;
                          },
                          controller: LastNameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Last Name',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.person,
                              color: Colors.black38,
                            ),
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
                        child: InkWell(
                          onTap: () {
                            _selectDate(context);
                          },
                          child: IgnorePointer(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'DOB',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black38),
                                icon: Icon(
                                  Icons.calendar_today_outlined,
                                  color: Colors.black38,
                                ),
                              ),
                              onSaved: (String? value) {
                                StdntPro.DOB = value! as DateTime;
                              },
                              controller: DobContoller,
                            ),
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
                            StdntPro.Age = value! as int;
                          },
                          controller: AgeController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Age',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.account_circle_outlined,
                              color: Colors.black38,
                            ),
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
                          value: bloodg,
                          onChanged: (bg) =>
                              setState(() => bloodg = bg as String?),
                          decoration: InputDecoration(
                              hintText: 'Blood Group',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                              icon: Icon(
                                Icons.bloodtype,
                                color: Colors.black38,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide.none)),
                          validator: (value) =>
                              value == null ? "field required" : null,
                          items: [
                            'A +ve',
                            'A -ve',
                            'B +ve',
                            'B -ve',
                            'O +ve',
                            'O -ve',
                            'AB +ve',
                            'AB -ve'
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
                              setState(() => gender = gen as String?),
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
                          maxLines: 5,
                          validator: (value) {
                            return Validate.txtValidator(value!);
                          },
                          onSaved: (String? value) {
                            StdntPro.Address = value;
                          },
                          controller: AddressController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '         Address',
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
                            StdntPro.PhoneNumber = value! as int?;
                          },
                          controller: PhnController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.phone,
                              color: Colors.black38,
                            ),
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
                            StdntPro.Email = value!;
                          },
                          controller: EmailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.email,
                              color: Colors.black38,
                            ),
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
                            StdntPro.Height = value! as double?;
                          },
                          controller: heightController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Height',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.height,
                              color: Colors.black38,
                            ),
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
                            StdntPro.Weight = value! as double?;
                          },
                          controller: weightController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Weight ',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.monitor_weight,
                              color: Colors.black38,
                            ),
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
                            StdntPro.SchoolName = value!;
                          },
                          controller: SchoolNameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'School Name',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.school,
                              color: Colors.black38,
                            ),
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
                            StdntPro.GuardianName = value!;
                          },
                          controller: GuardiannameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Guardian Name',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.person_pin,
                              color: Colors.black38,
                            ),
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
                            StdntPro.GuardianPhone = value! as int?;
                          },
                          controller: GuardianPhnController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Guardian Number',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.call,
                              color: Colors.black38,
                            ),
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
                            StdntPro.RelationToPlayer = value!;
                          },
                          controller: RelationController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Relationship To Player',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.person_pin,
                              color: Colors.black38,
                            ),
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
                            StdntPro.EmergencyNumber = value! as int?;
                          },
                          controller: EmergencyNoController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Emergency Number',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.call,
                              color: Colors.black38,
                            ),
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
                        child: InkWell(
                          onTap: () {
                            _selectDate1(context);
                          },
                          child: IgnorePointer(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Admission Date',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black38),
                                icon: Icon(
                                  Icons.calendar_today_outlined,
                                  color: Colors.black38,
                                ),
                              ),
                              onSaved: (String? value) {
                                StdntPro.Admission = value! as DateTime;
                              },
                              controller: AdmissionDateController,
                            ),
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
                            StdntPro.Timeperiod = value!;
                          },
                          controller: TimePeriodController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Time Period',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.timelapse_outlined,
                              color: Colors.black38,
                            ),
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
                        child: InkWell(
                          onTap: () {
                            _selectDate3(context);
                          },
                          child: IgnorePointer(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Ending Date',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black38),
                                icon: Icon(
                                  Icons.calendar_today_outlined,
                                  color: Colors.black38,
                                ),
                              ),
                              onSaved: (String? value) {
                                StdntPro.EndingDate = value! as DateTime;
                              },
                              controller: EndingDateController,
                            ),
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
                            StdntPro.Fee = value! as double?;
                          },
                          controller: feeController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Fees',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.money,
                              color: Colors.black38,
                            ),
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
                            StdntPro.SportsType = value!;
                          },
                          controller: RelationController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'SportsType',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.sports,
                              color: Colors.black38,
                            ),
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
                            StdntPro.CoachName = value!;
                          },
                          controller: CoachnameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Coach Name',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.person_pin,
                              color: Colors.black38,
                            ),
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
                            StdntPro.TeamName = value!;
                          },
                          controller: TeamNameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Team Name',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.person_pin,
                              color: Colors.black38,
                            ),
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
                            StdntPro.InsuranceCarrier = value!;
                          },
                          controller: InsuranceController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Insurance Carrier',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                            icon: Icon(
                              Icons.sports,
                              color: Colors.black38,
                            ),
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
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.blue,
        onPressed: () async {
          if (_FormKey.currentState!.validate()) {}

          StdntPro.FirstName = FirstnameController.text;
          StdntPro.LastName = LastNameController.text;
          StdntPro.DOB = _selectDate(context);
          StdntPro.Age = int.parse(AgeController.text);
          StdntPro.Gender = GenderController.text;
          StdntPro.PhoneNumber = int.parse(PhnController.text);
          StdntPro.GuardianName = GuardiannameController.text;
          StdntPro.GuardianPhone = int.parse(GuardianPhnController.text);
          StdntPro.SchoolName = SchoolNameController.text;
          StdntPro.Address = AddressController.text;
          StdntPro.Email = EmailController.text;
          StdntPro.Admission =
              int.parse(AdmissionDateController.text) as DateTime?;
          StdntPro.Timeperiod = TimePeriodController.text;
          StdntPro.EndingDate =
              int.parse(EndingDateController.text) as DateTime?;
          StdntPro.Fee = int.parse(feeController.text) as double?;
          StdntPro.Height = int.parse(heightController.text) as double?;
          StdntPro.Weight = int.parse(weightController.text) as double?;
          StdntPro.SportsType = sportstypeController.text;
          StdntPro.TeamName = TeamNameController.text;
          StdntPro.CoachName = CoachnameController.text;
          StdntPro.EmergencyNumber = int.parse(AdmissionDateController.text);
          StdntPro.RelationToPlayer = RelationController.text;
          StdntPro.InsuranceCarrier = InsuranceController.text;
          StdntPro.BloodGroup = BloodgroupController.text;

          print('Data : ${StdntPro.toJson()}');
          await web.StudentRecord(model: StdntPro);
        },
        child: Icon(Icons.check_outlined),
        backgroundColor: Colors.blue,
      ),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
    if (picked != null)
      setState(() {
        selectedDate = picked;
        dob = selectedDate.toString();
        DobContoller.text = DateFormat.yMMMd().format(selectedDate);
      });
  }

  _selectDate1(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
    if (picked != null)
      // ignore: curly_braces_in_flow_control_structures
      setState(() {
        selectedDate = picked;
        adm = selectedDate.toString();
        AdmissionDateController.text = DateFormat.yMMMd().format(selectedDate);
      });
  }

  _selectDate3(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
    if (picked != null)
      // ignore: curly_braces_in_flow_control_structures
      setState(() {
        selectedDate = picked;
        end = selectedDate.toString();
        EndingDateController.text = DateFormat.yMMMd().format(selectedDate);
      });
  }
}
