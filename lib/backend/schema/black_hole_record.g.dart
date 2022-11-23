// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'black_hole_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BlackHoleRecord> _$blackHoleRecordSerializer =
    new _$BlackHoleRecordSerializer();

class _$BlackHoleRecordSerializer
    implements StructuredSerializer<BlackHoleRecord> {
  @override
  final Iterable<Type> types = const [BlackHoleRecord, _$BlackHoleRecord];
  @override
  final String wireName = 'BlackHoleRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BlackHoleRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
    value = object.size;
    if (value != null) {
      result
        ..add('size')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
  BlackHoleRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlackHoleRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$BlackHoleRecord extends BlackHoleRecord {
  @override
  final String? name;
  @override
  final String? type;
  @override
  final int? size;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BlackHoleRecord([void Function(BlackHoleRecordBuilder)? updates]) =>
      (new BlackHoleRecordBuilder()..update(updates))._build();

  _$BlackHoleRecord._(
      {this.name, this.type, this.size, this.description, this.ffRef})
      : super._();

  @override
  BlackHoleRecord rebuild(void Function(BlackHoleRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlackHoleRecordBuilder toBuilder() =>
      new BlackHoleRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlackHoleRecord &&
        name == other.name &&
        type == other.type &&
        size == other.size &&
        description == other.description &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), type.hashCode), size.hashCode),
            description.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BlackHoleRecord')
          ..add('name', name)
          ..add('type', type)
          ..add('size', size)
          ..add('description', description)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BlackHoleRecordBuilder
    implements Builder<BlackHoleRecord, BlackHoleRecordBuilder> {
  _$BlackHoleRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BlackHoleRecordBuilder() {
    BlackHoleRecord._initializeBuilder(this);
  }

  BlackHoleRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _size = $v.size;
      _description = $v.description;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlackHoleRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BlackHoleRecord;
  }

  @override
  void update(void Function(BlackHoleRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlackHoleRecord build() => _build();

  _$BlackHoleRecord _build() {
    final _$result = _$v ??
        new _$BlackHoleRecord._(
            name: name,
            type: type,
            size: size,
            description: description,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
