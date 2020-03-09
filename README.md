对象的本质分析
这里我们就对isa和类之间的关系进行解释了，顺便来看一下对象底层是怎么编译的，这里顺便介绍一下将.m文件编译成底层C++语言方式:clang 

主要语句： clang -rewrite-objc main.m -o main.cpp 这种方式直接进行编译文件将main.m 输出为 main.cpp文件

clang -rewrite-objc -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk main.m -o main.cpp  这种方式，一般导致UIKit报错编译文件，需要引入模拟器SDK资源其中(iPhoneSimulator.platform为模拟器资源，iphones为真机资源，)

或者使用xcode中自带工具xrun:

xcrun -sdk iphonesimulator clang -rewrite-objc main.m -o main4.cpp   （iphonesimulator使用模拟器库资源）

xcrun -sdk iphones clang -rewrite-objc main.m -o main4.cpp   （iphones使用真机库资源）
