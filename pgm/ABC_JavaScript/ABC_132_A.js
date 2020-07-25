"use strict";
function main(input) {
    let S = input.replace("\n", "");
    let ans = countBy([...S]);
    console.log(Object.values(ans).length == 2 && Object.values(ans)[0] == 2 ? "Yes" : "No");
    return;
}
function countBy(data, keyGetter) {
    var keyResolver = {
        'function': function (d) { return keyGetter(d); },
        'string': function (d) { return d[keyGetter]; },
        'undefined': function (d) { return d; }
    };

    var result = {};

    data.forEach(function (d) {
        var keyGetterType = typeof keyGetter;
        var key = keyResolver[keyGetterType](d);

        if (result.hasOwnProperty(key)) {
            result[key] += 1;
        } else {
            result[key] = 1;
        }
    });

    return result;
}
// list1 = ['a', 'b', 'c', 'b', 'a', 'b', 'c', 'a', 'a', 'a'];
// console.log(countBy(list1));  // {'a':5, 'b':3, 'c':2}
// list2 = ['abc', 'aa', 'b3', 'abcd', 'cd'];
// console.log(countBy(list2, 'length'));  // {2: 3, 3: 1, 4: 1}
// list3 = [1.2, 7.8, 1.9];
// console.log(countBy(list3, Math.floor));  // {1: 2, 7: 1}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));