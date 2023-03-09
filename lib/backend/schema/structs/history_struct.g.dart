// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HistoryStruct> _$historyStructSerializer =
    new _$HistoryStructSerializer();

class _$HistoryStructSerializer implements StructuredSerializer<HistoryStruct> {
  @override
  final Iterable<Type> types = const [HistoryStruct, _$HistoryStruct];
  @override
  final String wireName = 'HistoryStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, HistoryStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.meta;
    if (value != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.plus;
    if (value != null) {
      result
        ..add('plus')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tilte;
    if (value != null) {
      result
        ..add('tilte')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.unit;
    if (value != null) {
      result
        ..add('unit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.typeGem;
    if (value != null) {
      result
        ..add('type_gem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gemRef;
    if (value != null) {
      result
        ..add('gemRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  HistoryStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistoryStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'meta':
          result.meta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'plus':
          result.plus = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'tilte':
          result.tilte = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'unit':
          result.unit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type_gem':
          result.typeGem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gemRef':
          result.gemRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$HistoryStruct extends HistoryStruct {
  @override
  final DateTime? date;
  @override
  final String? meta;
  @override
  final bool? plus;
  @override
  final double? price;
  @override
  final String? tilte;
  @override
  final String? type;
  @override
  final String? unit;
  @override
  final String? typeGem;
  @override
  final double? id;
  @override
  final String? status;
  @override
  final DocumentReference<Object?>? gemRef;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$HistoryStruct([void Function(HistoryStructBuilder)? updates]) =>
      (new HistoryStructBuilder()..update(updates))._build();

  _$HistoryStruct._(
      {this.date,
      this.meta,
      this.plus,
      this.price,
      this.tilte,
      this.type,
      this.unit,
      this.typeGem,
      this.id,
      this.status,
      this.gemRef,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'HistoryStruct', 'firestoreUtilData');
  }

  @override
  HistoryStruct rebuild(void Function(HistoryStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryStructBuilder toBuilder() => new HistoryStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryStruct &&
        date == other.date &&
        meta == other.meta &&
        plus == other.plus &&
        price == other.price &&
        tilte == other.tilte &&
        type == other.type &&
        unit == other.unit &&
        typeGem == other.typeGem &&
        id == other.id &&
        status == other.status &&
        gemRef == other.gemRef &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, date.hashCode),
                                                meta.hashCode),
                                            plus.hashCode),
                                        price.hashCode),
                                    tilte.hashCode),
                                type.hashCode),
                            unit.hashCode),
                        typeGem.hashCode),
                    id.hashCode),
                status.hashCode),
            gemRef.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HistoryStruct')
          ..add('date', date)
          ..add('meta', meta)
          ..add('plus', plus)
          ..add('price', price)
          ..add('tilte', tilte)
          ..add('type', type)
          ..add('unit', unit)
          ..add('typeGem', typeGem)
          ..add('id', id)
          ..add('status', status)
          ..add('gemRef', gemRef)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class HistoryStructBuilder
    implements Builder<HistoryStruct, HistoryStructBuilder> {
  _$HistoryStruct? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _meta;
  String? get meta => _$this._meta;
  set meta(String? meta) => _$this._meta = meta;

  bool? _plus;
  bool? get plus => _$this._plus;
  set plus(bool? plus) => _$this._plus = plus;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _tilte;
  String? get tilte => _$this._tilte;
  set tilte(String? tilte) => _$this._tilte = tilte;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  String? _typeGem;
  String? get typeGem => _$this._typeGem;
  set typeGem(String? typeGem) => _$this._typeGem = typeGem;

  double? _id;
  double? get id => _$this._id;
  set id(double? id) => _$this._id = id;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DocumentReference<Object?>? _gemRef;
  DocumentReference<Object?>? get gemRef => _$this._gemRef;
  set gemRef(DocumentReference<Object?>? gemRef) => _$this._gemRef = gemRef;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  HistoryStructBuilder() {
    HistoryStruct._initializeBuilder(this);
  }

  HistoryStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _meta = $v.meta;
      _plus = $v.plus;
      _price = $v.price;
      _tilte = $v.tilte;
      _type = $v.type;
      _unit = $v.unit;
      _typeGem = $v.typeGem;
      _id = $v.id;
      _status = $v.status;
      _gemRef = $v.gemRef;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistoryStruct;
  }

  @override
  void update(void Function(HistoryStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoryStruct build() => _build();

  _$HistoryStruct _build() {
    final _$result = _$v ??
        new _$HistoryStruct._(
            date: date,
            meta: meta,
            plus: plus,
            price: price,
            tilte: tilte,
            type: type,
            unit: unit,
            typeGem: typeGem,
            id: id,
            status: status,
            gemRef: gemRef,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'HistoryStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
