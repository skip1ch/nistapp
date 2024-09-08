import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClubsRecord extends FirestoreRecord {
  ClubsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "free_positions" field.
  int? _freePositions;
  int get freePositions => _freePositions ?? 0;
  bool hasFreePositions() => _freePositions != null;

  // "info" field.
  String? _info;
  String get info => _info ?? '';
  bool hasInfo() => _info != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "creator_name" field.
  String? _creatorName;
  String get creatorName => _creatorName ?? '';
  bool hasCreatorName() => _creatorName != null;

  // "creator_grade" field.
  int? _creatorGrade;
  int get creatorGrade => _creatorGrade ?? 0;
  bool hasCreatorGrade() => _creatorGrade != null;

  // "creator_liter" field.
  String? _creatorLiter;
  String get creatorLiter => _creatorLiter ?? '';
  bool hasCreatorLiter() => _creatorLiter != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _logo = snapshotData['logo'] as String?;
    _freePositions = castToType<int>(snapshotData['free_positions']);
    _info = snapshotData['info'] as String?;
    _created = snapshotData['created'] as DateTime?;
    _creatorName = snapshotData['creator_name'] as String?;
    _creatorGrade = castToType<int>(snapshotData['creator_grade']);
    _creatorLiter = snapshotData['creator_liter'] as String?;
    _id = snapshotData['id'] as String?;
    _creator = snapshotData['creator'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clubs');

  static Stream<ClubsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClubsRecord.fromSnapshot(s));

  static Future<ClubsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClubsRecord.fromSnapshot(s));

  static ClubsRecord fromSnapshot(DocumentSnapshot snapshot) => ClubsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClubsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClubsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClubsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClubsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClubsRecordData({
  String? name,
  String? logo,
  int? freePositions,
  String? info,
  DateTime? created,
  String? creatorName,
  int? creatorGrade,
  String? creatorLiter,
  String? id,
  DocumentReference? creator,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'logo': logo,
      'free_positions': freePositions,
      'info': info,
      'created': created,
      'creator_name': creatorName,
      'creator_grade': creatorGrade,
      'creator_liter': creatorLiter,
      'id': id,
      'creator': creator,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClubsRecordDocumentEquality implements Equality<ClubsRecord> {
  const ClubsRecordDocumentEquality();

  @override
  bool equals(ClubsRecord? e1, ClubsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.logo == e2?.logo &&
        e1?.freePositions == e2?.freePositions &&
        e1?.info == e2?.info &&
        e1?.created == e2?.created &&
        e1?.creatorName == e2?.creatorName &&
        e1?.creatorGrade == e2?.creatorGrade &&
        e1?.creatorLiter == e2?.creatorLiter &&
        e1?.id == e2?.id &&
        e1?.creator == e2?.creator;
  }

  @override
  int hash(ClubsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.logo,
        e?.freePositions,
        e?.info,
        e?.created,
        e?.creatorName,
        e?.creatorGrade,
        e?.creatorLiter,
        e?.id,
        e?.creator
      ]);

  @override
  bool isValidKey(Object? o) => o is ClubsRecord;
}
