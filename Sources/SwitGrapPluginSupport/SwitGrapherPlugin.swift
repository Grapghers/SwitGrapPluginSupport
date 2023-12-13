import Foundation

/// 동적으로 로드 가능한 `xcgrapher` 플러그인의 인터페이스
open class SwitGrapherPlugin {

    // 처리 함수에서 생성된 객체는 어떤 것이든 될 수 있으며 makeArrows(from:) 함수에서 반환됩니다.
    // 여기에서 일반적인 유형을 사용하는 것은 플러그인 로딩을 과도하게 복잡하게 만들고 여러 유형을 사용하는 것을 허용하지 않습니다.
    // 하지만, 다음은 사실일 수 있습니다:
    // associatedtype Any

    required public init() { }

    /// 소스 파일의 내용을 기반으로 그래프 노드 목록을 생성합니다.
    open func process(file: SwitGrapherFile) throws -> [Any] {
        []
    }

    /// `import X` 라인을 기반으로 그래프 노드 목록을 생성합니다.
    open func process(library: SwitGrapherImport) throws -> [Any] {
        []
    }

    /// `process(file:)` 및 `process(library:)`의 결과에서 `XCGrapherArrow` 목록을 생성합니다.
    /// 중복된 `XCGrapherArrow`는 자동으로 제거됩니다.
    open func makeArrows(from processResults: [Any]) throws -> [SwitGrapherArrow] {
        []
    }

}
