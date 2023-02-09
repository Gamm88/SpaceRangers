bool _running = true;

void startLoop() {
  const double _fps = 50;
  const double _second = 1000;
  final double _updateTime = _second / _fps;
  double _updates = 0;

  Stopwatch _loopWatch = Stopwatch();
  _loopWatch.start();
  Stopwatch _timeWatch = Stopwatch();
  _timeWatch.start();

  while (_running) {
    if (_loopWatch.elapsedMilliseconds > _updateTime) {
      _updates++;
      _loopWatch.reset();
    }

    if (_timeWatch.elapsedMilliseconds > _second) {
      print("${DateTime.now()} FPS: $_updates");
      _updates = 0;
      _timeWatch.reset();
    }
  }

  void stopLoop() {
    _running = false;
  }
}