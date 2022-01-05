import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:football_team/DataModels/BatchModel.dart';
import 'package:football_team/DataModels/CoachModel.dart';
import 'package:football_team/DataModels/SessionDataModel.dart';
import 'package:football_team/DataModels/StudentPro.dart';
import 'package:intl/intl.dart';

class WebserviceHelper {
  Dio dio = Dio(BaseOptions(
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Credentials": true,
      "Access-Control-Allow-Headers":
      "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
      "Access-Control-Allow-Methods": "POST, OPTIONS"
    },
  ));

 Future<bool> coachRecord({required CoachDataModel model}) async {
    model.toJson();
    String url = "";
    print('Url : $url');
    print('Data : ${model.toJson()}');
    try {
      // Response response = await dio.post(url, data: model.toJson());
      // print('Response : ${response.data}');
      await dio.post(url, data: model.toJson());
    } catch (e) {
      print('Error : ${e.toString()}');
      return false;
    }
    return true;
  }
  Future<bool> StudentRecord({required StudentProDataModel model}) async {
    model.toJson();
    String url = "";
    print('Url : $url');
    print('Data : ${model.toJson()}');
    try {
      // Response response = await dio.post(url, data: model.toJson());
      // print('Response : ${response.data}');
      await dio.post(url, data: model.toJson());
    } catch (e) {
      print('Error : ${e.toString()}');
      return false;
    }
    return true;
  }
  Future<bool> BatchRecord({required BatchDataModel model}) async {
    model.toJson();
    String url = "";
    print('Url : $url');
    print('Data : ${model.toJson()}');
    try {
      // Response response = await dio.post(url, data: model.toJson());
      // print('Response : ${response.data}');
      await dio.post(url, data: model.toJson());
    } catch (e) {
      print('Error : ${e.toString()}');
      return false;
    }
    return true;
  }

  Future<bool> SessionRecord({required SessionDataModel model}) async {
    model.toJson();
    String url = "";
    print('Url : $url');
    print('Data : ${model.toJson()}');
    try {
      // Response response = await dio.post(url, data: model.toJson());
      // print('Response : ${response.data}');
      await dio.post(url, data: model.toJson());
    } catch (e) {
      print('Error : ${e.toString()}');
      return false;
    }
    return true;
  }
  Future<List> getStudentList() async {
    List dvals = [];
    String url = "";
    try {
      Response response = await dio.post(url,);
      print(url);
      dynamic tdata = json.decode(response.data);
      dvals = tdata['hits'];
      print(tdata['hits']);
    } catch (e) {
      print('Exception');
      print(e.toString());
    }
    return dvals;
  }
  Future<List<Map>> getStudentEditor() async {
    String url = "";
    dynamic data = await dio.get(url);
    return data;
  }

  Future<List> getCoachList() async {
    List dvals = [];
    String url = "";
    try {
      Response response = await dio.post(url,);
      print(url);
      dynamic tdata = json.decode(response.data);
      dvals = tdata['hits'];
      print(tdata['hits']);
    } catch (e) {
      print('Exception');
      print(e.toString());
    }
    return dvals;
  }

  Future<List<Map>> getCoachEditor() async {
    String url = "";
    dynamic data = await dio.get(url);
    return data;
  }
  Future<List> getSessionList() async {
    List dvals = [];
    String url = "http://31.220.109.198:8050/GetHatcheryMasterData";
    try {
      Response response = await dio.get(url);
      print(url);
      dynamic tdata = json.decode(response.data);
      dvals = tdata['hits'];
      print(tdata['hits']);
    } catch (e) {
      print('Exception');
      print(e.toString());
    }
    return dvals;
  }

  Future<List<Map>> getSessionEditor() async {
    String url = "";
    dynamic data = await dio.get(url);
    return data;
  }
  Future<List> getCourseList() async {
    List dvals = [];
    String url = "http://31.220.109.198:8050/GetHatcheryMasterData";
    try {
      Response response = await dio.get(url);
      print(url);
      dynamic tdata = json.decode(response.data);
      dvals = tdata['hits'];
      print(tdata['hits']);
    } catch (e) {
      print('Exception');
      print(e.toString());
    }
    return dvals;
  }

  Future<List<Map>> getCourseEditor() async {
    String url = "";
    dynamic data = await dio.get(url);
    return data;
  }
  Future<List> getBatchList() async {
    List dvals = [];
    String url = "http://31.220.109.198:8050/GetHatcheryMasterData";
    try {
      Response response = await dio.get(url);
      print(url);
      dynamic tdata = json.decode(response.data);
      dvals = tdata['hits'];
      print(tdata['hits']);
    } catch (e) {
      print('Exception');
      print(e.toString());
    }
    return dvals;
  }

  Future<List<Map>> getBatchEditor() async {
    String url = "";
    dynamic data = await dio.get(url);
    return data;
  }
}
