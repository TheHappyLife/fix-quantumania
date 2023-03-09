// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gem_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GemStruct> _$gemStructSerializer = new _$GemStructSerializer();

class _$GemStructSerializer implements StructuredSerializer<GemStruct> {
  @override
  final Iterable<Type> types = const [GemStruct, _$GemStruct];
  @override
  final String wireName = 'GemStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, GemStruct object,
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
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GemStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GemStructBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
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

class _$GemStruct extends GemStruct {
  @override
  final String? slug;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$GemStruct([void Function(GemStructBuilder)? updates]) =>
      (new GemStructBuilder()..update(updates))._build();

  _$GemStruct._(
      {this.slug, this.name, this.image, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'GemStruct', 'firestoreUtilData');
  }

  @override
  GemStruct rebuild(void Function(GemStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GemStructBuilder toBuilder() => new GemStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GemStruct &&
        slug == other.slug &&
        name == other.name &&
        image == other.image &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, slug.hashCode), name.hashCode), image.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GemStruct')
          ..add('slug', slug)
          ..add('name', name)
          ..add('image', image)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class GemStructBuilder implements Builder<GemStruct, GemStructBuilder> {
  _$GemStruct? _$v;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  GemStructBuilder() {
    GemStruct._initializeBuilder(this);
  }

  GemStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _slug = $v.slug;
      _name = $v.name;
      _image = $v.image;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GemStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GemStruct;
  }

  @override
  void update(void Function(GemStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GemStruct build() => _build();

  _$GemStruct _build() {
    final _$result = _$v ??
        new _$GemStruct._(
            slug: slug,
            name: name,
            image: image,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'GemStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
