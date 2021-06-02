//
// CultureDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Class CultureDto. */
public struct CultureDto: Codable, Hashable {

    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the display name. */
    public var displayName: String?
    /** Gets or sets the name of the two letter ISO language. */
    public var twoLetterISOLanguageName: String?
    /** Gets or sets the name of the three letter ISO language. */
    public var threeLetterISOLanguageName: String?
    public var threeLetterISOLanguageNames: [String]?

    public init(name: String? = nil, displayName: String? = nil, twoLetterISOLanguageName: String? = nil, threeLetterISOLanguageName: String? = nil, threeLetterISOLanguageNames: [String]? = nil) {
        self.name = name
        self.displayName = displayName
        self.twoLetterISOLanguageName = twoLetterISOLanguageName
        self.threeLetterISOLanguageName = threeLetterISOLanguageName
        self.threeLetterISOLanguageNames = threeLetterISOLanguageNames
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case displayName = "DisplayName"
        case twoLetterISOLanguageName = "TwoLetterISOLanguageName"
        case threeLetterISOLanguageName = "ThreeLetterISOLanguageName"
        case threeLetterISOLanguageNames = "ThreeLetterISOLanguageNames"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(twoLetterISOLanguageName, forKey: .twoLetterISOLanguageName)
        try container.encodeIfPresent(threeLetterISOLanguageName, forKey: .threeLetterISOLanguageName)
        try container.encodeIfPresent(threeLetterISOLanguageNames, forKey: .threeLetterISOLanguageNames)
    }



}