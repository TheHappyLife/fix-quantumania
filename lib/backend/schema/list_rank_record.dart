import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'list_rank_record.g.dart';

abstract class ListRankRecord
    implements Built<ListRankRecord, ListRankRecordBuilder> {
  static Serializer<ListRankRecord> get serializer =>
      _$listRankRecordSerializer;

  int? get item;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ListRankRecordBuilder builder) =>
      builder..item = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('listRank');

  static Stream<ListRankRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ListRankRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ListRankRecord._();
  factory ListRankRecord([void Function(ListRankRecordBuilder) updates]) =
      _$ListRankRecord;

  static ListRankRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createListRankRecordData({
  int? item,
}) {
  final firestoreData = serializers.toFirestore(
    ListRankRecord.serializer,
    ListRankRecord(
      (l) => l..item = item,
    ),
  );

  return firestoreData;
}
