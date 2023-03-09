import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'page_struct.g.dart';

abstract class PageStruct implements Built<PageStruct, PageStructBuilder> {
  static Serializer<PageStruct> get serializer => _$pageStructSerializer;

  String? get name;

  String? get slug;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(PageStructBuilder builder) => builder
    ..name = ''
    ..slug = ''
    ..firestoreUtilData = FirestoreUtilData();

  PageStruct._();
  factory PageStruct([void Function(PageStructBuilder) updates]) = _$PageStruct;
}

PageStruct createPageStruct({
  String? name,
  String? slug,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PageStruct(
      (p) => p
        ..name = name
        ..slug = slug
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

PageStruct? updatePageStruct(
  PageStruct? page, {
  bool clearUnsetFields = true,
}) =>
    page != null
        ? (page.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addPageStructData(
  Map<String, dynamic> firestoreData,
  PageStruct? page,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (page == null) {
    return;
  }
  if (page.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && page.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pageData = getPageFirestoreData(page, forFieldValue);
  final nestedData = pageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = page.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getPageFirestoreData(
  PageStruct? page, [
  bool forFieldValue = false,
]) {
  if (page == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(PageStruct.serializer, page);

  // Add any Firestore field values
  page.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPageListFirestoreData(
  List<PageStruct>? pages,
) =>
    pages?.map((p) => getPageFirestoreData(p, true)).toList() ?? [];
