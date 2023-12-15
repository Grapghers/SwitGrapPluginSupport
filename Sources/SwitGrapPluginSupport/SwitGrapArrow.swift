import Foundation

/// 출력 그래프에서의 GraphViz "에지" (화살표)를 정의합니다.
public struct SwitGrapArrow: Hashable {

    /// 에지가 시작하는 그래프 노드의 이름입니다.
    public let origin: String

    /// 에지가 가리키는 그래프 노드의 이름입니다.
    public let destination: String

    /// 에지의 색상입니다. 예: `#FF0000`
    public let color: String

    public init(origin: String, destination: String, color: String = "#000000") {
        self.origin = origin
        self.destination = destination
        self.color = color
    }

}
