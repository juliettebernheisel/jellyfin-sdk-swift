//
// LiveStreamResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct LiveStreamResponse: Codable, Hashable {

    public var mediaSource: MediaSourceInfo?

    public init(mediaSource: MediaSourceInfo? = nil) {
        self.mediaSource = mediaSource
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mediaSource = "MediaSource"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(mediaSource, forKey: .mediaSource)
    }



}