import 'package:blacaknyellow_app/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileProvider = Provider<UserModel>(
  (ref) {
    return UserModel(
        name: 'Aryan Pandit',
        house: 'Red House',
        aadharNo: 'xxxx xxxx xxxx 4885',
        phoneNo: 'xx xxxxx xxx87',
        schoolName: 'Sir Isaac Newton School',
        photoUrl:
            'https://images.unsplash.com/photo-1572460436921-e42ba526dc59?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8dGVlbmFnZSUyMGJveXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60');
  },
);

final heartProvider = StateNotifierProvider<HeartIcon, bool>((ref) {
  return HeartIcon();
});

class HeartIcon extends StateNotifier<bool> {
  HeartIcon() : super(false);
  void toggeleHreart() {
    state = !state;
  }
}
