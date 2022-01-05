// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_team/BatchCubit/batchlist_cubit.dart';
import 'package:football_team/CoachCubit/coachlist_cubit.dart';
import 'package:football_team/CourseCubit/courselist_cubit.dart';
import 'package:football_team/Forms/BatchList.dart';
import 'package:football_team/Forms/CourseEditor.dart';
import 'package:football_team/Forms/StudentHome.dart';
import 'package:football_team/Forms/StudentList.dart';
import 'package:football_team/Forms/sessionlist.dart';
import 'package:football_team/StudentCubit/studentlist_cubit.dart';
import 'package:football_team/sessionCubit/cubit/sessionlist_cubit.dart';

import 'CoachList.dart';

class FormGrid extends StatefulWidget {
  @override
  _FormGridState createState() => _FormGridState();
}

class _FormGridState extends State<FormGrid> {
  final List _list = [
    'COACH',
    'STUDENT',
    'BATCH',
    'COURSE',
    'SESSION',
  ];
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    // final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    // final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        title: Text('FootBall Team'),
        backgroundColor: Colors.blue,
        //backgroundColor: Colors.orangeAccent,
      ),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // childAspectRatio: (itemWidth / itemHeight),
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemCount: _list.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              color: Colors.white,
              child: GestureDetector(
                onTap: () {
                  routing(index);
                },
                child: Center(
                  child: Text(
                    _list[index],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  routing(int index) {
    if (index == 0)
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BlocProvider(
                    create: (context) => CoachlistCubit(url: '')..fetchData(),
                    child: CoachList(),
                  )));
    else if (index == 1)
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BlocProvider(
                    create: (context) => StudentlistCubit(url: '')..fetchData(),
                    child: StudentList(),
                  )));
    else if (index == 2)
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BlocProvider(
                    create: (context) => BatchlistCubit(url: '')..fetchData(),
                    child: BatchList(),
                  )));
    else if (index == 3)
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BlocProvider(
                    create: (context) => CourselistCubit(url: '')..fetchData(),
                    child: CourseEditor(),
                  )));
    else if (index == 4)
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BlocProvider(
                    create: (context) => SessionlistCubit(url: '')..fetchData(),
                    child: SessionList(),
                  )));
  }
}
