import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'item_aff_tab_struct.g.dart';

abstract class ItemAffTabStruct
    implements Built<ItemAffTabStruct, ItemAffTabStructBuilder> {
  static Serializer<ItemAffTabStruct> get serializer =>
      _$itemAffTabStructSerializer;

  String? get slug;

  String? get name;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ItemAffTabStructBuilder builder) => builder
    ..slug = ''
    ..name = ''
    ..firestoreUtilData = FirestoreUtilData();

  ItemAffTabStruct._();
  factory ItemAffTabStruct([void Function(ItemAffTabStructBuilder) updates]) =
      _$ItemAffTabStruct;
}

ItemAffTabStruct createItemAffTabStruct({
  String? slug,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ItemAffTabStruct(
      (i) => i
        ..slug = slug
        ..name = name
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ItemAffTabStruct? updateItemAffTabStruct(
  ItemAffTabStruct? itemAffTab, {
  bool clearUnsetFields = true,
}) =>
    itemAffTab != null
        ? (itemAffTab.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addItemAffTabStructData(
  Map<String, dynamic> firestoreData,
  ItemAffTabStruct? itemAffTab,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (itemAffTab == null) {
    return;
  }
  if (itemAffTab.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && itemAffTab.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final itemAffTabData = getItemAffTabFirestoreData(itemAffTab, forFieldValue);
  final nestedData = itemAffTabData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = itemAffTab.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getItemAffTabFirestoreData(
  ItemAffTabStruct? itemAffTab, [
  bool forFieldValue = false,
]) {
  if (itemAffTab == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ItemAffTabStruct.serializer, itemAffTab);

  // Add any Firestore field values
  itemAffTab.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getItemAffTabListFirestoreData(
  List<ItemAffTabStruct>? itemAffTabs,
) =>
    itemAffTabs?.map((i) => getItemAffTabFirestoreData(i, true)).toList() ?? [];
