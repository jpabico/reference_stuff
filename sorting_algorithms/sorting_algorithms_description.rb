# Try coding/implementing these at a later time...

# ---------- O(n log(n)) algorithms ----------

# --- Heap Sort ---

# In a binary tree, each node has at most 2 children

# In a complete tree, each level (with the possible 
# exception of the last level) is completely filled 
# (i.e. all nodes are pushed to the left)

# A max heap is a complete binary tree where every 
# node holds a value at least as large as the values in 
# all its children (highest values at top)

# A min heap is a complete binary tree where every 
# node holds a value at most as large as the values in 
# all its children (lowest values at top)

# To add a value to a max heap, insert it into the last/bottom 
# position.  If the parent node is less than this value, then 
# swap the 2 nodes.  Continue to swap until every node holds 
# a value at least as large as the values in all its children

# When removing a value from a max heap, place the  
# last/bottom node in the vacated position.  Compare the 
# values of its children nodes.  Swap the child node with the 
# greater value with the parent node.   Continue to swap 
# until every node holds a value at least as large as the values 
# in all its children.

# Heaps can be implemented as an array, where a node at 
# index N has children at indices 2N+1 and 2N+2.  The root 
# node would be given an index of N = 0.

# To implement heap sort, swap the first and last 
# elements and rebuild the heap according to the node values 
# of its parents/children.  Apply recursively until sorted.

# --- Quick Sort ---

# In an unsorted array, a divider/pivot is chosen at random.  
# Items greater than the pivot are placed to its right  All others 
# go to its left.  A pivot from each half is then chosen and the 
# process repeats until all array halves have only one element (i.e. 
# each half is sorted on the proper side).  Merge them into a 
# 2-element array in the proper order.  Then merge the 2-element 
# arrays into 4-element array, etc until all arrays have been merged 
# back into one large, sorted array.



# --- Merge Sort ---

# An unsorted array is repeated cut in half until only 1-element 
# arrays are left.  Compare the first element of each array and place 
# smallerelement into an array in the appropriate order.  Continue to 
# compare the 0 index first elements of each array and placing them 
# into the array until all have been placed.  Continue to merge 2 arrays 
# at a time, comparing the first elements until all arrays have been 
# merged into one large, sorted array.
