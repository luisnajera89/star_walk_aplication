import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'black_hole_record.g.dart';

abstract class BlackHoleRecord
    implements Built<BlackHoleRecord, BlackHoleRecordBuilder> {
  static Serializer<BlackHoleRecord> get serializer =>
      _$blackHoleRecordSerializer;

  String? get name;

  String? get type;

  int? get size;

  String? get description;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BlackHoleRecordBuilder builder) => builder
    ..name = ''
    ..type = ''
    ..size = 0
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('black_hole');

  static Stream<BlackHoleRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BlackHoleRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BlackHoleRecord._();
  factory BlackHoleRecord([void Function(BlackHoleRecordBuilder) updates]) =
      _$BlackHoleRecord;

  static BlackHoleRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBlackHoleRecordData({
  String? name,
  String? type,
  int? size,
  String? description,
}) {
  final firestoreData = serializers.toFirestore(
    BlackHoleRecord.serializer,
    BlackHoleRecord(
      (b) => b
        ..name = name
        ..type = type
        ..size = size
        ..description = description,
    ),
  );

  return firestoreData;
}
