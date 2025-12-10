import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarritoRecord extends FirestoreRecord {
  CarritoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  bool hasSku() => _sku != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  bool hasPrecio() => _precio != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "subtotal" field.
  int? _subtotal;
  int get subtotal => _subtotal ?? 0;
  bool hasSubtotal() => _subtotal != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _sku = snapshotData['sku'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _precio = castToType<int>(snapshotData['precio']);
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _subtotal = castToType<int>(snapshotData['subtotal']);
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carrito');

  static Stream<CarritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarritoRecord.fromSnapshot(s));

  static Future<CarritoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarritoRecord.fromSnapshot(s));

  static CarritoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarritoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarritoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarritoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarritoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarritoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarritoRecordData({
  String? sku,
  String? nombre,
  int? precio,
  int? cantidad,
  int? subtotal,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sku': sku,
      'nombre': nombre,
      'precio': precio,
      'cantidad': cantidad,
      'subtotal': subtotal,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarritoRecordDocumentEquality implements Equality<CarritoRecord> {
  const CarritoRecordDocumentEquality();

  @override
  bool equals(CarritoRecord? e1, CarritoRecord? e2) {
    return e1?.sku == e2?.sku &&
        e1?.nombre == e2?.nombre &&
        e1?.precio == e2?.precio &&
        e1?.cantidad == e2?.cantidad &&
        e1?.subtotal == e2?.subtotal &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(CarritoRecord? e) => const ListEquality().hash(
      [e?.sku, e?.nombre, e?.precio, e?.cantidad, e?.subtotal, e?.imagen]);

  @override
  bool isValidKey(Object? o) => o is CarritoRecord;
}
