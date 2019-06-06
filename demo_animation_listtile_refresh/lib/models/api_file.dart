import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';

class Storage {
  Future<String> get localPath async {
    final dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }
  @override
  Future<File> get localFile async {
    final path = await localPath;
    return File('${path}/dat.txt');
  }

  Future<String> readData() async {
    try {
      final file = await localFile;
      String body = await file.readAsString();
      return body;
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> getFileName() async {
    try {
      final file = await localFile;
      return file.toString();
    }
    catch (e) {
      return e.toString();
    }
  }
  @override
  Future<File> writeData(String data, String fileName) async {
    final path = await localPath;
    File('${path}/${fileName}');
    final file = await localFile;
    return file.writeAsString('$data');
  }
  Future<File> rename(String newPath) async {
    final file = await localFile;
    return file.rename(newPath);
  }
}
