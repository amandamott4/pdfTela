//Gerencia a tela principal, o campo de pesquisa, o botão de busca e a lista de resultados

class RegistroScreen extends StatefulWidget {
  @override
  _RegistroScreenState createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {
  final RegistroModel _model = RegistroModel();

  void _buscarRegistros() async {
    // Utilizar o RegistroService para buscar os registros (se aplicável)
    // final resultados = await RegistroService().buscarRegistros(_model.termoBusca);
    // _model.resultados = resultados;

    // Implementar a lógica para buscar os registros baseada no termoBusca
    // ...

    setState(() {
      // Atualizar a lista de resultados
    });
  }

  Future<void> _gerarPDF(Map<String, dynamic> registro) async {
    final pdf = pw.Document();
    // ... Adicionar conteúdo do registro ao PDF
    final file = await pdf.save();
    await OpenFile.open(file);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registros'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: TextEditingController(text: _model.termoBusca),
              decoration: InputDecoration(
                labelText: 'Pesquisar',
              ),
              onChanged: (value) {
                _model.termoBusca = value;
              },
            ),
            ElevatedButton(
              onPressed: _buscarRegistros,
              child: Text('Buscar'),
            ),
            RegistroList(resultados: _model.resultados),
          ],
        ),
      ),
    );
  }
}
