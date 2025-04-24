class Contato {
  String? sId;
  String? nome;
  String? endereco;
  String? telefone;
  String? email;
  String? foto;

  Contato(
      {this.sId,
        this.nome,
        this.endereco,
        this.telefone,
        this.email,
        this.foto});

  Contato.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    nome = json['nome'];
    endereco = json['endereco'];
    telefone = json['telefone'];
    email = json['email'];
    foto = json['foto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['nome'] = this.nome;
    data['endereco'] = this.endereco;
    data['telefone'] = this.telefone;
    data['email'] = this.email;
    data['foto'] = this.foto;
    return data;
  }
}
