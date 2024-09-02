class PartyDetailsMode {
  final String? nome;
  final String? sigla;
  final String? idLegislatura;
  final String? totalMembros;
  final String? urlLogo;
  final String? urlFoto;
  final String? nomelider;
  final String? uflider;
  final List<dynamic>? socialMedia;
  final String? birthDate;
  final String? deathDate;
  final String? birthUf;
  final String? birthCity;
  final String? education;
  final Map<String, dynamic>? cabinet;

  PartyDetailsMode({
    this.nome,
    this.sigla,
    this.idLegislatura,
    this.totalMembros,
    this.urlLogo,
    this.urlFoto,
    this.nomelider,
    this.uflider,
    this.socialMedia,
    this.birthDate,
    this.deathDate,
    this.birthUf,
    this.birthCity,
    this.education,
    this.cabinet,
  });

  factory PartyDetailsMode.fromMap(Map<String, dynamic> map) {
    return PartyDetailsMode(
      nome: map['nome'] ?? '',
      sigla: map['sigla'] ?? '',
      idLegislatura: map['status']['idLegislatura'] ??'',
      totalMembros: map['status']['totalMembros'] ??'' ,
      urlLogo: map['urlLogo'] ?? 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
      urlFoto: map['status']['lider']['urlFoto'] ?? '',
      nomelider: map['status']['lider']['nome'] ?? '',
      uflider: map['status']['lider']['uf'] ?? '',
      socialMedia: map['redeSocial'] ?? [],
      birthDate: map['dataNascimento'] ?? '',
      deathDate: map['dataFalecimento'] ?? '',
      birthUf: map['ufNascimento'] ?? '',
      birthCity: map['municipioNascimento'] ?? '',
      education: map['escolaridade'] ?? '',
      
      
    );
  }
}