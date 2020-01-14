//
//  NewsModel.swift
//  MyFirstSwiftUI
//
//  Created by sunil.kumar1 on 1/14/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit

struct NewsModel:Identifiable {
    var id = UUID()
    var headline : String
    var time     : String
    var newsImage: String
}

let testData = [
    NewsModel(headline: "India visit to salvage Donald Trump's foreign policy legacy?", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "'Be vigilant at all times': Army chief to soldiers deployed along Pak, China borders", time: "Jan 14, 2020, 09.03PM IST", newsImage: "photo"),
    NewsModel(headline: "1st ODI: Warner, Finch help Australia thrash India by 10 wickets", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "Assembly polls: AAP fields Kejriwal from New Delhi seat, Sisodia from Patparganj", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "Shaheen Bagh protests: Police have power to control traffic in such areas, says HC", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "Ukraine plane crash: Iran makes first arrests over airliner downing", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "Nirbhaya case: Convict files mercy plea before President after SC refuses stay on execution", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "This is govt’s plan to fix 'porn problem' on Facebook, Google & more", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "BSF opens fire at 'drone-like objects' near India-Pak border in Ferozepur", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "'Miraculous' escape: How US troops survived missile attack by Iran", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "Kia Carnival revealed, launch at Auto Expo 2020", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "Panic among depositors as RBI imposes curbs on Bengaluru co-operative bank", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "Adv: Hurry up! Limited time offers from Amazon", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "CAA protests: Delhi court pulls up cops, says 'Jama Masjid not in Pakistan'", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "Is Biodegradable Plastic a long term solution?", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "Xiaomi, Samsung are making this 'big change'", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "Hong Kong- A hub of opportunities for students", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo"),
    NewsModel(headline: "Jewellers to sell only hallmarked gold jewellery from Jan 2021: Paswan", time: "Jan 14, 2020, 09.12PM IST", newsImage: "photo")

   ]
