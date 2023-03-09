import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'history_struct.g.dart';

abstract class HistoryStruct
    implements Built<HistoryStruct, HistoryStructBuilder> {
  static Serializer<HistoryStruct> get serializer => _$historyStructSerializer;

  DateTime? get date;

  String? get meta;

  bool? get plus;

  double? get price;

  String? get tilte;

  String? get type;

  String? get unit;

  @BuiltValueField(wireName: 'type_gem')
  String? get typeGem;

  double? get id;

  String? get status;

  DocumentReference? get gemRef;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(HistoryStructBuilder builder) => builder
    ..meta = ''
    ..plus = false
    ..price = 0.0
    ..tilte = ''
    ..type = ''
    ..unit = ''
    ..typeGem = ''
    ..id = 0.0
    ..status = ''
    ..firestoreUtilData = FirestoreUtilData();

  HistoryStruct._();
  factory HistoryStruct([void Function(HistoryStructBuilder) updates]) =
      _$HistoryStruct;
}

HistoryStruct createHistoryStruct({
  DateTime? date,
  String? meta,
  bool? plus,
  double? price,
  String? tilte,
  String? type,
  String? unit,
  String? typeGem,
  double? id,
  String? status,
  DocumentReference? gemRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HistoryStruct(
      (h) => h
        ..date = date
        ..meta = meta
        ..plus = plus
        ..price = price
        ..tilte = tilte
        ..type = type
        ..unit = unit
        ..typeGem = typeGem
        ..id = id
        ..status = status
        ..gemRef = gemRef
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

HistoryStruct? updateHistoryStruct(
  HistoryStruct? history, {
  bool clearUnsetFields = true,
}) =>
    history != null
        ? (history.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addHistoryStructData(
  Map<String, dynamic> firestoreData,
  HistoryStruct? history,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (history == null) {
    return;
  }
  if (history.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && history.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final historyData = getHistoryFirestoreData(history, forFieldValue);
  final nestedData = historyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = history.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getHistoryFirestoreData(
  HistoryStruct? history, [
  bool forFieldValue = false,
]) {
  if (history == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(HistoryStruct.serializer, history);

  // Add any Firestore field values
  history.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHistoryListFirestoreData(
  List<HistoryStruct>? historys,
) =>
    historys?.map((h) => getHistoryFirestoreData(h, true)).toList() ?? [];
