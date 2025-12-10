import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiscosRecord extends FirestoreRecord {
  DiscosRecord._(
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

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  bool hasPrecio() => _precio != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _artista = snapshotData['artista'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _anio = castToType<int>(snapshotData['anio']);
    _stock = castToType<int>(snapshotData['stock']);
    _imagen = snapshotData['imagen'] as String?;
    _precio = castToType<int>(snapshotData['precio']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('discos');

  static Stream<DiscosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DiscosRecord.fromSnapshot(s));

  static Future<DiscosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DiscosRecord.fromSnapshot(s));

  static DiscosRecord fromSnapshot(DocumentSnapshot snapshot) => DiscosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DiscosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DiscosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DiscosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DiscosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDiscosRecordData({
  String? titulo,
  String? artista,
  String? descripcion,
  int? anio,
  int? stock,
  String? imagen,
  int? precio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'artista': artista,
      'descripcion': descripcion,
      'anio': anio,
      'stock': stock,
      'imagen': imagen,
      'precio': precio,
    }.withoutNulls,
  );

  return firestoreData;
}

class DiscosRecordDocumentEquality implements Equality<DiscosRecord> {
  const DiscosRecordDocumentEquality();

  @override
  bool equals(DiscosRecord? e1, DiscosRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.artista == e2?.artista &&
        e1?.descripcion == e2?.descripcion &&
        e1?.anio == e2?.anio &&
        e1?.stock == e2?.stock &&
        e1?.imagen == e2?.imagen &&
        e1?.precio == e2?.precio;
  }

  @override
  int hash(DiscosRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.artista,
        e?.descripcion,
        e?.anio,
        e?.stock,
        e?.imagen,
        e?.precio
      ]);

  @override
  bool isValidKey(Object? o) => o is DiscosRecord;
}
