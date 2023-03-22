//
//  ContentView.swift
//  MacCatalystWebViewKeyboard
//
//  Created by Eilon Lipton on 3/22/23.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @StateObject var model = WebViewModel()

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            WebView(webView: model.webView)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Portions of the following code were copied from: https://benoitpasquier.com/create-webview-in-swiftui/

class WebViewModel: ObservableObject {
    let webView: WKWebView
    
    init() {
        webView = WKWebView(frame: .zero)

        webView.loadHTMLString(
            """
            <html>
               <body>
                    <div>
                        Field 1: <input type="text" />
                    </div>
                    <div>
                        Field 2: <input type="text" />
                    </div>
                    <div>
                        Field 3: <input type="text" />
                    </div>
                    <div>
                        Field 4: <textarea rows="5" cols="20"></textarea>
                    </div>
                    <div>
                        <button>Button 1</button>
                        <button>Button 2</button>
                        <button>Button 3</button>
                    </div>
               </body>
            </html>
            """, baseURL: nil)
    }
    }
                  
struct WebView: UIViewRepresentable {
    typealias UIViewType = WKWebView

    let webView: WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) { }
}
