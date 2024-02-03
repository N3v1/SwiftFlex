# Search

Enable people to search for text or other content within your app.

@Metadata {
    @PageColor(red)
}

## Overview

To present a search field in your app, create and manage storage for search text and optionally for discrete search terms known as tokens. Then bind the storage to the search field by applying the searchable view modifier to a view in your app.

![hero](search-hero)

As people interact with the field, they implicitly modify the underlying storage and, thereby, the search parameters. Your app correspondingly updates other parts of its interface. To enhance the search interaction, you can also:

- Offer suggestions during search, for both text and tokens.
- Implement search scopes that help people to narrow the search space.
- Detect when people activate the search field, and programmatically dismiss the search field using environment values.

## Topics

<!--@START_MENU_TOKEN@-->Text<!--@END_MENU_TOKEN@-->
