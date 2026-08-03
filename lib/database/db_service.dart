import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbService {

  static late Database _database;

  static Future<void>init()async{
    Directory directory = await getApplicationDocumentsDirectory();
    File dbFile = File("${directory.path}/engineering.db");

    if(!dbFile.existsSync()){
      ByteData byteData = await rootBundle.load("assets/engineering.db");
      ByteBuffer buffer = byteData.buffer;
      await dbFile.writeAsBytes(
        buffer.asUint8List(byteData.offsetInBytes,byteData.lengthInBytes)
      );

      _database = await openDatabase(dbFile.path);
    }
  }



}