# Phase 1
I created the Adventurer class and PartyModel to store party members and calculate the party count and total gold cost. notifyListeners() tells listening widgets when the data changes. Without it, the UI might not update when an adventurer is added or removed.

# Phase 2
I added ChangeNotifierProvider above MyApp so all screens can access the same PartyModel. Placing it high in the widget tree prevents each small widget from creating a separate party and keeps the shared state available throughout the app.

# Phase 3
I created GuildHallRoster to display available adventurers and their gold costs. The Recruit button uses context.read to add an adventurer to PartyModel without listening for changes. context.watch is for widgets that need to rebuild when state changes.

# Phase 4
I created QuestPartySummary using Consumer to rebuild the UI when PartyModel changes. When Recruit is pressed, the model adds the adventurer and calls notifyListeners(), which triggers the summary to rebuild with the updated count and cost.

# Phase 5
I tested recruiting and dismissing adventurers and checked that the party count and total cost updated correctly. I also tested an empty party and duplicate recruits. Provider and notifyListeners() let the summary update automatically without manually refreshing the UI.