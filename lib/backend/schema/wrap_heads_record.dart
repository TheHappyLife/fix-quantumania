import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'wrap_heads_record.g.dart';

abstract class WrapHeadsRecord
    implements Built<WrapHeadsRecord, WrapHeadsRecordBuilder> {
  static Serializer<WrapHeadsRecord> get serializer =>
      _$wrapHeadsRecordSerializer;

  WrapHeadStruct get data;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WrapHeadsRecordBuilder builder) =>
      builder..data = WrapHeadStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('wrap_heads');

  static Stream<WrapHeadsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WrapHeadsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WrapHeadsRecord._();
  factory WrapHeadsRecord([void Function(WrapHeadsRecordBuilder) updates]) =
      _$WrapHeadsRecord;

  static WrapHeadsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWrapHeadsRecordData({
  WrapHeadStruct? data,
}) {
  final firestoreData = serializers.toFirestore(
    WrapHeadsRecord.serializer,
    WrapHeadsRecord(
      (w) => w..data = WrapHeadStructBuilder(),
    ),
  );

  // Handle nested data for "data" field.
  addWrapHeadStructData(firestoreData, data, 'data');

  return firestoreData;
}
