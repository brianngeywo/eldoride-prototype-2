import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:prototype/authentication/data/models/rider_data_model.dart';

class RemoteAuthDataSource {
  Future<void> addRidertpFirestore(RiderDataModel rider) async {
    final riderCollection = FirebaseFirestore.instance.collection('riders');
    await riderCollection.add(rider.toJson());
  }
}
