import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NoticiasRecord extends FirestoreRecord {
  NoticiasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _img = snapshotData['img'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('noticias');

  static Stream<NoticiasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NoticiasRecord.fromSnapshot(s));

  static Future<NoticiasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NoticiasRecord.fromSnapshot(s));

  static NoticiasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NoticiasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NoticiasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NoticiasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NoticiasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NoticiasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNoticiasRecordData({
  String? titulo,
  String? descripcion,
  String? img,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'descripcion': descripcion,
      'img': img,
    }.withoutNulls,
  );

  return firestoreData;
}

class NoticiasRecordDocumentEquality implements Equality<NoticiasRecord> {
  const NoticiasRecordDocumentEquality();

  @override
  bool equals(NoticiasRecord? e1, NoticiasRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.img == e2?.img;
  }

  @override
  int hash(NoticiasRecord? e) =>
      const ListEquality().hash([e?.titulo, e?.descripcion, e?.img]);

  @override
  bool isValidKey(Object? o) => o is NoticiasRecord;
}
