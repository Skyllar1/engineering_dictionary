


import 'package:engineering_dictionary/database/db_service.dart';
import 'package:flutter/cupertino.dart';

import '../database/database_model.dart';

class EngineeringProvider extends ChangeNotifier{


  List<DatabaseModel> results = [];
  final DbService _dbService = DbService();

  void search(String keyword)async{
    results = await _dbService.search(keyword);
    notifyListeners();
  }

}