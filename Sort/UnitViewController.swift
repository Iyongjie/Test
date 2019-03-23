//
//  SortViewController.swift
//  Sort
//
//  Created by 李永杰 on 2019/3/23.
//  Copyright © 2019 Y了个J. All rights reserved.
//

import UIKit

class UnitViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

        let arr = insertSort(sortArray: [88, 412, 223, 123, 255, 53, 33, 809, 23])
        
        print(arr)
        
    }
    
    /// 冒泡排序
    /// 循环序列，一次比较两个元素，两两交换
    /// - Parameter sortArray: 待排序数组
    /// - Returns: 排序好的数组
    func bubbleSort(sortArray:[NSInteger]) -> [NSInteger] {
        var tempSortArray = sortArray
        let sortArrayCount = tempSortArray.count
        for i in 0..<sortArrayCount {
            for j in 0..<sortArrayCount - i - 1 {
                if tempSortArray[j] > tempSortArray[j+1] {
                    let tempValue = tempSortArray[j]
                    tempSortArray[j] = tempSortArray[j+1]
                    tempSortArray[j+1] = tempValue
                    print("\(tempSortArray[j])和\(tempSortArray[j+1])交换   \(tempSortArray)")
                }
            }
        }
        return tempSortArray
    }
    
    /// 选择排序
    /// 简单直观，在未排序序列中找到最小的元素，存放到序列起始位置，再从剩余序列中找到最小的元素排到已排序队尾
    /// - Parameter sortArray: 待排序数组
    /// - Returns: 排序好的数组
    func selectionSort(sortArray:[NSInteger]) -> [NSInteger] {
        var tempSortArray = sortArray
        let sortArrayCount = tempSortArray.count
        for i in 0..<sortArrayCount {
            var minIndex = i
            for j in minIndex + 1..<sortArrayCount {
                if tempSortArray[j] < tempSortArray[minIndex] {
                    minIndex = j
                }
            }
            let tempValue = tempSortArray[i]
            tempSortArray[i] = tempSortArray[minIndex]
            tempSortArray[minIndex] = tempValue
            print("\(minIndex)和\(i)交换 \(tempSortArray)")
        }
        return tempSortArray
    }
    
    /// 插入排序
    /// 在已经排序好的数组中找到新元素的位置，插入
    /// - Parameter sortArray: 待排序数组
    /// - Returns: 排序好的数组
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
