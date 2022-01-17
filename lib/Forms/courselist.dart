import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_team/CourseCubit/courselist_cubit.dart';

import 'package:football_team/Forms/CourseEditor.dart';

class CourseList extends StatefulWidget {
  @override
  _CourseListState createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of Courses"),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CourseEditor()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          // Flexible(
          //     flex: 2,
          //     child: DateFilter(
          //       datesSelected: (fromDate1, toDate1) {
          //         fromDate = fromDate1;
          //         toDate = toDate1;
          //         BlocProvider.of<DailylistCubit>(context)
          //             .fetchData(fromDate, toDate);
          //       },
          //       fromDate: fromDate,
          //       toDate: toDate,
          //     )),
          Flexible(
            flex: 25,
            child: BlocBuilder<CourselistCubit, CourselistState>(
              builder: (context, state) {
                if (state is CourseListFetching) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is CourseListFetchError) {
                  return Center(
                    child: Text(state.msg),
                  );
                } else if (state is CourseListFetchCompleted) {
                  final List data = state.data;
                  return ListView.builder(
                      padding: EdgeInsets.only(top: 15),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Center(
                              child: Text(
                                data[index]['_source']['Course'] ?? 'NO TAG',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 6.0, horizontal: 0.0),
                            dense: true,
                            //tileColor: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            selected: true,
                            selectedTileColor: Colors.orange[100],
                            onTap: () {
                              // box.put('FarmName',
                              //     data[index]['_source']['FarmName']);
                              // box.put('FarmID', data[index]['_id']);
                              // print('Info Added');
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CourseEditor()));
                            },
                          ),
                        );
                      });
                } else
                  return Center(
                    child: Text('Undefined State'),
                  );
              },
            ),
          ),
        ],
      ),
    );
  }
}
