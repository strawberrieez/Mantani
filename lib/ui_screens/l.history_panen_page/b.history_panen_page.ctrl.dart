part of '_index.dart';

class HistoryPanenPageCtrl {
  init() => logxx.i(HistoryPanenPageCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
