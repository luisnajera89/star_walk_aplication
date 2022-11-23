import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'starship_record.g.dart';

abstract class StarshipRecord
    implements Built<StarshipRecord, StarshipRecordBuilder> {
  static Serializer<StarshipRecord> get serializer =>
      _$starshipRecordSerializer;

  String? get name;

  String? get type;

  int? get size;

  String? get description;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StarshipRecordBuilder builder) => builder
    ..name = ''
    ..type = ''
    ..size = 0
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('starship');

  static Stream<StarshipRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StarshipRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StarshipRecord._();
  factory StarshipRecord([void Function(StarshipRecordBuilder) updates]) =
      _$StarshipRecord;

  static StarshipRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStarshipRecordData({
  String? name,
  String? type,
  int? size,
  String? description,
}) {
  final firestoreData = serializers.toFirestore(
    StarshipRecord.serializer,
    StarshipRecord(
      (s) => s
        ..name = name
        ..type = type
        ..size = size
        ..description = description,
    ),
  );

  return firestoreData;
}
