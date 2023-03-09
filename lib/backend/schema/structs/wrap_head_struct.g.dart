// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wrap_head_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WrapHeadStruct> _$wrapHeadStructSerializer =
    new _$WrapHeadStructSerializer();

class _$WrapHeadStructSerializer
    implements StructuredSerializer<WrapHeadStruct> {
  @override
  final Iterable<Type> types = const [WrapHeadStruct, _$WrapHeadStruct];
  @override
  final String wireName = 'WrapHeadStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, WrapHeadStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.subTitle;
    if (value != null) {
      result
        ..add('sub_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.empty;
    if (value != null) {
      result
        ..add('empty')
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
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WrapHeadStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WrapHeadStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sub_title':
          result.subTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'empty':
          result.empty = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'page':
          result.page = serializers.deserialize(value,
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

class _$WrapHeadStruct extends WrapHeadStruct {
  @override
  final String? subTitle;
  @override
  final String? title;
  @override
  final String? empty;
  @override
  final String? image;
  @override
  final String? page;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$WrapHeadStruct([void Function(WrapHeadStructBuilder)? updates]) =>
      (new WrapHeadStructBuilder()..update(updates))._build();

  _$WrapHeadStruct._(
      {this.subTitle,
      this.title,
      this.empty,
      this.image,
      this.page,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'WrapHeadStruct', 'firestoreUtilData');
  }

  @override
  WrapHeadStruct rebuild(void Function(WrapHeadStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WrapHeadStructBuilder toBuilder() =>
      new WrapHeadStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WrapHeadStruct &&
        subTitle == other.subTitle &&
        title == other.title &&
        empty == other.empty &&
        image == other.image &&
        page == other.page &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, subTitle.hashCode), title.hashCode),
                    empty.hashCode),
                image.hashCode),
            page.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WrapHeadStruct')
          ..add('subTitle', subTitle)
          ..add('title', title)
          ..add('empty', empty)
          ..add('image', image)
          ..add('page', page)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class WrapHeadStructBuilder
    implements Builder<WrapHeadStruct, WrapHeadStructBuilder> {
  _$WrapHeadStruct? _$v;

  String? _subTitle;
  String? get subTitle => _$this._subTitle;
  set subTitle(String? subTitle) => _$this._subTitle = subTitle;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _empty;
  String? get empty => _$this._empty;
  set empty(String? empty) => _$this._empty = empty;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _page;
  String? get page => _$this._page;
  set page(String? page) => _$this._page = page;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  WrapHeadStructBuilder() {
    WrapHeadStruct._initializeBuilder(this);
  }

  WrapHeadStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subTitle = $v.subTitle;
      _title = $v.title;
      _empty = $v.empty;
      _image = $v.image;
      _page = $v.page;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WrapHeadStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WrapHeadStruct;
  }

  @override
  void update(void Function(WrapHeadStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WrapHeadStruct build() => _build();

  _$WrapHeadStruct _build() {
    final _$result = _$v ??
        new _$WrapHeadStruct._(
            subTitle: subTitle,
            title: title,
            empty: empty,
            image: image,
            page: page,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'WrapHeadStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
