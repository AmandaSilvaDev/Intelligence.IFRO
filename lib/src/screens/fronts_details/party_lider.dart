import 'dart:math';

import 'package:flutter/material.dart';

// Models Deputies
import 'package:chamber_deputies/src/models/deputados.dart';
import 'package:chamber_deputies/src/models/party.dart';
// Models for Deputy Details
import 'package:chamber_deputies/src/models/deputado_detalhes.dart';
import 'package:chamber_deputies/src/models/party_detalhado.dart';


class LiderPartyWidget extends StatefulWidget {
  final Partymodels party;
  final PartyDetailsModel partyDetails;

  const LiderPartyWidget({
    super.key,
    required this.party,
    required this.partyDetails,
  });

  @override
  State<LiderPartyWidget> createState() =>
      _LiderPartyWidgetState();
}

class _LiderPartyWidgetState extends State<LiderPartyWidget> {
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
                      'Lider',
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
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(254, 254, 254, 1),
                    borderRadius: BorderRadius.circular(65),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                       child:    CircleAvatar(
                            radius: 65,
                            backgroundImage: NetworkImage(
                              widget.partyDetails.urlFoto as String,
                            ),
                          ),),
                          const SizedBox(height: 10),
                          
                    Container(
                      padding: const EdgeInsets.all(9),
                      
                      margin: const EdgeInsets.only(right: 170),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Nome:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            widget.partyDetails.nomelider ?? '',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'UF:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                widget.partyDetails.uflider ?? '',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            const Text(
                            'Partido:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            widget.partyDetails.sigla ?? '',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                            ],
                          )
                         
                          
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
              ),],
        
      ),
      
      
        ],
      ),
      );
}
}