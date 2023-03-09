import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'list_rank_dropdown_record.g.dart';

abstract class ListRankDropdownRecord
    implements Built<ListRankDropdownRecord, ListRankDropdownRecordBuilder> {
  static Serializer<ListRankDropdownRecord> get serializer =>
      _$listRankDropdownRecordSerializer;

  BuiltList<int>? get item;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ListRankDropdownRecordBuilder builder) =>
      builder..item = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('listRankDropdown');

  static Stream<ListRankDropdownRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ListRankDropdownRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ListRankDropdownRecord._();
  factory ListRankDropdownRecord(
          [void Function(ListRankDropdownRecordBuilder) updates]) =
      _$ListRankDropdownRecord;

  static ListRankDropdownRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createListRankDropdownRecordData() {
  final firestoreData = serializers.toFirestore(
    ListRankDropdownRecord.serializer,
    ListRankDropdownRecord(
      (l) => l..item = null,
    ),
  );

  return firestoreData;
}
