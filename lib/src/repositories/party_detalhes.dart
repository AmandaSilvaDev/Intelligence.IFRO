import 'dart:convert';
import 'package:chamber_deputies/src/models/party_detalhado.dart';
import 'package:chamber_deputies/src/services/client.dart';
import 'package:chamber_deputies/src/models/deputado_detalhes.dart';

class PartyDetailsRepository {
  final HttpClient client;
  final int idParty;

  PartyDetailsRepository({
    required this.client,
    required this.idParty,
  });

  Future<PartyDetailsModel> getPartyDetails() async {
    final response = await client.get(
      url: 'https://dadosabertos.camara.leg.br/api/v2/partidos/$idParty',
    );

    if (response.statusCode == 200) {
      final bodyDecode = jsonDecode(response.body);
      return PartyDetailsModel.fromMap(bodyDecode['dados']);
    } else if (response.statusCode == 404) {
      throw Exception('Url informada não encontrada!');
    } else {
      throw Exception('Erro: ${response.statusCode}');
    }
  }
}
