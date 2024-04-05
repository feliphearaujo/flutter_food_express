// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Estado {

  int? id;
  String? ibge;
  String? nome;
  Estado({
    this.id,
    this.ibge,
    this.nome,
  });

  






  Estado copyWith({
    int? id,
    String? ibge,
    String? nome,
  }) {
    return Estado(
      id: id ?? this.id,
      ibge: ibge ?? this.ibge,
      nome: nome ?? this.nome,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ibge': ibge,
      'nome': nome,
    };
  }

  factory Estado.fromMap(Map<String, dynamic> map) {
    return Estado(
      id: map['id'] != null ? map['id'] as int : null,
      ibge: map['ibge'] != null ? map['ibge'] as String : null,
      nome: map['nome'] != null ? map['nome'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Estado.fromJson(String source) => Estado.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Estado(id: $id, ibge: $ibge, nome: $nome)';

  @override
  bool operator ==(covariant Estado other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.ibge == ibge &&
      other.nome == nome;
  }

  @override
  int get hashCode => id.hashCode ^ ibge.hashCode ^ nome.hashCode;
}
