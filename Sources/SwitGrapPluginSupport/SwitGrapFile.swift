import Foundation

/// 주 프로젝트 대상 또는 SPM 패키지에서 나온 소스 파일을 설명합니다.
public struct SwitGrapFile {

    /// 파일의 원본을 설명합니다.
    public enum Origin {
        /// 파일은 xcgrapher 실행 파일의 주 타겟에서 비롯되었습니다.
        case target(name: String)

        /// 파일은 `importName`이라는 Swift 패키지 모듈에서 왔습니다.
        case spm(importName: String)
    }

    /// 파일의 이름입니다. 예: `General.swift`.
    public let filename: String

    /// 파일의 전체 경로입니다.
    public let filepath: String

    /// 파일의 문자열 내용입니다.
    public let fileContents: String

    /// 파일의 원본입니다.
    public let origin: Origin

    public init(filename: String, filepath: String, fileContents: String, origin: Origin) {
        self.filename = filename
        self.filepath = filepath
        self.fileContents = fileContents
        self.origin = origin
    }

}
