// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TabStruct> _$tabStructSerializer = new _$TabStructSerializer();

class _$TabStructSerializer implements StructuredSerializer<TabStruct> {
  @override
  final Iterable<Type> types = const [TabStruct, _$TabStruct];
  @override
  final String wireName = 'TabStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, TabStruct object,
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
  TabStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TabStructBuilder();

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

class _$TabStruct extends TabStruct {
  @override
  final String? slug;
  @override
  final String? name;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$TabStruct([void Function(TabStructBuilder)? updates]) =>
      (new TabStructBuilder()..update(updates))._build();

  _$TabStruct._({this.slug, this.name, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'TabStruct', 'firestoreUtilData');
  }

  @override
  TabStruct rebuild(void Function(TabStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TabStructBuilder toBuilder() => new TabStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TabStruct &&
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
    return (newBuiltValueToStringHelper(r'TabStruct')
          ..add('slug', slug)
          ..add('name', name)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class TabStructBuilder implements Builder<TabStruct, TabStructBuilder> {
  _$TabStruct? _$v;

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

  TabStructBuilder() {
    TabStruct._initializeBuilder(this);
  }

  TabStructBuilder get _$this {
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
  void replace(TabStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TabStruct;
  }

  @override
  void update(void Function(TabStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TabStruct build() => _build();

  _$TabStruct _build() {
    final _$result = _$v ??
        new _$TabStruct._(
            slug: slug,
            name: name,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'TabStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
