// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'histories_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HistoriesRecord> _$historiesRecordSerializer =
    new _$HistoriesRecordSerializer();

class _$HistoriesRecordSerializer
    implements StructuredSerializer<HistoriesRecord> {
  @override
  final Iterable<Type> types = const [HistoriesRecord, _$HistoriesRecord];
  @override
  final String wireName = 'HistoriesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HistoriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(HistoryStruct)),
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
  HistoriesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistoriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(HistoryStruct))! as HistoryStruct);
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

class _$HistoriesRecord extends HistoriesRecord {
  @override
  final HistoryStruct data;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HistoriesRecord([void Function(HistoriesRecordBuilder)? updates]) =>
      (new HistoriesRecordBuilder()..update(updates))._build();

  _$HistoriesRecord._({required this.data, this.ffRef}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'HistoriesRecord', 'data');
  }

  @override
  HistoriesRecord rebuild(void Function(HistoriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoriesRecordBuilder toBuilder() =>
      new HistoriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoriesRecord &&
        data == other.data &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HistoriesRecord')
          ..add('data', data)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HistoriesRecordBuilder
    implements Builder<HistoriesRecord, HistoriesRecordBuilder> {
  _$HistoriesRecord? _$v;

  HistoryStructBuilder? _data;
  HistoryStructBuilder get data => _$this._data ??= new HistoryStructBuilder();
  set data(HistoryStructBuilder? data) => _$this._data = data;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HistoriesRecordBuilder() {
    HistoriesRecord._initializeBuilder(this);
  }

  HistoriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistoriesRecord;
  }

  @override
  void update(void Function(HistoriesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoriesRecord build() => _build();

  _$HistoriesRecord _build() {
    _$HistoriesRecord _$result;
    try {
      _$result =
          _$v ?? new _$HistoriesRecord._(data: data.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HistoriesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
