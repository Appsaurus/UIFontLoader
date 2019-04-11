//
//  BundleUtils.swift
//  AppsaurusUIKit
//
//  Created by Brian Strobach on 3/10/18.
//

import UIKit

public final class BundleUtils{

    public static func cocoapodBundles() -> [Bundle]{
        //Check pod resource bundles.
        let cocoapodsBundleIdPrefix = "org.cocoapods."
        let podBundles = Bundle.allFrameworks.filter({$0.bundleIdentifier?.containsString(cocoapodsBundleIdPrefix, compareOptions: .caseInsensitive) == true})
        let podResourceBundles = podBundles.map { (bundle) -> [Bundle] in
            let paths = bundle.paths(forResourcesOfType: "bundle", inDirectory: nil)
            return paths.map(Bundle.init).removeNils()
            }.flatMap({$0})
        return podResourceBundles
    }

}

fileprivate extension String{
    func containsString(_ string: String, compareOptions: NSString.CompareOptions) -> Bool {
        return self.range(of: string, options: compareOptions) != nil
    }
    
    func stringAfterRemoving(substrings: String...) -> String{
        return stringAfterReplacing(substrings: substrings, with: "")
    }
    
    func stringAfterReplacing(substrings: [String], with replacement: String) -> String{
        var copy = self
        for string in substrings{
            if let range = copy.range(of: string) {
                copy.replaceSubrange(range, with: replacement)
            }
        }
        return copy
    }
}

fileprivate protocol OptionalType {
    associatedtype Wrapped
    func map<U>(_ f: (Wrapped) throws -> U) rethrows -> U?
}

extension Optional: OptionalType {}

fileprivate extension Sequence where Iterator.Element: OptionalType {
    func removeNils() -> [Iterator.Element.Wrapped] {
        var result: [Iterator.Element.Wrapped] = []
        for element in self {
            if let element = element.map({ $0 }) {
                result.append(element)
            }
        }
        return result
    }
}
