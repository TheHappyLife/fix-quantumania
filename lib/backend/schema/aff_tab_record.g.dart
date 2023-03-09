// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aff_tab_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AffTabRecord> _$affTabRecordSerializer =
    new _$AffTabRecordSerializer();

class _$AffTabRecordSerializer implements StructuredSerializer<AffTabRecord> {
  @override
  final Iterable<Type> types = const [AffTabRecord, _$AffTabRecord];
  @override
  final String wireName = 'AffTabRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AffTabRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'item',
      serializers.serialize(object.item,
          specifiedType: const FullType(ItemAffTabStruct)),
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
  AffTabRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AffTabRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'item':
          result.item.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ItemAffTabStruct))!
              as ItemAffTabStruct);
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

class _$AffTabRecord extends AffTabRecord {
  @override
  final ItemAffTabStruct item;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AffTabRecord([void Function(AffTabRecordBuilder)? updates]) =>
      (new AffTabRecordBuilder()..update(updates))._build();

  _$AffTabRecord._({required this.item, this.ffRef}) : super._() {
    BuiltValueNullFieldError.checkNotNull(item, r'AffTabRecord', 'item');
  }

  @override
  AffTabRecord rebuild(void Function(AffTabRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AffTabRecordBuilder toBuilder() => new AffTabRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AffTabRecord && item == other.item && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, item.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AffTabRecord')
          ..add('item', item)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AffTabRecordBuilder
    implements Builder<AffTabRecord, AffTabRecordBuilder> {
  _$AffTabRecord? _$v;

  ItemAffTabStructBuilder? _item;
  ItemAffTabStructBuilder get item =>
      _$this._item ??= new ItemAffTabStructBuilder();
  set item(ItemAffTabStructBuilder? item) => _$this._item = item;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AffTabRecordBuilder() {
    AffTabRecord._initializeBuilder(this);
  }

  AffTabRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AffTabRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AffTabRecord;
  }

  @override
  void update(void Function(AffTabRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AffTabRecord build() => _build();

  _$AffTabRecord _build() {
    _$AffTabRecord _$result;
    try {
      _$result = _$v ?? new _$AffTabRecord._(item: item.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'item';
        item.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AffTabRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
