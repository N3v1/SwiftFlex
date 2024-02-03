//
//  File.swift
//  
//
//  Created by Nevio Hirani on 03.02.24.
//

import UIKit

final class SFScalingHeaderScrollViewDelegate: NSObject, ObservableObject, UIScrollViewDelegate {
    var didPullToRefresh: () -> Void = { }
    var didPullToLoadMore: () -> Void = { }
    var didScroll: () -> Void = {}
    var didEndDragging = {}
    var didEndDecelerating = {}
    var willEndDragging: (Double) -> Void = {_ in }
    var didReachBottom: () -> Void = {}
    
    // MARK: - UIScrollViewDelegate
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        didScroll()
        let maxYOffset = scrollView.contentSize.height - scrollView.bounds.height
        if scrollView.contentOffset.y >= maxYOffset {
            didReachBottom()
        }
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        willEndDragging(velocity.y)
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if scrollView.contentOffset.y < -60 {
            didPullToRefresh()
        }
        let maxYOffset = scrollView.contentSize.height - scrollView.bounds.height
        if scrollView.contentOffset.y > maxYOffset + 60 {
            didPullToLoadMore()
        }
        
        didEndDragging()
    }
    
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        didEndDragging()
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        didEndDecelerating()
    }
}
