import UIKit
import RxSwift
import RxCocoa


public extension Reactive where Base: UIProgressView {
    /// Bindable sink for `progressTintColor` property
    public var progressTintColor: Binder<UIColor?> {
        return Binder(self.base) { view, attr in
            view.progressTintColor = attr
        }
    }

    /// Bindable sink for `trackTintColor` property
    public var trackTintColor: Binder<UIColor?> {
        return Binder(self.base) { view, attr in
            view.trackTintColor = attr
        }
    }
}
