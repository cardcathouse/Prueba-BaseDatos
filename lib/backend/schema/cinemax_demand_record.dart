import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CinemaxDemandRecord extends FirestoreRecord {
  CinemaxDemandRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  bool hasYear() => _year != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "actors" field.
  List<String>? _actors;
  List<String> get actors => _actors ?? const [];
  bool hasActors() => _actors != null;

  // "directors" field.
  List<String>? _directors;
  List<String> get directors => _directors ?? const [];
  bool hasDirectors() => _directors != null;

  // "reviews" field.
  List<DocumentReference>? _reviews;
  List<DocumentReference> get reviews => _reviews ?? const [];
  bool hasReviews() => _reviews != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _year = castToType<int>(snapshotData['year']);
    _description = snapshotData['description'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _actors = getDataList(snapshotData['actors']);
    _directors = getDataList(snapshotData['directors']);
    _reviews = getDataList(snapshotData['reviews']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CinemaxDemand');

  static Stream<CinemaxDemandRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CinemaxDemandRecord.fromSnapshot(s));

  static Future<CinemaxDemandRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CinemaxDemandRecord.fromSnapshot(s));

  static CinemaxDemandRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CinemaxDemandRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CinemaxDemandRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CinemaxDemandRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CinemaxDemandRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CinemaxDemandRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCinemaxDemandRecordData({
  String? name,
  int? year,
  String? description,
  double? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'year': year,
      'description': description,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class CinemaxDemandRecordDocumentEquality
    implements Equality<CinemaxDemandRecord> {
  const CinemaxDemandRecordDocumentEquality();

  @override
  bool equals(CinemaxDemandRecord? e1, CinemaxDemandRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.year == e2?.year &&
        e1?.description == e2?.description &&
        e1?.rating == e2?.rating &&
        listEquality.equals(e1?.actors, e2?.actors) &&
        listEquality.equals(e1?.directors, e2?.directors) &&
        listEquality.equals(e1?.reviews, e2?.reviews);
  }

  @override
  int hash(CinemaxDemandRecord? e) => const ListEquality().hash([
        e?.name,
        e?.year,
        e?.description,
        e?.rating,
        e?.actors,
        e?.directors,
        e?.reviews
      ]);

  @override
  bool isValidKey(Object? o) => o is CinemaxDemandRecord;
}
