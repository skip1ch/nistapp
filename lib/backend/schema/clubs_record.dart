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

  // "schedule" field.
  String? _schedule;
  String get schedule => _schedule ?? '';
  bool hasSchedule() => _schedule != null;

  // "creator_image" field.
  String? _creatorImage;
  String get creatorImage => _creatorImage ?? '';
  bool hasCreatorImage() => _creatorImage != null;

  // "sphere" field.
  String? _sphere;
  String get sphere => _sphere ?? '';
  bool hasSphere() => _sphere != null;

  // "entry_grade" field.
  String? _entryGrade;
  String get entryGrade => _entryGrade ?? '';
  bool hasEntryGrade() => _entryGrade != null;

  // "format" field.
  String? _format;
  String get format => _format ?? '';
  bool hasFormat() => _format != null;

  // "visible" field.
  bool? _visible;
  bool get visible => _visible ?? false;
  bool hasVisible() => _visible != null;

  // "users_joined_in" field.
  List<DocumentReference>? _usersJoinedIn;
  List<DocumentReference> get usersJoinedIn => _usersJoinedIn ?? const [];
  bool hasUsersJoinedIn() => _usersJoinedIn != null;

  // "club_liked_by" field.
  List<DocumentReference>? _clubLikedBy;
  List<DocumentReference> get clubLikedBy => _clubLikedBy ?? const [];
  bool hasClubLikedBy() => _clubLikedBy != null;

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
    _schedule = snapshotData['schedule'] as String?;
    _creatorImage = snapshotData['creator_image'] as String?;
    _sphere = snapshotData['sphere'] as String?;
    _entryGrade = snapshotData['entry_grade'] as String?;
    _format = snapshotData['format'] as String?;
    _visible = snapshotData['visible'] as bool?;
    _usersJoinedIn = getDataList(snapshotData['users_joined_in']);
    _clubLikedBy = getDataList(snapshotData['club_liked_by']);
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
  String? schedule,
  String? creatorImage,
  String? sphere,
  String? entryGrade,
  String? format,
  bool? visible,
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
      'schedule': schedule,
      'creator_image': creatorImage,
      'sphere': sphere,
      'entry_grade': entryGrade,
      'format': format,
      'visible': visible,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClubsRecordDocumentEquality implements Equality<ClubsRecord> {
  const ClubsRecordDocumentEquality();

  @override
  bool equals(ClubsRecord? e1, ClubsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.logo == e2?.logo &&
        e1?.freePositions == e2?.freePositions &&
        e1?.info == e2?.info &&
        e1?.created == e2?.created &&
        e1?.creatorName == e2?.creatorName &&
        e1?.creatorGrade == e2?.creatorGrade &&
        e1?.creatorLiter == e2?.creatorLiter &&
        e1?.id == e2?.id &&
        e1?.creator == e2?.creator &&
        e1?.schedule == e2?.schedule &&
        e1?.creatorImage == e2?.creatorImage &&
        e1?.sphere == e2?.sphere &&
        e1?.entryGrade == e2?.entryGrade &&
        e1?.format == e2?.format &&
        e1?.visible == e2?.visible &&
        listEquality.equals(e1?.usersJoinedIn, e2?.usersJoinedIn) &&
        listEquality.equals(e1?.clubLikedBy, e2?.clubLikedBy);
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
        e?.creator,
        e?.schedule,
        e?.creatorImage,
        e?.sphere,
        e?.entryGrade,
        e?.format,
        e?.visible,
        e?.usersJoinedIn,
        e?.clubLikedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is ClubsRecord;
}
