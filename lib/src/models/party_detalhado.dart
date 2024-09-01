class PartyDetailsModel {
  final String? nome;
  final String? sigla;
  final String? idLegislatura;
  final String? totalMembros;
  final String? urlLogo;
  final String? urlFoto;
  final String? sex;
  final String? website;
  final List<dynamic>? socialMedia;
  final String? birthDate;
  final String? deathDate;
  final String? birthUf;
  final String? birthCity;
  final String? education;
  final Map<String, dynamic>? cabinet;

  PartyDetailsModel({
    this.nome,
    this.sigla,
    this.idLegislatura,
    this.totalMembros,
    this.urlLogo,
    this.urlFoto,
    this.sex,
    this.website,
    this.socialMedia,
    this.birthDate,
    this.deathDate,
    this.birthUf,
    this.birthCity,
    this.education,
    this.cabinet,
  });

  factory PartyDetailsModel.fromMap(Map<String, dynamic> map) {
    return PartyDetailsModel(
      nome: map['nome'] ?? '',
      sigla: map['sigla'] ?? '',
      idLegislatura: map['status']['idLegislatura'] ??'',
      totalMembros: map['status']['totalMembros'] ??'' ,
      urlLogo: map['urlFoto'] ?? '',
      urlFoto: map['status']['lider']['urlFoto'] ?? '',
      sex: map['sexo'] ?? '',
      website: map['urlWebsite'] ?? '',
      socialMedia: map['redeSocial'] ?? [],
      birthDate: map['dataNascimento'] ?? '',
      deathDate: map['dataFalecimento'] ?? '',
      birthUf: map['ufNascimento'] ?? '',
      birthCity: map['municipioNascimento'] ?? '',
      education: map['escolaridade'] ?? '',
      
      
    );
  }
}


