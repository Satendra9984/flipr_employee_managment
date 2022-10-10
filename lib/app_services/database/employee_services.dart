import 'dart:html';

import 'package:flipr_employee_managment/app_models/task_model.dart';
import 'package:flipr_employee_managment/app_utils/http_requsets.dart';

class EmployeeServices {
  Future<String?> addTask(Map<String, dynamic> body, String employeeId) async {
    String result = '';
    await HttpRequests.sendPostRequest(url: '/api/task/add', body: body).then((value) {
      if (value != null) {
        result = value['result'];

      }
    });
    if (result == '') {
      return null;
    }
    return result;
  }
  
  static Future<List<Task>> getTasks(String id) async {
    List<Task> tasks = [];
    await HttpRequests.sendGetRequest(url: 'tasks/$id').then((data) {
      if (data != null) {
        tasks = [...data['tasks']];
      }
    });
    return tasks;
  }
}