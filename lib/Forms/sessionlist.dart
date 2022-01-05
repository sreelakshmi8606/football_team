// ignore_for_file: file_names, prefer_const_constructors, curly_braces_in_flow_control_structures, use_key_in_widget_constructors, non_constant_identifier_names, annotate_overrides, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_team/Forms/sessionEditor.dart';
import 'package:football_team/sessionCubit/cubit/sessionlist_cubit.dart';

class SessionList extends StatefulWidget {
  @override
  _SessionListState createState() => _SessionListState();
}

class _SessionListState extends State<SessionList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Session List"),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SessionEditor()));
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
            child: BlocBuilder<SessionlistCubit, SessionlistState>(
              builder: (context, state) {
                if (state is Fetching) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is FetchError) {
                  return Center(
                    child: Text(state.msg),
                  );
                } else if (state is FetchCompleted) {
                  final List data = state.data;
                  return ListView.builder(
                      padding: EdgeInsets.only(top: 15),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Center(
                              child: Text(
                                data[index]['_source']['Session'] ?? 'NO TAG',
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
                                      builder: (context) => SessionEditor()));
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
