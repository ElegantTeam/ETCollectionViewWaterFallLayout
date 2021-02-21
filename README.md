# ETCollectionViewWaterFallLayout
[![CocoaPods](https://img.shields.io/cocoapods/v/ETCollectionViewWaterFallLayout.svg)]()
[![CocoaPods](https://img.shields.io/cocoapods/p/ETCollectionViewWaterFallLayout.svg)]()
[![CocoaPods](https://img.shields.io/cocoapods/l/ETCollectionViewWaterFallLayout.svg)]()

ETCollectionViewWaterFallLayout is the swift version of CHTCollectionViewWaterfallLayout！

Screen Shots
-----------
![demo](https://github.com/ElegantTeam/ETCollectionViewWaterFallLayout/blob/master/demo.gif)


Installation
============

The preferred way of installation is via [CocoaPods](http://cocoapods.org). Just add

```ruby
pod 'ETCollectionViewWaterFallLayout'
```

and run `pod install`. It will install the most recent version of ETCollectionViewWaterFallLayout.

Usage
===============
Below are the public properties and their default values that you can change to customize the layout
``` swift
let layout = ETCollectionViewWaterfallLayout()
layout.minimumColumnSpacing = 10.0
layout.minimumInteritemSpacing = 10.0
layout.columnCount = 2
layout.headerHeight = 0.0
layout.footerHeight = 0.0
layout.headerInset = .zero
layout.footerInset = .zero
layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
collectionView.collectionViewLayout = layout
```

#### Required Protocol
Your collection view's delegate must conforms to `ETCollectionViewDelegateWaterfallLayout` protocol and implement the required method, all you need to do is return the original size of the item:

``` swift
func collectionView(_ collectionView: UICollectionView, layout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
```

## Support

- iOS 9.0+ 
- Xcode 8.0+
- Swift 5.0

## Objective-C Version
* chiahsien: [CHTCollectionViewWaterfallLayout](https://github.com/chiahsien/CHTCollectionViewWaterfallLayout)  

----------
LICENSE
--------------------
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
