// ignore_for_file: prefer_is_empty

import 'package:flutter/material.dart';
import 'package:football_team/DataModels/SessionDataModel.dart';

class CustomSearchDelegate extends SearchDelegate<SessionDataModel> {
  //List<String> allNames = ["Session1", "Session2", "Session3", "Session4"];
  List<SessionDataModel> Sessions = [
    SessionDataModel(Session: 'Session1', duration: 50),
    SessionDataModel(Session: 'Session2', duration: 50),
    SessionDataModel(Session: 'Session3', duration: 50),
    SessionDataModel(Session: 'Session4', duration: 50),
  ];
  List<SessionDataModel> suggestion= [];
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
        // close(context, null);
      },
    );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    // final suggestionList = query.isEmpty
    //     ? Session
    //     : Sessions.where((element) => element.startsWith(query)).toList();
    if (Sessions.length == 0)
      return Center(
        child: Text("No Sessions"),
      );
    else
      return ListView.builder(
        itemCount: Sessions.length,
        itemBuilder: (context, index) {
          return getListSessionWidget(context, Sessions[index], index);
        },
      );
  }

  Widget getListSessionWidget(
      BuildContext context, SessionDataModel Session, int index) {
    return InkWell(
      onTap: () async {
        close(context, Session);
      },
      child: Card(
        color: Colors.blue.shade50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Session.Session!,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  // @override
  // Widget buildResults(BuildContext context) {
  //  throw UnimplementedError();
  // }
  @override
  Widget buildResults(BuildContext context) => const Text('Session');
}