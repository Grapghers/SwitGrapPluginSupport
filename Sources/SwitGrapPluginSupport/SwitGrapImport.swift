import Foundation

/// `import X`를 설명합니다.
public struct SwitGrapImport {

    /// 가져온 모듈의 유형입니다.
    public enum ModuleType {
        /// 모듈은 --target 인자의 주 타겟입니다.
        case target

        /// 모듈 `SwitGrapImport.name`은 Apple 프레임워크입니다.
        case apple

        /// 모듈 `SwitGrapImport.name`은 Cocoapods 프레임워크입니다.
        case cocoapods

        /// 모듈 `SwitGrapImport.name`은 Swift Package Manager 프레임워크입니다.
        case spm

        /// 모듈 `SwitGrapImport.name`이 어디서 비롯된 것인지 결정할 수 없습니다.
        case other
    }

    /// 가져온 모듈의 이름입니다.
    public let moduleName: String

    /// `moduleName`을 가져오는 모듈의 이름입니다.
    public let importerName: String

    /// 가져온 모듈의 유형입니다.
    public let moduleType: ModuleType

    /// `moduleName`을 가져오는 모듈의 유형입니다.
    public let importerType: ModuleType

    public init(moduleName: String, importerName: String, moduleType: ModuleType, importerType: ModuleType) {
        self.moduleName = moduleName
        self.importerName = importerName
        self.moduleType = moduleType
        self.importerType = importerType
    }

}
