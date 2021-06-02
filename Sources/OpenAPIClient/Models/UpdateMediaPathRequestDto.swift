//
// UpdateMediaPathRequestDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Update library options dto. */
public struct UpdateMediaPathRequestDto: Codable, Hashable {

    /** Gets or sets the library name. */
    public var name: String
    /** Gets or sets library folder path information. */
    public var pathInfo: MediaPathInfo

    public init(name: String, pathInfo: MediaPathInfo) {
        self.name = name
        self.pathInfo = pathInfo
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case pathInfo = "PathInfo"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(pathInfo, forKey: .pathInfo)
    }



}