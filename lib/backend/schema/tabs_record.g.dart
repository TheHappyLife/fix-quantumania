// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TabsRecord> _$tabsRecordSerializer = new _$TabsRecordSerializer();

class _$TabsRecordSerializer implements StructuredSerializer<TabsRecord> {
  @override
  final Iterable<Type> types = const [TabsRecord, _$TabsRecord];
  @override
  final String wireName = 'TabsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TabsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(TabStruct)),
    ];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  TabsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TabsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(TabStruct))! as TabStruct);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$TabsRecord extends TabsRecord {
  @override
  final String? page;
  @override
  final TabStruct data;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TabsRecord([void Function(TabsRecordBuilder)? updates]) =>
      (new TabsRecordBuilder()..update(updates))._build();

  _$TabsRecord._({this.page, required this.data, this.ffRef}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'TabsRecord', 'data');
  }

  @override
  TabsRecord rebuild(void Function(TabsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TabsRecordBuilder toBuilder() => new TabsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TabsRecord &&
        page == other.page &&
        data == other.data &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, page.hashCode), data.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TabsRecord')
          ..add('page', page)
          ..add('data', data)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TabsRecordBuilder implements Builder<TabsRecord, TabsRecordBuilder> {
  _$TabsRecord? _$v;

  String? _page;
  String? get page => _$this._page;
  set page(String? page) => _$this._page = page;

  TabStructBuilder? _data;
  TabStructBuilder get data => _$this._data ??= new TabStructBuilder();
  set data(TabStructBuilder? data) => _$this._data = data;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TabsRecordBuilder() {
    TabsRecord._initializeBuilder(this);
  }

  TabsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _data = $v.data.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TabsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TabsRecord;
  }

  @override
  void update(void Function(TabsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TabsRecord build() => _build();

  _$TabsRecord _build() {
    _$TabsRecord _$result;
    try {
      _$result = _$v ??
          new _$TabsRecord._(page: page, data: data.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TabsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
