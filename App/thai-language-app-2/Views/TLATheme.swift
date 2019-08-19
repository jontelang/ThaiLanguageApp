//
//  TLATheme.swift
//  thai-language-app-2
//
//  Created by Jonathan on 4/22/18.
//  Copyright © 2018 Jonathan Winger Lang. All rights reserved.
//

import UIKit

class TLATheme: NSObject {

    var themeTextColor: UIColor?
    var themeBackgroundColor: UIColor?
    var themeFont: UIFont?
    var themeRadius: CGFloat = 0.0
    
    // UILabel specific
    var themeNumberOfLines = 1
    var themeAdjustFontToSize = false
    var themeTextAlignment = NSTextAlignment.left
    
    // UIButton specific
    var themeImage: UIImage?
    
}

extension TLATheme {
    enum Onboarding {
        enum Label {
            static func Title() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = UIColor.black
                theme.themeFont = UIFont.appRegularThaiFont().withSize(40.0)
                return theme
            }
        }
        enum Button {
            static func Continue() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = .appTint
                theme.themeFont = UIFont.appRegularFont().withSize(24.0)
                return theme
            }
        }
    }
    enum Menu {
        enum Label {
            //
            // TODO: Split names in these funcs?
            //
            static func WelcomeTitle() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = UIColor.black
                theme.themeFont = UIFont.appBoldFont().withSize(16.0)
                return theme
            }
            static func WelcomeSubtitle() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = UIColor.darkGray
                theme.themeFont = UIFont.appRegularFont()
                return theme
            }
            static func Usage() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = UIColor.black
                theme.themeFont = UIFont.appRegularFont().withSize(60.0)
                theme.themeAdjustFontToSize = true
                return theme
            }
            static func UsageDescription() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = UIColor.black
                theme.themeFont = UIFont.appRegularFont()
                theme.themeNumberOfLines = 0
                return theme
            }
            static func Entry() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = UIColor.black
                theme.themeFont = UIFont.appBoldFont().withSize(22.0)
                return theme
            }
            static func AppVersion() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = UIColor.gray
                theme.themeFont = UIFont.appRegularFont().withSize(14.0)
                theme.themeTextAlignment = NSTextAlignment.center
                return theme
            }
        }
    }
    enum Contact {
        enum Label {
            static func Title() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = UIColor.black
                theme.themeFont = UIFont.appRegularFont().withSize(40.0)
                theme.themeTextAlignment = NSTextAlignment.center
                theme.themeAdjustFontToSize = true
                return theme
            }
        }
    }
    enum ReadingSpeed {
        enum Label {
            static func Transliteration() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = UIColor.black
                theme.themeFont = UIFont.appRegularFont().withSize(140.0)
                theme.themeTextAlignment = NSTextAlignment.center
                
                // For some reason, it doesn't work unless we use multi lines
                theme.themeAdjustFontToSize = true
                theme.themeNumberOfLines = 0
                return theme
            }
            static func Thai() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = UIColor.black
                theme.themeFont = UIFont.appRegularThaiFont().withSize(140.0)
                theme.themeTextAlignment = NSTextAlignment.center
                
                // For some reason, it doesn't work unless we use multi lines
                theme.themeAdjustFontToSize = true
                theme.themeNumberOfLines = 0
                return theme
            }
        }
        enum Button {
            static func Next() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = UIColor.black
                theme.themeFont = UIFont.appBoldFont().withSize(16.0)
                theme.themeRadius = 4.0
                theme.themeImage = UIImage.init(named: "next")
                return theme
            }
            static func Back() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = UIColor.black
                theme.themeFont = UIFont.appBoldFont().withSize(16.0)
                theme.themeRadius = 4.0
                theme.themeImage = UIImage.init(named: "back")
                return theme
            }
            static func Reveal() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = UIColor.black
                theme.themeFont = UIFont.appBoldFont().withSize(16.0)
                theme.themeRadius = 4.0
                theme.themeImage = UIImage.init(named: "reveal")
                return theme
            }
        }
    }
    enum Characters {
        enum List {
            enum Character {
                static func ThaiCharacter() -> TLATheme {
                    let theme = TLATheme()
                    theme.themeFont = UIFont.appRegularThaiFont().withSize(26)
                    theme.themeTextAlignment = NSTextAlignment.center
                    theme.themeBackgroundColor = UIColor.clear
                    theme.themeAdjustFontToSize = true
                    return theme
                }
                static func Name() -> TLATheme {
                    let theme = TLATheme()
                    theme.themeFont = UIFont.appRegularFont().withSize(14)
                    theme.themeTextAlignment = NSTextAlignment.center
                    theme.themeBackgroundColor = UIColor.clear
                    theme.themeTextColor = UIColor.darkGray
                    return theme
                }
                static func View() -> TLATheme {
                    let theme = TLATheme()
                    theme.themeBackgroundColor = UIColor(hexString: "#EFEFEF")
                    return theme
                }
            }
            enum Sections {
                enum Title {
                    static func Text() -> TLATheme {
                        let theme = TLATheme()
                        theme.themeFont = UIFont.appRegularFont().withSize(24)
                        theme.themeBackgroundColor = .white
                        theme.themeTextColor = UIColor.black
                        theme.themeTextAlignment = NSTextAlignment.center
                        return theme
                    }
                    static func Border() -> TLATheme {
                        let theme = TLATheme()
                        theme.themeBackgroundColor = .appTint
                        theme.themeRadius = 2.0
                        return theme
                    }
                }
                enum Subtitle {
                    static func Text() -> TLATheme {
                        let theme = TLATheme()
                        theme.themeFont = UIFont.appBoldFont().withSize(14)
                        theme.themeBackgroundColor = .white
                        theme.themeTextColor = UIColor.black
                        theme.themeTextAlignment = NSTextAlignment.center
                        return theme
                    }
                    static func Border() -> TLATheme {
                        let theme = TLATheme()
                        theme.themeBackgroundColor = .lightGray
                        theme.themeRadius = 2.0
                        return theme
                    }
                }
                static func Separator() -> TLATheme {
                    let theme = TLATheme()
                    theme.themeBackgroundColor = UIColor(hexString: "#EFEFEF")
                    return theme
                }
            }
        }
        enum Detail {
            enum Header {
                static func Text() -> TLATheme {
                    let theme = TLATheme()
                    theme.themeFont = UIFont.appRegularThaiFont().withSize(100)
                    theme.themeBackgroundColor = UIColor(hexString: "#EFEFEF")
                    theme.themeTextColor = UIColor.black
                    theme.themeTextAlignment = NSTextAlignment.center
                    return theme
                }
            }
            enum Property {
                static func Title() -> TLATheme {
                    let theme = TLATheme()
                    theme.themeFont = UIFont.appBoldFont().withSize(14)
                    theme.themeBackgroundColor = .clear
                    theme.themeTextColor = UIColor.black
                    theme.themeTextAlignment = NSTextAlignment.left
                    return theme
                }
                static func Text() -> TLATheme {
                    let theme = TLATheme()
                    theme.themeFont = UIFont.appRegularThaiFont().withSize(18)
                    theme.themeBackgroundColor = .clear
                    theme.themeTextColor = UIColor.darkText
                    theme.themeTextAlignment = NSTextAlignment.left
                    theme.themeNumberOfLines = 2
                    return theme
                }
            }
        }
    }
    enum Information {
        static func Title() -> TLATheme {
            let theme = TLATheme()
            theme.themeFont = UIFont.appBoldFont().withSize(20)
            theme.themeTextColor = .darkText
            theme.themeTextAlignment = .left
            theme.themeBackgroundColor = .clear
            theme.themeNumberOfLines = 0
            return theme
        }
        static func Text() -> TLATheme {
            let theme = TLATheme()
            theme.themeFont = UIFont.appRegularThaiFont().withSize(18)
            theme.themeTextColor = .bodyText
            theme.themeTextAlignment = .left
            theme.themeBackgroundColor = .clear
            theme.themeNumberOfLines = 0
            return theme
        }
        enum Link {
            static func Text() -> TLATheme {
                let theme = TLATheme()
                theme.themeFont = UIFont.appBoldFont().withSize(16)
                theme.themeTextColor = .darkText
                theme.themeBackgroundColor = .clear
                theme.themeNumberOfLines = 0
                return theme
            }
            static func View() -> TLATheme {
                let theme = TLATheme()
                theme.themeBackgroundColor = UIColor(hexString: "#EFEFEF")
                theme.themeRadius = 4.0
                return theme
            }
        }
        enum Screen {
            enum Background {
                static func AnimatedOut() -> TLATheme {
                    let theme = TLATheme()
                    theme.themeBackgroundColor = UIColor.black.withAlphaComponent(0.0)
                    return theme
                }
                static func AnimatedIn() -> TLATheme {
                    let theme = TLATheme()
                    theme.themeBackgroundColor = UIColor.black.withAlphaComponent(0.3)
                    return theme
                }
            }
        }
    }
    enum Skills {
        enum Label {
            static func Title() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = UIColor.black
                theme.themeFont = UIFont.appBoldFont().withSize(18.0)
                return theme
            }
            static func Subtitle() -> TLATheme {
                let theme = TLATheme()
                theme.themeTextColor = UIColor.gray
                theme.themeFont = UIFont.appRegularFont().withSize(14.0)
                theme.themeNumberOfLines = 0
                return theme
            }
        }
    }
    enum ReadingPractice {
        static func Text(fontSize: CGFloat = 40.0) -> TLATheme {
            let theme = TLATheme()
            theme.themeTextColor = UIColor.black
            theme.themeFont = UIFont.appRegularThaiFont().withSize(fontSize)
            return theme
        }
    }
}
