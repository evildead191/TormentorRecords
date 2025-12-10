import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArtistasRecord extends FirestoreRecord {
  ArtistasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "biografia" field.
  String? _biografia;
  String get biografia => _biografia ?? '';
  bool hasBiografia() => _biografia != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _biografia = snapshotData['biografia'] as String?;
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('artistas');

  static Stream<ArtistasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArtistasRecord.fromSnapshot(s));

  static Future<ArtistasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArtistasRecord.fromSnapshot(s));

  static ArtistasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArtistasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArtistasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArtistasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArtistasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArtistasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArtistasRecordData({
  String? nombre,
  String? biografia,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'biografia': biografia,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArtistasRecordDocumentEquality implements Equality<ArtistasRecord> {
  const ArtistasRecordDocumentEquality();

  @override
  bool equals(ArtistasRecord? e1, ArtistasRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.biografia == e2?.biografia &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(ArtistasRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.biografia, e?.imagen]);

  @override
  bool isValidKey(Object? o) => o is ArtistasRecord;
}
