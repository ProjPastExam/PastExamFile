/// @description fallOut
// You can write your code in this editor
if (fallOut < 120) alarm[8] = 1;

if (fallOut < 30) dark = fallOut;
else if (fallOut < 90) dark = 30;
else dark = 120 - fallOut;


if (fallOut == 120) fallOut = 0;
fallOut++;