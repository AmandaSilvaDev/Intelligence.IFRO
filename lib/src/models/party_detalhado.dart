class PartyDetailsModel {
  final String? nome;
  final String? sigla;
  final int? idLegislatura;
  final int? totalMembros;
  final String? urlLogo;
  final String? cpf;
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
    this.cpf,
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
      idLegislatura: map['status']['idLegislatura'] ?? 0,
      totalMembros: map['status']['totalMembros'] ?? 0,
      urlLogo: map['urllogo'] ?? '',
      cpf: map['cpf'] ?? '',
      sex: map['sexo'] ?? '',
      website: map['urlWebsite'] ?? '',
      socialMedia: map['redeSocial'] ?? [],
      birthDate: map['dataNascimento'] ?? '',
      deathDate: map['dataFalecimento'] ?? '',
      birthUf: map['ufNascimento'] ?? '',
      birthCity: map['municipioNascimento'] ?? '',
      education: map['escolaridade'] ?? '',
      cabinet: map['ultimoStatus']['gabinete'] ?? {},
    );
  }
}
