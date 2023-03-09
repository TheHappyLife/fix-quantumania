import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'tab_struct.g.dart';

abstract class TabStruct implements Built<TabStruct, TabStructBuilder> {
  static Serializer<TabStruct> get serializer => _$tabStructSerializer;

  String? get slug;

  String? get name;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(TabStructBuilder builder) => builder
    ..slug = ''
    ..name = ''
    ..firestoreUtilData = FirestoreUtilData();

  TabStruct._();
  factory TabStruct([void Function(TabStructBuilder) updates]) = _$TabStruct;
}

TabStruct createTabStruct({
  String? slug,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TabStruct(
      (t) => t
        ..slug = slug
        ..name = name
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

TabStruct? updateTabStruct(
  TabStruct? tab, {
  bool clearUnsetFields = true,
}) =>
    tab != null
        ? (tab.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addTabStructData(
  Map<String, dynamic> firestoreData,
  TabStruct? tab,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tab == null) {
    return;
  }
  if (tab.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && tab.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tabData = getTabFirestoreData(tab, forFieldValue);
  final nestedData = tabData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = tab.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getTabFirestoreData(
  TabStruct? tab, [
  bool forFieldValue = false,
]) {
  if (tab == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(TabStruct.serializer, tab);

  // Add any Firestore field values
  tab.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTabListFirestoreData(
  List<TabStruct>? tabs,
) =>
    tabs?.map((t) => getTabFirestoreData(t, true)).toList() ?? [];
