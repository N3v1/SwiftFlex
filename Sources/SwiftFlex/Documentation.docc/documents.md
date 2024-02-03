# Documents

Enable people to open and manage documents.

@Metadata {
    @PageColor(red)
}

## Overview

Create a user interface for opening and editing documents using the `SFDocumentGroup` scene type.

![hero](documents-hero)

You initialize the scene with a model that describes the organization of the document’s data, and a view hierarchy that SwiftUI uses to display the document’s contents to the user. You can use either a value type model, which you typically store as a structure, that conforms to the `SFFileDocument` protocol, or a reference type model you store in a class instance that conforms to the `SFReferenceFileDocument` protocol.

SwiftFlex supports standard behaviors that users expect from a document-based app, appropriate for each platform, like multiwindow support, open and save panels, drag and drop, and so on.


### Section header

<!--@START_MENU_TOKEN@-->Text<!--@END_MENU_TOKEN@-->
