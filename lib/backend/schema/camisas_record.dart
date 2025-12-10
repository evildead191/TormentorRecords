import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CamisasRecord extends FirestoreRecord {
  CamisasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "talla" field.
  String? _talla;
  String get talla => _talla ?? '';
  bool hasTalla() => _talla != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  // "tematica" field.
  String? _tematica;
  String get tematica => _tematica ?? '';
  bool hasTematica() => _tematica != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _talla = snapshotData['talla'] as String?;
    _color = getSchemaColor(snapshotData['color']);
    _tematica = snapshotData['tematica'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('camisas');

  static Stream<CamisasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CamisasRecord.fromSnapshot(s));

  static Future<CamisasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CamisasRecord.fromSnapshot(s));

  static CamisasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CamisasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CamisasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CamisasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CamisasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CamisasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCamisasRecordData({
  String? talla,
  Color? color,
  String? tematica,
  double? precio,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'talla': talla,
      'color': color,
      'tematica': tematica,
      'precio': precio,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class CamisasRecordDocumentEquality implements Equality<CamisasRecord> {
  const CamisasRecordDocumentEquality();

  @override
  bool equals(CamisasRecord? e1, CamisasRecord? e2) {
    return e1?.talla == e2?.talla &&
        e1?.color == e2?.color &&
        e1?.tematica == e2?.tematica &&
        e1?.precio == e2?.precio &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(CamisasRecord? e) => const ListEquality()
      .hash([e?.talla, e?.color, e?.tematica, e?.precio, e?.imagen]);

  @override
  bool isValidKey(Object? o) => o is CamisasRecord;
}
