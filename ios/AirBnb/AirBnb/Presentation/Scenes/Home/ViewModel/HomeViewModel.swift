//
//  HomeViewModel.swift
//  AirBnb
//
//  Created by 송태환 on 2022/05/27.
//

import Foundation

struct DefaultHomeViewModel {
  struct NearCity {
    var image: String = "gear"
    let title: String
    let subtitle: String
  }

  // TODO: Observable 로 변경
  let bannerImage = "https://s3-alpha-sig.figma.com/img/21b4/b910/27e59a819a2b8cb93633590403acaa63?Expires=1654473600&Signature=H3UXgUlg2p-2iL4ODel45qKyZNWKDe3PqxxtcSFK6mlVeuw5PXeIE4UwPggmnSWYNOyKq6cOnACwNGYqKkg45EtuoqWFn3mp8l4tZuEx7ViFNx0rGp-guxfBvDw4jlIQP5n9hQsrkneEuEzgcwjM7SLzg6PzXmkoC0qRZL0lCGu6tbvymD5VWxSNvNXCoRsMELNOUVeLJcB4YuYp4J8LISfF4Mh9NazJZCZHqRozUKPDkXSLMcm48ttdf7hfUzdeHP8vW~OCE3RiaiR2iozG-brxdZQ4kUh2CLVeA9r7SEhJB1T9VSlQkk3zEL7SH5tJopnM81EaHSdcBxzLqi-P1A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"

  private let titles = ["", "가까운 여행지 둘러보기", "어디에서나, 여행은\n살아보는거야!"]
  private let cities = [
    NearCity(title: "서울", subtitle: "차로 30분 거리"),
    NearCity(title: "서울", subtitle: "차로 30분 거리"),
    NearCity(title: "서울", subtitle: "차로 30분 거리")
  ]

  private let recommendations = [
    NearCity(title: "서울", subtitle: "차로 30분 거리"),
    NearCity(title: "서울", subtitle: "차로 30분 거리"),
    NearCity(title: "서울", subtitle: "차로 30분 거리")
  ]

  func getSectionTitle(at index: Int) -> String {
    titles[index]
  }
}
