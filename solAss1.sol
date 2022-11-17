// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract ArrDemo {
    uint[] public nums = [1,2,3,4,5];
     function removeEle(uint ele) public {
       delete nums[ele];
       for(uint i=0;i<nums.length-1;i++){
        if(i>ele-1){
          nums[i] = nums[i+1];
         }
      }
      if(ele !=0){
        nums.pop();
      }
       
     }
     function getArr() public view returns(uint[] memory){
         return nums;
     }
}
