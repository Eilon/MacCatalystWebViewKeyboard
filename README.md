# MacCatalystWebViewKeyboard
MacCatalyst WKWebView keyboard problem repro for an issue experienced by .NET MAUI + Blazor Hybrid users: https://github.com/dotnet/maui/issues/13934

The only interesting file is this one: https://github.com/Eilon/MacCatalystWebViewKeyboard/blob/main/MacCatalystWebViewKeyboard/ContentView.swift

Some details:

* It's a Swift-based app that can run on iPadOS and MacCatalyst (and probably others).
* It creates a ContentView that has a WebView and it loads some static HTML that has a few HTML input elements, buttons, etc.
* Once you run the app, try to use the keyboard (tab/shift+tab, etc.) to navigate between the fields.
* Expected: you should be able to use the tab key to navigate between fields
* Actual: On MacCatalyst the keys do nothing. On iPadOS the keys work fine.
