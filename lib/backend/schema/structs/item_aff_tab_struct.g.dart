// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_aff_tab_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemAffTabStruct> _$itemAffTabStructSerializer =
    new _$ItemAffTabStructSerializer();

class _$ItemAffTabStructSerializer
    implements StructuredSerializer<ItemAffTabStruct> {
  @override
  final Iterable<Type> types = const [ItemAffTabStruct, _$ItemAffTabStruct];
  @override
  final String wireName = 'ItemAffTabStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, ItemAffTabStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.slug;
    if (value != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ItemAffTabStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemAffTabStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$ItemAffTabStruct extends ItemAffTabStruct {
  @override
  final String? slug;
  @override
  final String? name;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ItemAffTabStruct(
          [void Function(ItemAffTabStructBuilder)? updates]) =>
      (new ItemAffTabStructBuilder()..update(updates))._build();

  _$ItemAffTabStruct._({this.slug, this.name, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ItemAffTabStruct', 'firestoreUtilData');
  }

  @override
  ItemAffTabStruct rebuild(void Function(ItemAffTabStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemAffTabStructBuilder toBuilder() =>
      new ItemAffTabStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemAffTabStruct &&
        slug == other.slug &&
        name == other.name &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, slug.hashCode), name.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemAffTabStruct')
          ..add('slug', slug)
          ..add('name', name)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ItemAffTabStructBuilder
    implements Builder<ItemAffTabStruct, ItemAffTabStructBuilder> {
  _$ItemAffTabStruct? _$v;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ItemAffTabStructBuilder() {
    ItemAffTabStruct._initializeBuilder(this);
  }

  ItemAffTabStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _slug = $v.slug;
      _name = $v.name;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemAffTabStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemAffTabStruct;
  }

  @override
  void update(void Function(ItemAffTabStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemAffTabStruct build() => _build();

  _$ItemAffTabStruct _build() {
    final _$result = _$v ??
        new _$ItemAffTabStruct._(
            slug: slug,
            name: name,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'ItemAffTabStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
