// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_rank_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListRankRecord> _$listRankRecordSerializer =
    new _$ListRankRecordSerializer();

class _$ListRankRecordSerializer
    implements StructuredSerializer<ListRankRecord> {
  @override
  final Iterable<Type> types = const [ListRankRecord, _$ListRankRecord];
  @override
  final String wireName = 'ListRankRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ListRankRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.item;
    if (value != null) {
      result
        ..add('item')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  ListRankRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListRankRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'item':
          result.item = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$ListRankRecord extends ListRankRecord {
  @override
  final int? item;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ListRankRecord([void Function(ListRankRecordBuilder)? updates]) =>
      (new ListRankRecordBuilder()..update(updates))._build();

  _$ListRankRecord._({this.item, this.ffRef}) : super._();

  @override
  ListRankRecord rebuild(void Function(ListRankRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListRankRecordBuilder toBuilder() =>
      new ListRankRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListRankRecord &&
        item == other.item &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, item.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListRankRecord')
          ..add('item', item)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ListRankRecordBuilder
    implements Builder<ListRankRecord, ListRankRecordBuilder> {
  _$ListRankRecord? _$v;

  int? _item;
  int? get item => _$this._item;
  set item(int? item) => _$this._item = item;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ListRankRecordBuilder() {
    ListRankRecord._initializeBuilder(this);
  }

  ListRankRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListRankRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListRankRecord;
  }

  @override
  void update(void Function(ListRankRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListRankRecord build() => _build();

  _$ListRankRecord _build() {
    final _$result = _$v ?? new _$ListRankRecord._(item: item, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
