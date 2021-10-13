//
//  MarketDataModel.swift
//  CryptoDoyen
//
//  Created by Ozan Barış Günaydın on 11.10.2021.
//

import Foundation

// JSON Data:
/*
 URL: https://api.coingecko.com/api/v3/global

 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 9642,
     "upcoming_icos": 0,
     "ongoing_icos": 50,
     "ended_icos": 3375,
     "markets": 656,
     "total_market_cap": {
       "btc": 42727783.942666754,
       "eth": 679507401.1718563,
       "ltc": 13423935319.109554,
       "bch": 4026228904.364849,
       "bnb": 5829596170.607669,
       "eos": 524427347205.003,
       "xrp": 2109788834862.209,
       "xlm": 6870817653063.619,
       "link": 93346255129.59827,
       "dot": 69790125514.3045,
       "yfi": 72106663.768898,
       "usd": 2451366981393.4297,
       "aed": 9003821895318.44,
       "ars": 242321271293441.7,
       "aud": 3328794570511.5044,
       "bdt": 209796617530791.3,
       "bhd": 924101616443.8071,
       "bmd": 2451366981393.4297,
       "brl": 13521495132668.02,
       "cad": 3052934889994.3564,
       "chf": 2268291541122.0225,
       "clp": 2021029507809812.8,
       "cny": 15809355936402.5,
       "czk": 53782994023139.016,
       "dkk": 15755499403821.277,
       "eur": 2117588853206.8987,
       "gbp": 1796724526278.3499,
       "hkd": 19072444066344.754,
       "huf": 760516379748348.6,
       "idr": 34815294416542036,
       "ils": 7916839199795.957,
       "inr": 184873049741164.25,
       "jpy": 277429335361184.75,
       "krw": 2931662198685866.5,
       "kwd": 739359246625.0553,
       "lkr": 490322026496862.6,
       "mmk": 4811293280013103,
       "mxn": 51007553875437.98,
       "myr": 10222200312410.586,
       "ngn": 1006948014946980.5,
       "nok": 20962112171722.605,
       "nzd": 3526399262881.6304,
       "php": 124562528754934.22,
       "pkr": 419409335962004.94,
       "pln": 9729956017078.871,
       "rub": 175603673712118.22,
       "sar": 9193991591633.992,
       "sek": 21412408675268.727,
       "sgd": 3316518124668.6846,
       "thb": 82504432809267.73,
       "try": 21975142028150.445,
       "twd": 68686077135153.18,
       "uah": 64630964590357.43,
       "vef": 245455375846.92386,
       "vnd": 55738480787763550,
       "zar": 36743130305820.22,
       "xdr": 1736639070197.4167,
       "xag": 107894760483.08827,
       "xau": 1395587736.1770914,
       "bits": 42727783942666.76,
       "sats": 4272778394266675.5
     },
     "total_volume": {
       "btc": 2445623.709620782,
       "eth": 38893180.45135607,
       "ltc": 768350039.7980422,
       "bch": 230450539.67899802,
       "bnb": 333670443.3696595,
       "eos": 30016814258.821537,
       "xrp": 120758652116.2836,
       "xlm": 393267167315.78424,
       "link": 5342889185.537477,
       "dot": 3994599529.99708,
       "yfi": 4127191.9641677663,
       "usd": 140309668732.68472,
       "aed": 515354607061.7764,
       "ars": 13869819394703.283,
       "aud": 190531269700.84946,
       "bdt": 12008195480486.773,
       "bhd": 52893097060.83511,
       "bmd": 140309668732.68472,
       "brl": 773934101762.6157,
       "cad": 174741801749.35416,
       "chf": 129830921742.72156,
       "clp": 115678306386661.92,
       "cny": 904885115590.83,
       "czk": 3078394272304.7827,
       "dkk": 901802512168.7723,
       "eur": 121205104238.0423,
       "gbp": 102839691078.2837,
       "hkd": 1091655524930.9696,
       "huf": 43529917029238.76,
       "idr": 1992734039209081.2,
       "ils": 453138634061.99866,
       "inr": 10581637332831.797,
       "jpy": 15879310783214.527,
       "krw": 167800478286580.28,
       "kwd": 42318939496.133865,
       "lkr": 28064717209745.254,
       "mmk": 275385518128624.03,
       "mxn": 2919535525055.9443,
       "myr": 585091318615.2944,
       "ngn": 57635002625324.99,
       "nok": 1199815057099.2515,
       "nzd": 201841632097.39127,
       "php": 7129624931219.276,
       "pkr": 24005865069934.86,
       "pln": 556916575895.0972,
       "rub": 10051083119665.863,
       "sar": 526239410233.0516,
       "sek": 1225588820768.0957,
       "sgd": 189828598879.83606,
       "thb": 4722332365701.591,
       "try": 1257798168012.7034,
       "twd": 3931406763055.4585,
       "uah": 3699303001296.1216,
       "vef": 14049207130.203709,
       "vnd": 3190321087929775.5,
       "zar": 2103078192919.5327,
       "xdr": 99400560787.97696,
       "xag": 6175606596.760639,
       "xau": 79879697.50620463,
       "bits": 2445623709620.782,
       "sats": 244562370962078.22
     },
     "market_cap_percentage": {
       "btc": 44.09502029237254,
       "eth": 17.423940719834587,
       "ada": 2.9091905322825604,
       "usdt": 2.85842620182195,
       "bnb": 2.657948864222027,
       "xrp": 2.2300400973882195,
       "sol": 1.830859743453122,
       "dot": 1.4925954649794353,
       "usdc": 1.3671128533512484,
       "doge": 1.2718819716618681
     },
     "market_cap_change_percentage_24h_usd": 2.2602251675114626,
     "updated_at": 1633960595
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {

        if let item = totalMarketCap.first(where: {$0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}
