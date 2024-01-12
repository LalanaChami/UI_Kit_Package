//
//  File.swift
//  
//
//  Created by Lalana Chamika on 2024-01-12.
//
// LocalizationService.swift

import Foundation

public class LocalizationService {
    static let shared = LocalizationService()

    private var currentLanguage = "EN"
    private var translations: [String: [String: String]] = [:]

    private init() {
        loadTranslations()
    }

    private func loadTranslations() {
        if let path = Bundle.main.path(forResource: currentLanguage.lowercased(), ofType: "json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
           let json = try? JSONSerialization.jsonObject(with: data, options: []),
           let dictionary = json as? [String: Any],
           let translationsDictionary = dictionary["TRANSLATIONS"] as? [String: [String: String]] {
            translations = translationsDictionary
        }
    }

    public func setLanguage(_ languageCode: String) {
        currentLanguage = languageCode
        loadTranslations()
    }

    public func getLocalizedContent(_ key: String) -> String {
        return translations[currentLanguage]?[key] ?? key
    }
}


