// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationStruct> _$notificationStructSerializer =
    new _$NotificationStructSerializer();

class _$NotificationStructSerializer
    implements StructuredSerializer<NotificationStruct> {
  @override
  final Iterable<Type> types = const [NotificationStruct, _$NotificationStruct];
  @override
  final String wireName = 'NotificationStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.meta;
    if (value != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.read;
    if (value != null) {
      result
        ..add('read')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  NotificationStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'meta':
          result.meta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'read':
          result.read = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$NotificationStruct extends NotificationStruct {
  @override
  final String? title;
  @override
  final String? meta;
  @override
  final DateTime? date;
  @override
  final bool? read;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$NotificationStruct(
          [void Function(NotificationStructBuilder)? updates]) =>
      (new NotificationStructBuilder()..update(updates))._build();

  _$NotificationStruct._(
      {this.title,
      this.meta,
      this.date,
      this.read,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'NotificationStruct', 'firestoreUtilData');
  }

  @override
  NotificationStruct rebuild(
          void Function(NotificationStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationStructBuilder toBuilder() =>
      new NotificationStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationStruct &&
        title == other.title &&
        meta == other.meta &&
        date == other.date &&
        read == other.read &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, title.hashCode), meta.hashCode), date.hashCode),
            read.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationStruct')
          ..add('title', title)
          ..add('meta', meta)
          ..add('date', date)
          ..add('read', read)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class NotificationStructBuilder
    implements Builder<NotificationStruct, NotificationStructBuilder> {
  _$NotificationStruct? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _meta;
  String? get meta => _$this._meta;
  set meta(String? meta) => _$this._meta = meta;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  bool? _read;
  bool? get read => _$this._read;
  set read(bool? read) => _$this._read = read;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  NotificationStructBuilder() {
    NotificationStruct._initializeBuilder(this);
  }

  NotificationStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _meta = $v.meta;
      _date = $v.date;
      _read = $v.read;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationStruct;
  }

  @override
  void update(void Function(NotificationStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationStruct build() => _build();

  _$NotificationStruct _build() {
    final _$result = _$v ??
        new _$NotificationStruct._(
            title: title,
            meta: meta,
            date: date,
            read: read,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'NotificationStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
