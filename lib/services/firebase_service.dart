import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:learn_bloc/firebase_options.dart';

class FirebaseService {
  /// ================== instance of firebase service
  static final FirebaseService _instance = FirebaseService._getInstance();
  /// ================== private constructor for firebase service
  FirebaseService._getInstance();

  /// =============== factory constructor to return the instance
  factory FirebaseService(){
    return _instance;
  }

  /// =============== firebase instances
  static FirebaseAuth? _auth;
  static FirebaseFirestore? _firestore;

  /// =============== initialize firebase and other instances
  static Future<void> initialize() async{
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    _auth = FirebaseAuth.instance;
    _firestore = FirebaseFirestore.instance;
  }

  /// ============== getter for FirebaseFirestore instance
  FirebaseAuth get auth {
    if(_auth == null){
      throw Exception("FirebaseService not initialized");
    }
    return _auth!;
  }

  // ================ getter for FirebaseFirestore instance
  FirebaseFirestore get firestore {
    if (_firestore == null) {
      throw Exception("FirebaseService not initialized");
    }
    return _firestore!;
  }

  /// simple method for sign in
  Future<User?> signInWithEmailAndPassword({required String email, required String password}) async{
    final UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  }
}