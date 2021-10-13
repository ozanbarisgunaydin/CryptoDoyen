//
//  MarketDataService.swift
//  CryptoDoyen
//
//  Created by Ozan Barış Günaydın on 11.10.2021.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil

    var marketDataSubscription: AnyCancellable?
    
    init() {
        getData()
    }
    
    func getData() {
        
        guard let url = URL(string:  "https://api.coingecko.com/api/v3/global") else { return }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: NetworkingManager.handleComplition, receiveValue: { [weak self] (returnedGlobaldata) in
                self?.marketData = returnedGlobaldata.data
                self?.marketDataSubscription?.cancel()
            })
    }
}
