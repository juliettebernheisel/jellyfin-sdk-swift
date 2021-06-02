//
// LibraryOptionInfoDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Library option info dto. */
public struct LibraryOptionInfoDto: Codable, Hashable {

    /** Gets or sets name. */
    public var name: String?
    /** Gets or sets a value indicating whether default enabled. */
    public var defaultEnabled: Bool?

    public init(name: String? = nil, defaultEnabled: Bool? = nil) {
        self.name = name
        self.defaultEnabled = defaultEnabled
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case defaultEnabled = "DefaultEnabled"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(defaultEnabled, forKey: .defaultEnabled)
    }



}