// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wrap_heads_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WrapHeadsRecord> _$wrapHeadsRecordSerializer =
    new _$WrapHeadsRecordSerializer();

class _$WrapHeadsRecordSerializer
    implements StructuredSerializer<WrapHeadsRecord> {
  @override
  final Iterable<Type> types = const [WrapHeadsRecord, _$WrapHeadsRecord];
  @override
  final String wireName = 'WrapHeadsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, WrapHeadsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(WrapHeadStruct)),
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
  WrapHeadsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WrapHeadsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WrapHeadStruct))!
              as WrapHeadStruct);
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

class _$WrapHeadsRecord extends WrapHeadsRecord {
  @override
  final WrapHeadStruct data;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WrapHeadsRecord([void Function(WrapHeadsRecordBuilder)? updates]) =>
      (new WrapHeadsRecordBuilder()..update(updates))._build();

  _$WrapHeadsRecord._({required this.data, this.ffRef}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'WrapHeadsRecord', 'data');
  }

  @override
  WrapHeadsRecord rebuild(void Function(WrapHeadsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WrapHeadsRecordBuilder toBuilder() =>
      new WrapHeadsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WrapHeadsRecord &&
        data == other.data &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WrapHeadsRecord')
          ..add('data', data)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WrapHeadsRecordBuilder
    implements Builder<WrapHeadsRecord, WrapHeadsRecordBuilder> {
  _$WrapHeadsRecord? _$v;

  WrapHeadStructBuilder? _data;
  WrapHeadStructBuilder get data =>
      _$this._data ??= new WrapHeadStructBuilder();
  set data(WrapHeadStructBuilder? data) => _$this._data = data;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WrapHeadsRecordBuilder() {
    WrapHeadsRecord._initializeBuilder(this);
  }

  WrapHeadsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WrapHeadsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WrapHeadsRecord;
  }

  @override
  void update(void Function(WrapHeadsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WrapHeadsRecord build() => _build();

  _$WrapHeadsRecord _build() {
    _$WrapHeadsRecord _$result;
    try {
      _$result =
          _$v ?? new _$WrapHeadsRecord._(data: data.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WrapHeadsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
