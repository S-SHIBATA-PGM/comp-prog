"use strict";
function main(input) {
    const line = input.split("\n");
    let N = parseInt(line[0]);
    let d = line[1].split(" ").map(Number);
    console.log(combination(d, 2).reduce((pre, cur) => pre + cur[0] * cur[1], 0));
    return;
}
const combination = (nums, k) => {
    let ans = [];
    if (nums.length < k) {
        return []
    }
    if (k === 1) {
        for (let i = 0; i < nums.length; i++) {
            ans[i] = [nums[i]];
        }
    } else {
        for (let i = 0; i < nums.length - k + 1; i++) {
            let row = combination(nums.slice(i + 1), k - 1);
            for (let j = 0; j < row.length; j++) {
                ans.push([nums[i]].concat(row[j]));
            }
        }
    }
    return ans;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));