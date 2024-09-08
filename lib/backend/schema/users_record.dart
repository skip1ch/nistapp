import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "surname" field.
  String? _surname;
  String get surname => _surname ?? '';
  bool hasSurname() => _surname != null;

  // "profile_is_full" field.
  bool? _profileIsFull;
  bool get profileIsFull => _profileIsFull ?? false;
  bool hasProfileIsFull() => _profileIsFull != null;

  // "grade" field.
  int? _grade;
  int get grade => _grade ?? 0;
  bool hasGrade() => _grade != null;

  // "liter" field.
  String? _liter;
  String get liter => _liter ?? '';
  bool hasLiter() => _liter != null;

  // "last_notification_read_time" field.
  DateTime? _lastNotificationReadTime;
  DateTime? get lastNotificationReadTime => _lastNotificationReadTime;
  bool hasLastNotificationReadTime() => _lastNotificationReadTime != null;

  // "user_joined" field.
  bool? _userJoined;
  bool get userJoined => _userJoined ?? false;
  bool hasUserJoined() => _userJoined != null;

  // "usercreatedclubsnumber" field.
  int? _usercreatedclubsnumber;
  int get usercreatedclubsnumber => _usercreatedclubsnumber ?? 0;
  bool hasUsercreatedclubsnumber() => _usercreatedclubsnumber != null;

  // "usercreatedteachernumber" field.
  int? _usercreatedteachernumber;
  int get usercreatedteachernumber => _usercreatedteachernumber ?? 0;
  bool hasUsercreatedteachernumber() => _usercreatedteachernumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _surname = snapshotData['surname'] as String?;
    _profileIsFull = snapshotData['profile_is_full'] as bool?;
    _grade = castToType<int>(snapshotData['grade']);
    _liter = snapshotData['liter'] as String?;
    _lastNotificationReadTime =
        snapshotData['last_notification_read_time'] as DateTime?;
    _userJoined = snapshotData['user_joined'] as bool?;
    _usercreatedclubsnumber =
        castToType<int>(snapshotData['usercreatedclubsnumber']);
    _usercreatedteachernumber =
        castToType<int>(snapshotData['usercreatedteachernumber']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? name,
  String? image,
  String? surname,
  bool? profileIsFull,
  int? grade,
  String? liter,
  DateTime? lastNotificationReadTime,
  bool? userJoined,
  int? usercreatedclubsnumber,
  int? usercreatedteachernumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'name': name,
      'image': image,
      'surname': surname,
      'profile_is_full': profileIsFull,
      'grade': grade,
      'liter': liter,
      'last_notification_read_time': lastNotificationReadTime,
      'user_joined': userJoined,
      'usercreatedclubsnumber': usercreatedclubsnumber,
      'usercreatedteachernumber': usercreatedteachernumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.surname == e2?.surname &&
        e1?.profileIsFull == e2?.profileIsFull &&
        e1?.grade == e2?.grade &&
        e1?.liter == e2?.liter &&
        e1?.lastNotificationReadTime == e2?.lastNotificationReadTime &&
        e1?.userJoined == e2?.userJoined &&
        e1?.usercreatedclubsnumber == e2?.usercreatedclubsnumber &&
        e1?.usercreatedteachernumber == e2?.usercreatedteachernumber;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.name,
        e?.image,
        e?.surname,
        e?.profileIsFull,
        e?.grade,
        e?.liter,
        e?.lastNotificationReadTime,
        e?.userJoined,
        e?.usercreatedclubsnumber,
        e?.usercreatedteachernumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
