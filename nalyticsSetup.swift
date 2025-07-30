import Foundation
import Segment
import SegmentMixpanel

class AnalyticsSetup {
    static func initializeSegment() {
        let config = Configuration(writeKey: "YOUR_SEGMENT_WRITE_KEY")
            .use(MixpanelDestination()) // اضافه‌کردن Mixpanel

        Analytics.setup(with: config)

        Analytics.shared().identify("user123", traits: [
            "name": "Hewad Stanikzay",
            "email": "hewad@example.com"
        ])

        Analytics.shared().track("Signed Up", properties: [
            "plan": "Pro",
            "referral": "TikTok"
        ])
    }
}
