import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "info" field.
  String? _info;
  String get info => _info ?? '';
  bool hasInfo() => _info != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

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

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  // "event_liked_by" field.
  List<DocumentReference>? _eventLikedBy;
  List<DocumentReference> get eventLikedBy => _eventLikedBy ?? const [];
  bool hasEventLikedBy() => _eventLikedBy != null;

  // "ddate" field.
  DateTime? _ddate;
  DateTime? get ddate => _ddate;
  bool hasDdate() => _ddate != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _info = snapshotData['info'] as String?;
    _image = snapshotData['image'] as String?;
    _location = snapshotData['location'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _startTime = snapshotData['start_time'] as DateTime?;
    _endTime = snapshotData['end_time'] as DateTime?;
    _creatorName = snapshotData['creator_name'] as String?;
    _creatorGrade = castToType<int>(snapshotData['creator_grade']);
    _creatorLiter = snapshotData['creator_liter'] as String?;
    _creator = snapshotData['creator'] as DocumentReference?;
    _eventLikedBy = getDataList(snapshotData['event_liked_by']);
    _ddate = snapshotData['ddate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? name,
  String? info,
  String? image,
  String? location,
  DateTime? date,
  DateTime? startTime,
  DateTime? endTime,
  String? creatorName,
  int? creatorGrade,
  String? creatorLiter,
  DocumentReference? creator,
  DateTime? ddate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'info': info,
      'image': image,
      'location': location,
      'date': date,
      'start_time': startTime,
      'end_time': endTime,
      'creator_name': creatorName,
      'creator_grade': creatorGrade,
      'creator_liter': creatorLiter,
      'creator': creator,
      'ddate': ddate,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.info == e2?.info &&
        e1?.image == e2?.image &&
        e1?.location == e2?.location &&
        e1?.date == e2?.date &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.creatorName == e2?.creatorName &&
        e1?.creatorGrade == e2?.creatorGrade &&
        e1?.creatorLiter == e2?.creatorLiter &&
        e1?.creator == e2?.creator &&
        listEquality.equals(e1?.eventLikedBy, e2?.eventLikedBy) &&
        e1?.ddate == e2?.ddate;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.info,
        e?.image,
        e?.location,
        e?.date,
        e?.startTime,
        e?.endTime,
        e?.creatorName,
        e?.creatorGrade,
        e?.creatorLiter,
        e?.creator,
        e?.eventLikedBy,
        e?.ddate
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
