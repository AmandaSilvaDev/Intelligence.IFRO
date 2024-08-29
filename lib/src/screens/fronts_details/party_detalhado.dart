import 'package:chamber_deputies/src/screens/deputy_details/widgets/cabinet_widget.dart';
import 'package:flutter/material.dart';
import 'package:chamber_deputies/src/repositories/party_detalhes.dart';
import 'package:chamber_deputies/src/models/party_detalhado.dart';
// Services
import 'package:chamber_deputies/src/services/client.dart';
// Models for Deputies
import 'package:chamber_deputies/src/models/deputados.dart';
// Repositories and Stores for Deputies Details
import 'package:chamber_deputies/src/repositories/party.dart';
import 'package:chamber_deputies/src/screens/fronts_details/party.dart';
import 'package:chamber_deputies/src/armazena_dados/party_detalhes.dart';

class PartyDetails extends StatefulWidget {
  final DeputiesModels party;

  const PartyDetails({
    super.key,
    required this.party,
  });

  @override
  State<PartyDetails> createState() => _PartyDetailsState();
}

class _PartyDetailsState extends State<PartyDetails> {
  static const String titleAppBar = 'Detalhes do Deputado';
  late PartyDetailsStore storePartyDetails;

  @override
  void initState() {
    super.initState();

    storePartyDetails = PartyDetailsStore(
      repository: PartyDetailsRepository(
        client: HttpClient(),
        idDeputy: widget.deputy.id,
      ),
    );
    storePartyDetails.getPartyDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          titleAppBar,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(254, 254, 254, 1),
        child: AnimatedBuilder(
          animation: Listenable.merge(
            [
              storePartyDetails.isLoading,
              storePartyDetails.error,
              storePartyDetails.value,
            ],
          ),
          builder: (context, _) {
            if (storePartyDetails.isLoading.value) {
              return const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.amber),
                ),
              );
            }

            if (storePartyDetails.error.value.isNotEmpty) {
              return const Center(
                child: Text(
                  'Erro: Deputado não encontrado!',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }

            if (storePartyDetails.value.value.name == null) {
              return const Center(
                child: Text('Nenhum dado encontrado!'),
              );
            }

            final PartyDetails = storePartyDetails.value.value;

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      PartyDetails.civilName ?? '',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InformationDeputyWidget(
                      deputy: widget.deputy,
                      PartyDetails: PartyDetails,
                    ),
                    const SizedBox(height: 10),
                    CabinetWidget(
                      deputy: widget.deputy,
                      PartyDetails: PartyDetails,
                    ),
                    const SizedBox(height: 10),
                    ExpensesWidget(deputy: widget.deputy),
                    const SizedBox(height: 10),
                    OccupationsWidget(deputy: widget.deputy),
                    const SizedBox(height: 10),
                    HistoricWidget(deputy: widget.deputy),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
