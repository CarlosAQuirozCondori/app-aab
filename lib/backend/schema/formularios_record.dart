import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormulariosRecord extends FirestoreRecord {
  FormulariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "AreaSolicitante" field.
  String? _areaSolicitante;
  String get areaSolicitante => _areaSolicitante ?? '';
  bool hasAreaSolicitante() => _areaSolicitante != null;

  // "Cargo" field.
  String? _cargo;
  String get cargo => _cargo ?? '';
  bool hasCargo() => _cargo != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "Ubicacion" field.
  String? _ubicacion;
  String get ubicacion => _ubicacion ?? '';
  bool hasUbicacion() => _ubicacion != null;

  // "AsistenciaTecnica" field.
  String? _asistenciaTecnica;
  String get asistenciaTecnica => _asistenciaTecnica ?? '';
  bool hasAsistenciaTecnica() => _asistenciaTecnica != null;

  // "Revision" field.
  String? _revision;
  String get revision => _revision ?? '';
  bool hasRevision() => _revision != null;

  // "Estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _areaSolicitante = snapshotData['AreaSolicitante'] as String?;
    _cargo = snapshotData['Cargo'] as String?;
    _fecha = snapshotData['Fecha'] as DateTime?;
    _ubicacion = snapshotData['Ubicacion'] as String?;
    _asistenciaTecnica = snapshotData['AsistenciaTecnica'] as String?;
    _revision = snapshotData['Revision'] as String?;
    _estado = snapshotData['Estado'] as String?;
    _imagen = snapshotData['Imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('formularios');

  static Stream<FormulariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormulariosRecord.fromSnapshot(s));

  static Future<FormulariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormulariosRecord.fromSnapshot(s));

  static FormulariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FormulariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormulariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormulariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormulariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormulariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormulariosRecordData({
  String? nombre,
  String? areaSolicitante,
  String? cargo,
  DateTime? fecha,
  String? ubicacion,
  String? asistenciaTecnica,
  String? revision,
  String? estado,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'AreaSolicitante': areaSolicitante,
      'Cargo': cargo,
      'Fecha': fecha,
      'Ubicacion': ubicacion,
      'AsistenciaTecnica': asistenciaTecnica,
      'Revision': revision,
      'Estado': estado,
      'Imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormulariosRecordDocumentEquality implements Equality<FormulariosRecord> {
  const FormulariosRecordDocumentEquality();

  @override
  bool equals(FormulariosRecord? e1, FormulariosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.areaSolicitante == e2?.areaSolicitante &&
        e1?.cargo == e2?.cargo &&
        e1?.fecha == e2?.fecha &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.asistenciaTecnica == e2?.asistenciaTecnica &&
        e1?.revision == e2?.revision &&
        e1?.estado == e2?.estado &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(FormulariosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.areaSolicitante,
        e?.cargo,
        e?.fecha,
        e?.ubicacion,
        e?.asistenciaTecnica,
        e?.revision,
        e?.estado,
        e?.imagen
      ]);

  @override
  bool isValidKey(Object? o) => o is FormulariosRecord;
}
