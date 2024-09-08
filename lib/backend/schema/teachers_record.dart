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

  // "surname" field.
  String? _surname;
  String get surname => _surname ?? '';
  bool hasSurname() => _surname != null;

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

  // "isOlympiad" field.
  bool? _isOlympiad;
  bool get isOlympiad => _isOlympiad ?? false;
  bool hasIsOlympiad() => _isOlympiad != null;

  // "isProject" field.
  bool? _isProject;
  bool get isProject => _isProject ?? false;
  bool hasIsProject() => _isProject != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _surname = snapshotData['surname'] as String?;
    _image = snapshotData['image'] as String?;
    _subject = snapshotData['subject'] as String?;
    _achievments = snapshotData['achievments'] as String?;
    _isOlympiad = snapshotData['isOlympiad'] as bool?;
    _isProject = snapshotData['isProject'] as bool?;
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
  String? surname,
  String? image,
  String? subject,
  String? achievments,
  bool? isOlympiad,
  bool? isProject,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'surname': surname,
      'image': image,
      'subject': subject,
      'achievments': achievments,
      'isOlympiad': isOlympiad,
      'isProject': isProject,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeachersRecordDocumentEquality implements Equality<TeachersRecord> {
  const TeachersRecordDocumentEquality();

  @override
  bool equals(TeachersRecord? e1, TeachersRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.surname == e2?.surname &&
        e1?.image == e2?.image &&
        e1?.subject == e2?.subject &&
        e1?.achievments == e2?.achievments &&
        e1?.isOlympiad == e2?.isOlympiad &&
        e1?.isProject == e2?.isProject;
  }

  @override
  int hash(TeachersRecord? e) => const ListEquality().hash([
        e?.name,
        e?.surname,
        e?.image,
        e?.subject,
        e?.achievments,
        e?.isOlympiad,
        e?.isProject
      ]);

  @override
  bool isValidKey(Object? o) => o is TeachersRecord;
}
