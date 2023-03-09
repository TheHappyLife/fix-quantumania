import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'gems_record.g.dart';

abstract class GemsRecord implements Built<GemsRecord, GemsRecordBuilder> {
  static Serializer<GemsRecord> get serializer => _$gemsRecordSerializer;

  GemStruct get data;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GemsRecordBuilder builder) =>
      builder..data = GemStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gems');

  static Stream<GemsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GemsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GemsRecord._();
  factory GemsRecord([void Function(GemsRecordBuilder) updates]) = _$GemsRecord;

  static GemsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGemsRecordData({
  GemStruct? data,
}) {
  final firestoreData = serializers.toFirestore(
    GemsRecord.serializer,
    GemsRecord(
      (g) => g..data = GemStructBuilder(),
    ),
  );

  // Handle nested data for "data" field.
  addGemStructData(firestoreData, data, 'data');

  return firestoreData;
}
