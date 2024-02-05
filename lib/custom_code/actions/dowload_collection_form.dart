// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//Format type datetime
//import 'package:intl/intl.dart';

import 'dart:convert' show utf8;
import 'package:download/download.dart';

//var dateFormatter = DateFormat('dd-MM-yyyy');

Future dowloadCollectionForm(List<FormulariosRecord>? docs) async {
  docs = docs ?? [];
  String fileContent =
      "Nombre, AreaSolicitante, Cargo, Fecha, Ubicacion, AsistenciaTecnica, Revision, Estado, Imagen";

  docs.asMap().forEach((index, record) => fileContent = fileContent +
      "\n" +
      record.nombre.toString() +
      "," +
      record.areaSolicitante.toString() +
      "," +
      record.cargo.toString() +
      "," +
      record.fecha.toString() +
      //DateFormat('dd-MM-yyyy').format(record.fecha.datetime) +
      "," +
      record.ubicacion.toString() +
      "," +
      record.asistenciaTecnica.toString() +
      "," +
      record.revision.toString() +
      "," +
      record.estado.toString() +
      "," +
      record.imagen.toString());

  // Example of date formating thanks to Edmund Ong
  // DateFormat('dd-MM-yyyy').format(record.attendanceDate!) +
  //     "," +
  //     DateFormat('HH:mm').format(record.timeIn!) +
  //     "," +

  final fileName = "ReporteFormulario" + ".csv";

  // Encode the string as a List<int> of UTF-8 bytes
  var bytes = utf8.encode(fileContent);

  final stream = Stream.fromIterable(bytes);
  return download(stream, fileName);
}
