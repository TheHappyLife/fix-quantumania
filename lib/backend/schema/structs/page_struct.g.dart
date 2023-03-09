// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PageStruct> _$pageStructSerializer = new _$PageStructSerializer();

class _$PageStructSerializer implements StructuredSerializer<PageStruct> {
  @override
  final Iterable<Type> types = const [PageStruct, _$PageStruct];
  @override
  final String wireName = 'PageStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, PageStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.slug;
    if (value != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PageStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
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

class _$PageStruct extends PageStruct {
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$PageStruct([void Function(PageStructBuilder)? updates]) =>
      (new PageStructBuilder()..update(updates))._build();

  _$PageStruct._({this.name, this.slug, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'PageStruct', 'firestoreUtilData');
  }

  @override
  PageStruct rebuild(void Function(PageStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageStructBuilder toBuilder() => new PageStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageStruct &&
        name == other.name &&
        slug == other.slug &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, name.hashCode), slug.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PageStruct')
          ..add('name', name)
          ..add('slug', slug)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class PageStructBuilder implements Builder<PageStruct, PageStructBuilder> {
  _$PageStruct? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  PageStructBuilder() {
    PageStruct._initializeBuilder(this);
  }

  PageStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _slug = $v.slug;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PageStruct;
  }

  @override
  void update(void Function(PageStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageStruct build() => _build();

  _$PageStruct _build() {
    final _$result = _$v ??
        new _$PageStruct._(
            name: name,
            slug: slug,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'PageStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
