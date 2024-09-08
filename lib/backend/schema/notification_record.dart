import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationRecord extends FirestoreRecord {
  NotificationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userid" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  // "clubid" field.
  DocumentReference? _clubid;
  DocumentReference? get clubid => _clubid;
  bool hasClubid() => _clubid != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "individual" field.
  DocumentReference? _individual;
  DocumentReference? get individual => _individual;
  bool hasIndividual() => _individual != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userid = snapshotData['userid'] as DocumentReference?;
    _clubid = snapshotData['clubid'] as DocumentReference?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _individual = snapshotData['individual'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('notification')
          : FirebaseFirestore.instance.collectionGroup('notification');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('notification').doc(id);

  static Stream<NotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationRecord.fromSnapshot(s));

  static Future<NotificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationRecord.fromSnapshot(s));

  static NotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationRecordData({
  DocumentReference? userid,
  DocumentReference? clubid,
  DateTime? timestamp,
  DocumentReference? individual,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userid': userid,
      'clubid': clubid,
      'timestamp': timestamp,
      'individual': individual,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationRecordDocumentEquality
    implements Equality<NotificationRecord> {
  const NotificationRecordDocumentEquality();

  @override
  bool equals(NotificationRecord? e1, NotificationRecord? e2) {
    return e1?.userid == e2?.userid &&
        e1?.clubid == e2?.clubid &&
        e1?.timestamp == e2?.timestamp &&
        e1?.individual == e2?.individual;
  }

  @override
  int hash(NotificationRecord? e) => const ListEquality()
      .hash([e?.userid, e?.clubid, e?.timestamp, e?.individual]);

  @override
  bool isValidKey(Object? o) => o is NotificationRecord;
}
