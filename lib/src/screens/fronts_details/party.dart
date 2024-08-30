// ignore: unused_import
import 'package:chamber_deputies/src/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:chamber_deputies/src/routes/router.dart';
import 'package:chamber_deputies/src/models/party.dart';
import 'package:chamber_deputies/src/screens/fronts_details/party_detalhado.dart';
import 'package:gap/gap.dart';

class ListPartyWidget extends StatefulWidget {
  final List<Partymodels> party;
  final Function(Partymodels) partyDetailsPage;

  const ListPartyWidget({
    super.key,
    required this.party,
    required this.partyDetailsPage,
    
  });

  @override
  State<ListPartyWidget> createState() => _ListPartyWidgetState();
}

class _ListPartyWidgetState extends State<ListPartyWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      
      padding: const EdgeInsets.all(8.0),
      scrollDirection: Axis.vertical,
      
      
      itemCount: widget.party.length,
      itemBuilder: (context, index)
       {
        final party = widget.party[index];
        
        
        return GestureDetector(
          onTap: () => widget.partyDetailsPage(party),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(254, 254, 254, 1),
              borderRadius: BorderRadius.circular(45),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ), 
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  child: CircleAvatar(
                    radius: 65,
                    backgroundImage: NetworkImage(party.urlPhoto),
                  ),
                ),
                
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color:  Color.fromRGBO(254, 254, 254, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        party.name,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Color.fromRGBO(144, 180, 113, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            color: Color.fromRGBO(144, 180, 113, 1),
                            Icons.people_alt,
                            size: 16,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            party.sigla,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color:Color.fromRGBO(144, 180, 113, 1),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}