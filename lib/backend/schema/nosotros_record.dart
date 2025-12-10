import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NosotrosRecord extends FirestoreRecord {
  NosotrosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreSello" field.
  String? _nombreSello;
  String get nombreSello => _nombreSello ?? '';
  bool hasNombreSello() => _nombreSello != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "mision" field.
  String? _mision;
  String get mision => _mision ?? '';
  bool hasMision() => _mision != null;

  // "imagenTormentor" field.
  String? _imagenTormentor;
  String get imagenTormentor => _imagenTormentor ?? '';
  bool hasImagenTormentor() => _imagenTormentor != null;

  // "contacto" field.
  String? _contacto;
  String get contacto => _contacto ?? '';
  bool hasContacto() => _contacto != null;

  void _initializeFields() {
    _nombreSello = snapshotData['nombreSello'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _mision = snapshotData['mision'] as String?;
    _imagenTormentor = snapshotData['imagenTormentor'] as String?;
    _contacto = snapshotData['contacto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nosotros');

  static Stream<NosotrosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NosotrosRecord.fromSnapshot(s));

  static Future<NosotrosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NosotrosRecord.fromSnapshot(s));

  static NosotrosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NosotrosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NosotrosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NosotrosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NosotrosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NosotrosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNosotrosRecordData({
  String? nombreSello,
  String? descripcion,
  String? mision,
  String? imagenTormentor,
  String? contacto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreSello': nombreSello,
      'descripcion': descripcion,
      'mision': mision,
      'imagenTormentor': imagenTormentor,
      'contacto': contacto,
    }.withoutNulls,
  );

  return firestoreData;
}

class NosotrosRecordDocumentEquality implements Equality<NosotrosRecord> {
  const NosotrosRecordDocumentEquality();

  @override
  bool equals(NosotrosRecord? e1, NosotrosRecord? e2) {
    return e1?.nombreSello == e2?.nombreSello &&
        e1?.descripcion == e2?.descripcion &&
        e1?.mision == e2?.mision &&
        e1?.imagenTormentor == e2?.imagenTormentor &&
        e1?.contacto == e2?.contacto;
  }

  @override
  int hash(NosotrosRecord? e) => const ListEquality().hash([
        e?.nombreSello,
        e?.descripcion,
        e?.mision,
        e?.imagenTormentor,
        e?.contacto
      ]);

  @override
  bool isValidKey(Object? o) => o is NosotrosRecord;
}
