// exibir a lista de resultados da pesquisa

class RegistroList extends StatelessWidget {
  final List<Map<String, dynamic>> resultados;

  const RegistroList({Key? key, required this.resultados}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: resultados.length,
        itemBuilder: (context, index) {
          final registro = resultados[index];
          return ListTile(
            title: Text(registro['nome']),
            subtitle: Text(registro['email']),
            trailing: IconButton(
              icon: Icon(Icons.download),
              onPressed: () {
                // Chamar a função para gerar o PDF passando o registro selecionado
                _gerarPDF(registro);
              },
            ),
          );
        },
      ),
    );
  }
}
