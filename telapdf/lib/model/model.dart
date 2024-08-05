// armazenar o estado da pesquisa, otermo de busca e os resultados encontrados.

class RegistroModel extends ChangeNotifier {
  String _termoBusca = "";
  List<Map<String, dynamic>> _resultados = [];

  String get termoBusca => _termoBusca;
  set termoBusca(String value) {
    _termoBusca = value;
    // Implementar lógica para atualizar a lista de resultados baseada no termoBusca
    // ...
    notifyListeners();
  }

  List<Map<String, dynamic>> get resultados => _resultados;
  set resultados(List<Map<String, dynamic>> value) {
    _resultados = value;
    notifyListeners();
  }
}
