# Extension
## Purpose : easy to make App in UIKit
> AutoLayout Extensions is the set of codes I use the most.


### ⭕️ This code can use in UIKit. ⭕️

### How to use this code?
1. import Extension</br>
Turn on the Xcode, and entering exsiting project.</br>
And then [File] -> [Add Package Dependencies...] -> [Add local]

2. Write Import Extensions</br>
```
import Extensions
```

3. Use Anchor() Like this.</br>
Suppose that you use label in your code like this.
```
let labelTT : UILabel = {
        let lb = UILabel()
        lb.text = "hello"
        lb.font = UIFont.boldSystemFont(ofSize: 30)
        return lb
    }()
```

Usage is followed.</br>
```

labelTT.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                               left: view.leftAnchor,
                               right: view.rightAnchor,
                               paddingTop: 10,
                               paddingLeft: 10,
                               paddingRight: 10)
```

Others are same. 


