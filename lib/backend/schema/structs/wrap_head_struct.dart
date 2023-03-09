import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'wrap_head_struct.g.dart';

abstract class WrapHeadStruct
    implements Built<WrapHeadStruct, WrapHeadStructBuilder> {
  static Serializer<WrapHeadStruct> get serializer =>
      _$wrapHeadStructSerializer;

  @BuiltValueField(wireName: 'sub_title')
  String? get subTitle;

  String? get title;

  String? get empty;

  String? get image;

  String? get page;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(WrapHeadStructBuilder builder) => builder
    ..subTitle = ''
    ..title = ''
    ..empty = ''
    ..image = ''
    ..page = ''
    ..firestoreUtilData = FirestoreUtilData();

  WrapHeadStruct._();
  factory WrapHeadStruct([void Function(WrapHeadStructBuilder) updates]) =
      _$WrapHeadStruct;
}

WrapHeadStruct createWrapHeadStruct({
  String? subTitle,
  String? title,
  String? empty,
  String? image,
  String? page,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WrapHeadStruct(
      (w) => w
        ..subTitle = subTitle
        ..title = title
        ..empty = empty
        ..image = image
        ..page = page
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

WrapHeadStruct? updateWrapHeadStruct(
  WrapHeadStruct? wrapHead, {
  bool clearUnsetFields = true,
}) =>
    wrapHead != null
        ? (wrapHead.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addWrapHeadStructData(
  Map<String, dynamic> firestoreData,
  WrapHeadStruct? wrapHead,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (wrapHead == null) {
    return;
  }
  if (wrapHead.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && wrapHead.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final wrapHeadData = getWrapHeadFirestoreData(wrapHead, forFieldValue);
  final nestedData = wrapHeadData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = wrapHead.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getWrapHeadFirestoreData(
  WrapHeadStruct? wrapHead, [
  bool forFieldValue = false,
]) {
  if (wrapHead == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(WrapHeadStruct.serializer, wrapHead);

  // Add any Firestore field values
  wrapHead.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWrapHeadListFirestoreData(
  List<WrapHeadStruct>? wrapHeads,
) =>
    wrapHeads?.map((w) => getWrapHeadFirestoreData(w, true)).toList() ?? [];
