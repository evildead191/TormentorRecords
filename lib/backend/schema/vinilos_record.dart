import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VinilosRecord extends FirestoreRecord {
  VinilosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "artista" field.
  String? _artista;
  String get artista => _artista ?? '';
  bool hasArtista() => _artista != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "anio" field.
  int? _anio;
  int get anio => _anio ?? 0;
  bool hasAnio() => _anio != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _artista = snapshotData['artista'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _anio = castToType<int>(snapshotData['anio']);
    _precio = castToType<double>(snapshotData['precio']);
    _stock = castToType<int>(snapshotData['stock']);
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vinilos');

  static Stream<VinilosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VinilosRecord.fromSnapshot(s));

  static Future<VinilosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VinilosRecord.fromSnapshot(s));

  static VinilosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VinilosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VinilosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VinilosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VinilosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VinilosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVinilosRecordData({
  String? titulo,
  String? artista,
  String? descripcion,
  int? anio,
  double? precio,
  int? stock,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'artista': artista,
      'descripcion': descripcion,
      'anio': anio,
      'precio': precio,
      'stock': stock,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class VinilosRecordDocumentEquality implements Equality<VinilosRecord> {
  const VinilosRecordDocumentEquality();

  @override
  bool equals(VinilosRecord? e1, VinilosRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.artista == e2?.artista &&
        e1?.descripcion == e2?.descripcion &&
        e1?.anio == e2?.anio &&
        e1?.precio == e2?.precio &&
        e1?.stock == e2?.stock &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(VinilosRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.artista,
        e?.descripcion,
        e?.anio,
        e?.precio,
        e?.stock,
        e?.imagen
      ]);

  @override
  bool isValidKey(Object? o) => o is VinilosRecord;
}
