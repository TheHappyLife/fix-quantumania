import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'gem_struct.g.dart';

abstract class GemStruct implements Built<GemStruct, GemStructBuilder> {
  static Serializer<GemStruct> get serializer => _$gemStructSerializer;

  String? get slug;

  String? get name;

  String? get image;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(GemStructBuilder builder) => builder
    ..slug = ''
    ..name = ''
    ..image = ''
    ..firestoreUtilData = FirestoreUtilData();

  GemStruct._();
  factory GemStruct([void Function(GemStructBuilder) updates]) = _$GemStruct;
}

GemStruct createGemStruct({
  String? slug,
  String? name,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GemStruct(
      (g) => g
        ..slug = slug
        ..name = name
        ..image = image
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

GemStruct? updateGemStruct(
  GemStruct? gem, {
  bool clearUnsetFields = true,
}) =>
    gem != null
        ? (gem.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addGemStructData(
  Map<String, dynamic> firestoreData,
  GemStruct? gem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (gem == null) {
    return;
  }
  if (gem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && gem.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final gemData = getGemFirestoreData(gem, forFieldValue);
  final nestedData = gemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = gem.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getGemFirestoreData(
  GemStruct? gem, [
  bool forFieldValue = false,
]) {
  if (gem == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(GemStruct.serializer, gem);

  // Add any Firestore field values
  gem.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGemListFirestoreData(
  List<GemStruct>? gems,
) =>
    gems?.map((g) => getGemFirestoreData(g, true)).toList() ?? [];
