import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'aff_tab_record.g.dart';

abstract class AffTabRecord
    implements Built<AffTabRecord, AffTabRecordBuilder> {
  static Serializer<AffTabRecord> get serializer => _$affTabRecordSerializer;

  ItemAffTabStruct get item;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AffTabRecordBuilder builder) =>
      builder..item = ItemAffTabStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('affTab');

  static Stream<AffTabRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AffTabRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AffTabRecord._();
  factory AffTabRecord([void Function(AffTabRecordBuilder) updates]) =
      _$AffTabRecord;

  static AffTabRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAffTabRecordData({
  ItemAffTabStruct? item,
}) {
  final firestoreData = serializers.toFirestore(
    AffTabRecord.serializer,
    AffTabRecord(
      (a) => a..item = ItemAffTabStructBuilder(),
    ),
  );

  // Handle nested data for "item" field.
  addItemAffTabStructData(firestoreData, item, 'item');

  return firestoreData;
}
