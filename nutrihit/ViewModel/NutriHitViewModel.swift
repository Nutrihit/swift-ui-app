import Foundation
import SwiftUI
import Combine

public class NutriHitViewModel: ObservableObject {
    public let willChange = PassthroughSubject<NutriHitViewModel, Never>()
    
    @Published var nutriHits: NutriHits = [NutriHit]() {
        didSet {
            willChange.send(self)
        }
    }
    
    fileprivate func extractedFunc(_ url: URL) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                guard let data = data else { return }
                let nutriHits = try JSONDecoder().decode(NutriHits.self, from: data)
                DispatchQueue.main.async {
                    self.nutriHits = nutriHits
                }
            } catch {
                print("Failed To decode: ", error)
            }
        }.resume()
    }
    
    func load() {
        let urlStringAlex = "http://192.168.178.82:3000/nutrihit"
        guard let url = URL(string: "http://localhost:3000/nutrihit") else { return }
        extractedFunc(url)
    }
}
