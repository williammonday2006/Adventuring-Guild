# Phase 1
I created the Adventurer class and PartyModel to store party members and calculate the party count and total gold cost. notifyListeners() tells listening widgets when the data changes. Without it, the UI might not update when an adventurer is added or removed.

# Phase 2
I added ChangeNotifierProvider above MyApp so all screens can access the same PartyModel. Placing it high in the widget tree prevents each small widget from creating a separate party and keeps the shared state available throughout the app.