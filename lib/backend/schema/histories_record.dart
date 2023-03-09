import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'histories_record.g.dart';

abstract class HistoriesRecord
    implements Built<HistoriesRecord, HistoriesRecordBuilder> {
  static Serializer<HistoriesRecord> get serializer =>
      _$historiesRecordSerializer;

  HistoryStruct get data;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HistoriesRecordBuilder builder) =>
      builder..data = HistoryStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('histories');

  static Stream<HistoriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HistoriesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HistoriesRecord._();
  factory HistoriesRecord([void Function(HistoriesRecordBuilder) updates]) =
      _$HistoriesRecord;

  static HistoriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHistoriesRecordData({
  HistoryStruct? data,
}) {
  final firestoreData = serializers.toFirestore(
    HistoriesRecord.serializer,
    HistoriesRecord(
      (h) => h..data = HistoryStructBuilder(),
    ),
  );

  // Handle nested data for "data" field.
  addHistoryStructData(firestoreData, data, 'data');

  return firestoreData;
}
