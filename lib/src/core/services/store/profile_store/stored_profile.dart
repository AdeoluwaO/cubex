import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cubex/src/core/services/store/local_store_config.dart';

class StoreProfile {
  const StoreProfile({this.playAudio});
  final bool? playAudio;

  Map<String, dynamic> toJson() {
    return {
      'playAudio': playAudio,
    };
  }

  StoreProfile copyWith({bool? playAudio}) {
    return StoreProfile(playAudio: playAudio ?? this.playAudio);
  }
}
