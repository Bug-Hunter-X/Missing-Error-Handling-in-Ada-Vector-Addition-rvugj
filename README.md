# Ada Vector Addition with Improved Error Handling

This repository demonstrates a common error in Ada programming: the lack of error handling in vector operations.  The original `Add_Vectors` function doesn't check if input vectors are of the same size, which can cause runtime issues.  The improved version includes robust error handling to prevent these problems. 

## Problem
The initial Ada code performs vector addition but lacks checks to ensure that input vectors are of compatible sizes. Adding vectors of unequal size leads to a runtime error or inaccurate results. 

## Solution
The improved code adds checks to verify that both input vectors have the same length before proceeding with the addition. If the sizes differ, an exception is raised, providing a clear indication of the problem. 
