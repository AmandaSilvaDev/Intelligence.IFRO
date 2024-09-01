import 'dart:math';

import 'package:flutter/material.dart';

// Models Deputies
import 'package:chamber_deputies/src/models/deputados.dart';
import 'package:chamber_deputies/src/models/party.dart';
// Models for Deputy Details
import 'package:chamber_deputies/src/models/deputado_detalhes.dart';
import 'package:chamber_deputies/src/models/party_detalhado.dart';


class InformationPartyWidget extends StatefulWidget {
  final Partymodels party;
  final PartyDetailsModel partyDetails;

  const InformationPartyWidget({
    super.key,
    required this.party,
    required this.partyDetails,
  });

  @override
  State<InformationPartyWidget> createState() =>
      _InformationPartyWidgetState();
}

class _InformationPartyWidgetState extends State<InformationPartyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(254, 254, 254, 1),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 8,
                  right: 8,
                  bottom: 5,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(4, 34, 116, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Informações do Partido',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20,left: 2, right: 3, bottom: 20),
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [  
                    SizedBox(
                      
                      width: 150,
                      
                      
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      
                       Image.network(widget.partyDetails.urlLogo as String)
                       
                      ]
                      ),
                    ), //sizebox que contem a logo do partido 
                   
                    Container(
                      padding: const EdgeInsets.only(
                        top: 2,
                        right: 190,
                        left: 1,
                        bottom: 1),
                     
                   
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Sigla do partido:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 3),
                          Text(
                            (widget.partyDetails.sigla?? ''),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Numero do partido:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                widget.partyDetails.idLegislatura?? '' ,
                                
                                maxLines: 1,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'Total de deputados',
                            style: TextStyle(
                               color: Colors.black,
                               fontSize: 18,
                               fontWeight: FontWeight.bold,
                             ),
                          ),
                            const SizedBox(width: 5),
                           Text(
                            widget.partyDetails.totalMembros ?? '',
                            maxLines: 1,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          // Row(
                          //   children: [
                          //     const Text(
                          //       'Gênero:',
                          //       style: TextStyle(
                          //         color: Colors.black,
                          //         fontSize: 18,
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //     const SizedBox(width: 5),
                          //     Text(
                          //       widget.deputyDetails.sex ?? '',
                          //       style: const TextStyle(
                          //         color: Colors.black,
                          //         fontSize: 18,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // Row(
                          //   children: [
                          //     const Text(
                          //       'UF Nascimento: ',
                          //       style: TextStyle(
                          //         color: Colors.black,
                          //         fontSize: 18,
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //     const SizedBox(width: 5),
                          //     Text(
                          //       widget.deputyDetails.birthUf ?? '',
                          //       style: const TextStyle(
                          //         color: Colors.black,
                          //         fontSize: 18,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     const Text(
                          //       'Data de Nascimento: ',
                          //       style: TextStyle(
                          //         color: Colors.black,
                          //         fontSize: 18,
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //     const SizedBox(width: 5),
                          //     Text(
                          //       widget.deputyDetails.birthDate ?? '',
                          //       style: const TextStyle(
                          //         color: Colors.black,
                          //         fontSize: 18,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // if (widget.deputyDetails.deathDate != '')
                          //   Row(
                          //     children: [
                          //       const Text(
                          //         'Data de Falec.:',
                          //         style: TextStyle(
                          //           color: Colors.black,
                          //           fontSize: 18,
                          //           fontWeight: FontWeight.bold,
                          //         ),
                          //       ),
                          //       const SizedBox(width: 5),
                          //       Text(
                          //         widget.deputyDetails.deathDate ?? '',
                          //         style: const TextStyle(
                          //           color: Colors.black,
                          //           fontSize: 18,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // Row(
                          //   children: [
                          //     const Text(
                          //       'CPF:',
                          //       style: TextStyle(
                          //         color: Colors.black,
                          //         fontSize: 18,
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //     const SizedBox(width: 5),
                          //     Text(
                          //       widget.deputyDetails.cpf ?? '',
                          //       style: const TextStyle(
                          //         color: Colors.black,
                          //         fontSize: 18,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
        
      ),
      
      
    );
  }
}
