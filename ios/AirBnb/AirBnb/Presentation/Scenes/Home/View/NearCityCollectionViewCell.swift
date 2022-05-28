//
//  NearCityCollectionViewCell.swift
//  AirBnb
//
//  Created by 송태환 on 2022/05/27.
//

import SnapKit
import UIKit

class NearCityCollectionViewCell: UICollectionViewCell {
  private let thumbnailView = UIImageView(frame: .zero)
  private let title = UILabel()
  private let subtitle = UILabel()

  override init(frame: CGRect) {
    super.init(frame: frame)
    configureUI()
  }

  required init?(coder: NSCoder) {
    super.init(coder: coder)
    configureUI()
  }

  private func configureUI() {
    configureLayout()
    configureAttributes()
  }

  private func configureAttributes() {
    configureCityNameLabel()
    configureDistanceLabel()
  }

  private func configureCityNameLabel() {
    title.adjustsFontSizeToFitWidth = true
  }

  private func configureDistanceLabel() {
    subtitle.adjustsFontSizeToFitWidth = true
  }

  private func configureLayout() {
    contentView.addSubview(thumbnailView)
    thumbnailView.snp.makeConstraints { make in
      make.top.equalTo(contentView)
      make.leading.equalTo(contentView)
      make.bottom.equalTo(contentView)
    }

    let stack = UIStackView(arrangedSubviews: [title, subtitle])
    stack.axis = .vertical

    contentView.addSubview(stack)
    stack.snp.makeConstraints { make in
      make.centerY.equalTo(thumbnailView)
      make.leading.equalTo(thumbnailView).offset(6)
    }
  }

  private func setImage(_ image: UIImage?) {
    thumbnailView.image = image
  }

  private func setTitle(_ text: String) {
    title.text = text
  }

  private func setSubtitle(_ text: String) {
    subtitle.text = text
  }

  func setData(title: String, subtitle: String, image: UIImage? = nil) {
    setTitle(title)
    setSubtitle(subtitle)
    setImage(image)
  }
}
