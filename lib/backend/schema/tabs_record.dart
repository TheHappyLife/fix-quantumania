import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tabs_record.g.dart';

abstract class TabsRecord implements Built<TabsRecord, TabsRecordBuilder> {
  static Serializer<TabsRecord> get serializer => _$tabsRecordSerializer;

  String? get page;

  TabStruct get data;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TabsRecordBuilder builder) => builder
    ..page = ''
    ..data = TabStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tabs');

  static Stream<TabsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TabsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TabsRecord._();
  factory TabsRecord([void Function(TabsRecordBuilder) updates]) = _$TabsRecord;

  static TabsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTabsRecordData({
  String? page,
  TabStruct? data,
}) {
  final firestoreData = serializers.toFirestore(
    TabsRecord.serializer,
    TabsRecord(
      (t) => t
        ..page = page
        ..data = TabStructBuilder(),
    ),
  );

  // Handle nested data for "data" field.
  addTabStructData(firestoreData, data, 'data');

  return firestoreData;
}
