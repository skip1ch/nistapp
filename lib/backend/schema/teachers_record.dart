import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeachersRecord extends FirestoreRecord {
  TeachersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "achievments" field.
  String? _achievments;
  String get achievments => _achievments ?? '';
  bool hasAchievments() => _achievments != null;

  // "typeofactivity" field.
  String? _typeofactivity;
  String get typeofactivity => _typeofactivity ?? '';
  bool hasTypeofactivity() => _typeofactivity != null;

  // "cabinet" field.
  String? _cabinet;
  String get cabinet => _cabinet ?? '';
  bool hasCabinet() => _cabinet != null;

  // "experience_years" field.
  int? _experienceYears;
  int get experienceYears => _experienceYears ?? 0;
  bool hasExperienceYears() => _experienceYears != null;

  // "teacher_liked_by" field.
  List<DocumentReference>? _teacherLikedBy;
  List<DocumentReference> get teacherLikedBy => _teacherLikedBy ?? const [];
  bool hasTeacherLikedBy() => _teacherLikedBy != null;

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  // "contacts" field.
  String? _contacts;
  String get contacts => _contacts ?? '';
  bool hasContacts() => _contacts != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _subject = snapshotData['subject'] as String?;
    _achievments = snapshotData['achievments'] as String?;
    _typeofactivity = snapshotData['typeofactivity'] as String?;
    _cabinet = snapshotData['cabinet'] as String?;
    _experienceYears = castToType<int>(snapshotData['experience_years']);
    _teacherLikedBy = getDataList(snapshotData['teacher_liked_by']);
    _creator = snapshotData['creator'] as DocumentReference?;
    _contacts = snapshotData['contacts'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teachers');

  static Stream<TeachersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeachersRecord.fromSnapshot(s));

  static Future<TeachersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeachersRecord.fromSnapshot(s));

  static TeachersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TeachersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeachersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeachersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeachersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeachersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeachersRecordData({
  String? name,
  String? image,
  String? subject,
  String? achievments,
  String? typeofactivity,
  String? cabinet,
  int? experienceYears,
  DocumentReference? creator,
  String? contacts,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'subject': subject,
      'achievments': achievments,
      'typeofactivity': typeofactivity,
      'cabinet': cabinet,
      'experience_years': experienceYears,
      'creator': creator,
      'contacts': contacts,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeachersRecordDocumentEquality implements Equality<TeachersRecord> {
  const TeachersRecordDocumentEquality();

  @override
  bool equals(TeachersRecord? e1, TeachersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.subject == e2?.subject &&
        e1?.achievments == e2?.achievments &&
        e1?.typeofactivity == e2?.typeofactivity &&
        e1?.cabinet == e2?.cabinet &&
        e1?.experienceYears == e2?.experienceYears &&
        listEquality.equals(e1?.teacherLikedBy, e2?.teacherLikedBy) &&
        e1?.creator == e2?.creator &&
        e1?.contacts == e2?.contacts;
  }

  @override
  int hash(TeachersRecord? e) => const ListEquality().hash([
        e?.name,
        e?.image,
        e?.subject,
        e?.achievments,
        e?.typeofactivity,
        e?.cabinet,
        e?.experienceYears,
        e?.teacherLikedBy,
        e?.creator,
        e?.contacts
      ]);

  @override
  bool isValidKey(Object? o) => o is TeachersRecord;
}
