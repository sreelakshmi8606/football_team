// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:football_team/DataModels/SessionDataModel.dart';
class CustomSearchDelegate extends SearchDelegate {
  //List<String> allNames = ["Session1", "Session2", "Session3", "Session4"];
  List<SessionDataModel> Sessions=[SessionDataModel(Session: 'Session1', duration: 50),
    SessionDataModel(Session: 'Session2', duration: 50),
    SessionDataModel(Session: 'Session3', duration: 50),
    SessionDataModel(Session: 'Session4', duration: 50),];

  var suggestion = ["Session1", "Session2", "Session4"];
  List<String> searchResult = [];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  // @override
  // Widget buildResults(BuildContext context) {
  //   searchResult.clear();
  //   // searchResult =
  //   //     Sessions.where((element) => element.startsWith(query)).cast<String>().toList();
  //   return Center(
  //     child: Container(
  //       width: 130,
  //       height: 130,
  //       child: Card(
  //         color: Colors.orangeAccent,
  //         child: Center(
  //           child: Text(query,
  //               style: TextStyle(
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 25,
  //               )),
  //         ),
  //       ),
  //     ),
  //   );
  //
  //   return Container(
  //     margin: EdgeInsets.all(20),
  //     child: ListView(
  //         padding: EdgeInsets.only(top: 8, bottom: 8),
  //         scrollDirection: Axis.vertical,
  //         children: List.generate(suggestion.length, (index) {
  //           var item = suggestion[index];
  //           return Card(
  //             color: Colors.white,
  //             child: Container(padding: EdgeInsets.all(16), child: Text(item)),
  //           );
  //         })),
  //   );
  // }

  @override
  Widget buildSuggestions(BuildContext context) {
    if(Sessions.length==0)
      return Center(child: Text("No Sessions")
        ,);
          else
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          if (query.isEmpty) {
            query = suggestion[index];
          }
        },
        leading: Icon(query.isEmpty ? Icons.history : Icons.search),
        title: RichText(
            text: TextSpan(
                text: Sessions[index].Session,
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: Sessions[index].Session,
                    style: TextStyle(color: Colors.black87),
                  )
                ])),
      ),
      itemCount: Sessions.length,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
