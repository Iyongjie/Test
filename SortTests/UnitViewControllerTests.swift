//
//  ViewControllerTests.swift
//  SortTests
//
//  Created by 李永杰 on 2019/3/23.
//  Copyright © 2019 Y了个J. All rights reserved.
//

import XCTest


class UnitViewController: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    // 冒泡排序的性能测试
    func testBubbleSortPerformance() {
        self.measure {
            let bubbleArr = bubbleSort(sortArray: [10,2,122,330,333,444,11,222,343,121,434])
            print(bubbleArr)
        }
    }
    func bubbleSort(sortArray:[NSInteger]) -> [NSInteger] {
        var tempSortArray = sortArray
        let sortArrayCount = tempSortArray.count
        for i in 0..<sortArrayCount {
            for j in 0..<sortArrayCount - i - 1 {
                if tempSortArray[j] > tempSortArray[j+1] {
                    let tempValue = tempSortArray[j]
                    tempSortArray[j] = tempSortArray[j+1]
                    tempSortArray[j+1] = tempValue
//                    print("\(tempSortArray[j])和\(tempSortArray[j+1])交换   \(tempSortArray)")
                }
            }
        }
        return tempSortArray
    }
    // 插入排序的性能测试
    func testInsertSortPerformance () {
        self.measure {
            let insertArr = insertSort(sortArray: [10,2,122,330,333,444,11,222,343,121,434])
            print(insertArr)
        }
    }
    func insertSort(sortArray:[NSInteger]) -> [NSInteger] {
        var tempSortArray = sortArray
        let sortArrayCount = tempSortArray.count
        for i in 1..<sortArrayCount {
            let tempValue = tempSortArray[i]
            var insertIndex = 0
            for j in 0..<i {
                insertIndex = i - 1 - j //从后往前扫描
                if tempValue > tempSortArray[insertIndex] {// 如果新元素大于最后一个元素,放到队尾，跳出循环
                    insertIndex = i - j
                    break
                }
                tempSortArray[insertIndex + 1] = tempSortArray[insertIndex] // 往后挪一个
            }
            tempSortArray[insertIndex] = tempValue// 新元素插到前一个位置
            print("\(tempSortArray)")
        }
        return tempSortArray
    }
    
    
}
