class Camera {
  // Propriedades privadas (começam com _)
  int _id;
  String _marca;
  String _cor;
  double _preco;

  // Construtor
  Camera(this._id, this._marca, this._cor, this._preco);

  // Getters
  int get id => _id;
  String get marca => _marca;
  String get cor => _cor;
  double get preco => _preco;

  // Setters
  set id(int novoId) {
    if (novoId > 0) {
      _id = novoId;
    }
  }

  set marca(String novaMarca) {
    if (novaMarca.isNotEmpty) {
      _marca = novaMarca;
    }
  }

  set cor(String novaCor) {
    if (novaCor.isNotEmpty) {
      _cor = novaCor;
    }
  }

  set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }

  // Método para exibir os detalhes da câmera
  void mostrarDetalhes() {
    print("ID: $_id, Marca: $_marca, Cor: $_cor, Preço: $_preco reais");
  }
}

void main() {
  // Criando três objetos da classe Camera
  Camera camera1 = Camera(1, "Canon", "Preta", 3500.0);
  Camera camera2 = Camera(2, "Nikon", "Branca", 4200.0);
  Camera camera3 = Camera(3, "Sony", "Cinza", 5000.0);

  // Modificando valores com os setters
  camera1.preco = 3400.0; // Alterando o preço da câmera 1

  // Exibindo os detalhes de cada câmera
  camera1.mostrarDetalhes();
  camera2.mostrarDetalhes();
  camera3.mostrarDetalhes();
}
