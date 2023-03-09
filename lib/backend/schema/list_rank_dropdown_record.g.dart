// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_rank_dropdown_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListRankDropdownRecord> _$listRankDropdownRecordSerializer =
    new _$ListRankDropdownRecordSerializer();

class _$ListRankDropdownRecordSerializer
    implements StructuredSerializer<ListRankDropdownRecord> {
  @override
  final Iterable<Type> types = const [
    ListRankDropdownRecord,
    _$ListRankDropdownRecord
  ];
  @override
  final String wireName = 'ListRankDropdownRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ListRankDropdownRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.item;
    if (value != null) {
      result
        ..add('item')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
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
  ListRankDropdownRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListRankDropdownRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'item':
          result.item.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
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

class _$ListRankDropdownRecord extends ListRankDropdownRecord {
  @override
  final BuiltList<int>? item;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ListRankDropdownRecord(
          [void Function(ListRankDropdownRecordBuilder)? updates]) =>
      (new ListRankDropdownRecordBuilder()..update(updates))._build();

  _$ListRankDropdownRecord._({this.item, this.ffRef}) : super._();

  @override
  ListRankDropdownRecord rebuild(
          void Function(ListRankDropdownRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListRankDropdownRecordBuilder toBuilder() =>
      new ListRankDropdownRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListRankDropdownRecord &&
        item == other.item &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, item.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListRankDropdownRecord')
          ..add('item', item)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ListRankDropdownRecordBuilder
    implements Builder<ListRankDropdownRecord, ListRankDropdownRecordBuilder> {
  _$ListRankDropdownRecord? _$v;

  ListBuilder<int>? _item;
  ListBuilder<int> get item => _$this._item ??= new ListBuilder<int>();
  set item(ListBuilder<int>? item) => _$this._item = item;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ListRankDropdownRecordBuilder() {
    ListRankDropdownRecord._initializeBuilder(this);
  }

  ListRankDropdownRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListRankDropdownRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListRankDropdownRecord;
  }

  @override
  void update(void Function(ListRankDropdownRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListRankDropdownRecord build() => _build();

  _$ListRankDropdownRecord _build() {
    _$ListRankDropdownRecord _$result;
    try {
      _$result = _$v ??
          new _$ListRankDropdownRecord._(item: _item?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'item';
        _item?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListRankDropdownRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
