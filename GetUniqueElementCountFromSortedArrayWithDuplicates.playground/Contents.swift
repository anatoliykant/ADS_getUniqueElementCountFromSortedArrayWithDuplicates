import UIKit


///  Найти количество элементов в отсортированном массиве,
///  после удаления дубликатов

// Сложность O(n)


var firstArray = [0, 0, 1, 1, 1, 3, 4, 4, 5, 5, 7]
var secondArray = [1, 1, 1, 1, 1, 2, 2, 2, 3, 4]
var thirdArray: [Int] = [1, 1]
var fourthArray: [Int] = []

// 1.

func removeDuplicatesFromSorted1(array: inout [Int]) -> Int {
	
	guard array.count > 0 else { return 0 }
	
	var previousElement: Int!
	var counter = array.count
	
	while counter != 0 {
		let index = array.count - counter
		if previousElement == nil {
			previousElement = array[index]
		} else if array[index] == previousElement {
			array.remove(at: index)
		} else {
			previousElement = array[index]
		}
		counter -= 1
	}
	
	return array.count
}

removeDuplicatesFromSorted1(array: &firstArray)
print(firstArray)


// 2.

func removeDuplicatesFromSorted2(array: inout [Int]) -> Int {
	
	guard array.count > 0 else { return 0 }
	
	var previousElement: Int?
	var index = 0
	
	while index > array.count {
		if previousElement == array[index] {
			array.remove(at: index)
		} else {
			previousElement = array[index]
			index += 1
		}
	}
	
	return array.count
}

removeDuplicatesFromSorted2(array: &firstArray)
print(firstArray)
