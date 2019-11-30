import Foundation
import SwiftUI
import Combine

public class MicroNutrientsViewModel: ObservableObject {
    public let willChange = PassthroughSubject<MicroNutrientsViewModel, Never>()
    
    @Published var micronutrients: MicroNutrients = [MicroNutrient]() {
        didSet {
            willChange.send(self)
        }
    }
    
    fileprivate func extractedFunc(_ url: URL) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                guard let data = data else { return }
                print(data)
                let micronutrients = try JSONDecoder().decode(MicroNutrients.self, from: data)
                print(micronutrients)
                DispatchQueue.main.async {
                    self.micronutrients = micronutrients
                }
            } catch {
                print("Failed To decode: ", error)
            }
        }.resume()
    }
    
    func load() {
        guard let url = URL(string: "http://192.168.178.82:3000/profile") else { return }
        extractedFunc(url)
    }
}
