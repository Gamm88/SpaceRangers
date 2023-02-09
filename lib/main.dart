import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    // Настраиваем ориентацию устройства
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .whenComplete(() {   // После завершения настройки ориентации

    // Убираем верхнюю панель
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);

    // Запускаем сцену заставки
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Text("Space Ranger"),
      ),
    ));
  });
}
