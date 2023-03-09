// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gems_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GemsRecord> _$gemsRecordSerializer = new _$GemsRecordSerializer();

class _$GemsRecordSerializer implements StructuredSerializer<GemsRecord> {
  @override
  final Iterable<Type> types = const [GemsRecord, _$GemsRecord];
  @override
  final String wireName = 'GemsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GemsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(GemStruct)),
    ];
    Object? value;
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
  GemsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GemsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(GemStruct))! as GemStruct);
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

class _$GemsRecord extends GemsRecord {
  @override
  final GemStruct data;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GemsRecord([void Function(GemsRecordBuilder)? updates]) =>
      (new GemsRecordBuilder()..update(updates))._build();

  _$GemsRecord._({required this.data, this.ffRef}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'GemsRecord', 'data');
  }

  @override
  GemsRecord rebuild(void Function(GemsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GemsRecordBuilder toBuilder() => new GemsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GemsRecord && data == other.data && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GemsRecord')
          ..add('data', data)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GemsRecordBuilder implements Builder<GemsRecord, GemsRecordBuilder> {
  _$GemsRecord? _$v;

  GemStructBuilder? _data;
  GemStructBuilder get data => _$this._data ??= new GemStructBuilder();
  set data(GemStructBuilder? data) => _$this._data = data;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GemsRecordBuilder() {
    GemsRecord._initializeBuilder(this);
  }

  GemsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GemsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GemsRecord;
  }

  @override
  void update(void Function(GemsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GemsRecord build() => _build();

  _$GemsRecord _build() {
    _$GemsRecord _$result;
    try {
      _$result = _$v ?? new _$GemsRecord._(data: data.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GemsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
