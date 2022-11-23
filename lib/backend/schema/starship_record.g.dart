// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starship_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StarshipRecord> _$starshipRecordSerializer =
    new _$StarshipRecordSerializer();

class _$StarshipRecordSerializer
    implements StructuredSerializer<StarshipRecord> {
  @override
  final Iterable<Type> types = const [StarshipRecord, _$StarshipRecord];
  @override
  final String wireName = 'StarshipRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, StarshipRecord object,
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
  StarshipRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StarshipRecordBuilder();

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

class _$StarshipRecord extends StarshipRecord {
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

  factory _$StarshipRecord([void Function(StarshipRecordBuilder)? updates]) =>
      (new StarshipRecordBuilder()..update(updates))._build();

  _$StarshipRecord._(
      {this.name, this.type, this.size, this.description, this.ffRef})
      : super._();

  @override
  StarshipRecord rebuild(void Function(StarshipRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StarshipRecordBuilder toBuilder() =>
      new StarshipRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StarshipRecord &&
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
    return (newBuiltValueToStringHelper(r'StarshipRecord')
          ..add('name', name)
          ..add('type', type)
          ..add('size', size)
          ..add('description', description)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StarshipRecordBuilder
    implements Builder<StarshipRecord, StarshipRecordBuilder> {
  _$StarshipRecord? _$v;

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

  StarshipRecordBuilder() {
    StarshipRecord._initializeBuilder(this);
  }

  StarshipRecordBuilder get _$this {
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
  void replace(StarshipRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StarshipRecord;
  }

  @override
  void update(void Function(StarshipRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StarshipRecord build() => _build();

  _$StarshipRecord _build() {
    final _$result = _$v ??
        new _$StarshipRecord._(
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
