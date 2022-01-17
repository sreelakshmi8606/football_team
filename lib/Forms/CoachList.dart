import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_team/CoachCubit/coachlist_cubit.dart';
import 'package:football_team/Forms/CoachEditor.dart';

class CoachList extends StatefulWidget {
  @override
  _CoachListState createState() => _CoachListState();
}

class _CoachListState extends State<CoachList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of Coaches"),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Coach()));
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
            child: BlocBuilder<CoachlistCubit, CoachlistState>(
              builder: (context, state) {
                if (state is CoachListFetching) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is CoachListFetchError) {
                  return Center(
                    child: Text(state.msg),
                  );
                } else if (state is CoachListFetchCompleted) {
                  final List data = state.data;
                  return ListView.builder(
                      padding: EdgeInsets.only(top: 15),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Center(
                              child: Text(
                                data[index]['_source']['FirstName'] ?? 'NO TAG',
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
                                      builder: (context) => Coach()));
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
