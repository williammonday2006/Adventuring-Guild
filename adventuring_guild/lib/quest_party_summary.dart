import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'party_model.dart';

class QuestPartySummary extends StatelessWidget {
  const QuestPartySummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PartyModel>(
      builder: (context, partyModel, child) {
        return Card(
          margin: const EdgeInsets.all(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Quest Party Summary',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text('Party Count: ${partyModel.partyCount}'),
                Text('Total Cost: ${partyModel.totalCost} Gold'),
                const Divider(),
                if (partyModel.party.isEmpty)
                  const Text('No adventurers recruited yet.')
                else
                  ...partyModel.party.map(
                    (adventurer) => ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(adventurer.name),
                      subtitle: Text(adventurer.role),
                      trailing: IconButton(
                        icon: const Icon(Icons.person_remove),
                        tooltip: 'Dismiss ${adventurer.name}',
                        onPressed: () {
                          context
                              .read<PartyModel>()
                              .removeAdventurer(adventurer);
                        },
                      ),
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
