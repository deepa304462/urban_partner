import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7007f = fromHex('#7fffffff');

  static Color black9007f = fromHex('#7f000000');

  static Color deepOrangeA100 = fromHex('#ffa681');

  static Color black900B2 = fromHex('#b2000000');

  static Color red600 = fromHex('#ef3636');

  static Color lightGreenA700 = fromHex('#3cfd38');

  static Color teal50077 = fromHex('#770f9e8d');

  static Color indigoA100 = fromHex('#8d79f6');

  static Color gray80002 = fromHex('#454545');

  static Color green900 = fromHex('#008129');

  static Color gray80001 = fromHex('#3f3f3f');

  static Color deepPurpleA10001 = fromHex('#a08cfb');

  static Color black9003f = fromHex('#3f000000');

  static Color cyan60077 = fromHex('#7708b3b3');

  static Color gray80087 = fromHex('#873f3f3f');

  static Color green500 = fromHex('#3cb44a');

  static Color black90087 = fromHex('#87000000');

  static Color yellowA200 = fromHex('#f9ff00');

  static Color black90001 = fromHex('#090b0a');

  static Color greenA700 = fromHex('#00ac47');

  static Color yellowA400 = fromHex('#ffea00');

  static Color whiteA70097 = fromHex('#97ffffff');

  static Color gray80090 = fromHex('#903f3f3f');

  static Color gray20001 = fromHex('#eeeeee');

  static Color yellowA7004c = fromHex('#4cffd600');

  static Color blueGray90001 = fromHex('#263238');

  static Color deepPurpleA200 = fromHex('#5c4efb');

  static Color blueGray900 = fromHex('#303030');

  static Color redA700 = fromHex('#ff0000');

  static Color black90002 = fromHex('#020a25');

  static Color blue900 = fromHex('#094db3');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color gray90066 = fromHex('#661d1d1d');

  static Color blue90019 = fromHex('#19094db3');

  static Color gray800 = fromHex('#505050');

  static Color cyan4007f = fromHex('#7f1cb5e0');

  static Color gray200 = fromHex('#ededed');

  static Color deepPurple50 = fromHex('#efe6f7');

  static Color black90099 = fromHex('#99000000');

  static Color gray10001 = fromHex('#f4f4f4');

  static Color indigo90001 = fromHex('#2b3a71');

  static Color yellowA7007f = fromHex('#7fffd600');

  static Color black90019 = fromHex('#19000000');

  static Color redA70001 = fromHex('#dd0505');

  static Color whiteA700 = fromHex('#ffffff');

  static Color red900 = fromHex('#b50a0a');

  static Color deepPurple500 = fromHex('#7947a0');

  static Color yellowA20001 = fromHex('#e8fd00');

  static Color greenA200 = fromHex('#71ffbb');

  static Color lightGreen900 = fromHex('#2f6c00');

  static Color black900 = fromHex('#000000');

  static Color teal800 = fromHex('#136758');

  static Color yellow700 = fromHex('#f0b82b');

  static Color deepPurpleA100 = fromHex('#b09fff');

  static Color black90026 = fromHex('#26000000');

  static Color deepPurpleA20001 = fromHex('#5d4ffc');

  static Color orangeA100 = fromHex('#fbd370');

  static Color blue800B7 = fromHex('#b71f63c8');

  static Color gray700 = fromHex('#5d5d5d');

  static Color blueGray400 = fromHex('#888888');

  static Color amber600 = fromHex('#fdb500');

  static Color gray900 = fromHex('#1d1d1d');

  static Color gray90001 = fromHex('#1d1e2c');

  static Color orange700 = fromHex('#ff7b00');

  static Color lightGreen90001 = fromHex('#306c00');

  static Color teal80001 = fromHex('#007c35');

  static Color amber200 = fromHex('#fde18b');

  static Color gray7005a = fromHex('#5a5d5d5d');

  static Color gray300 = fromHex('#e1e1e1');

  static Color gray30001 = fromHex('#dfdfdf');

  static Color gray100 = fromHex('#f7f7f7');

  static Color whiteA70087 = fromHex('#87ffffff');

  static Color greenA20001 = fromHex('#79f1b7');

  static Color black90033 = fromHex('#33000000');

  static Color whiteA70001 = fromHex('#fdfdfd');

  static Color indigoA400 = fromHex('#3662ff');

  static Color indigo900 = fromHex('#0b0b95');

  static Color blue90075 = fromHex('#75094db3');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
