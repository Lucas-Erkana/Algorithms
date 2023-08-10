def find_grants_cap(grants_array, new_budget)
  grants_array.sort! # Sort the grants in ascending order
  
  n = grants_array.length # Get the total number of grants
  remaining_budget = new_budget # Initialize remaining budget with newBudget
  idx = 0 # Initialize index for iteration
  
  # Loop through the grants while there is budget left and the cap can be applied
  while idx < n && remaining_budget >= grants_array[idx] * (n - idx)
    remaining_budget -= grants_array[idx] * (n - idx) # Deduct adjusted grant from budget
    idx += 1 # Move to the next grant
  end
  
  # Calculate the cap that would be applied to all remaining grants
  cap = idx < n ? remaining_budget.to_f / (n - idx) : grants_array[n - 1]
  
  cap
end

  
  # Test
  grants_array = [2, 100, 50, 120, 167]
  new_budget = 400
  output = find_grants_cap(grants_array, new_budget)
  puts output # Output should match the expected cap value

  grants_array = [2, 100, 50, 120, 167]
  new_budget = 400
  output = find_grants_cap(grants_array, new_budget)
  puts output # Output should match the expected cap value

grants_array = [2, 100, 50, 120, 1000]
new_budget = 190
output = find_grants_cap(grants_array, new_budget)
puts output # Output should match the expected cap value

#Sort the Grants Array: The function first sorts the grants_array in ascending order using the sort! method. This is important for later calculations.

#Initialization: The total number of grants is stored in the variable n, and remaining_budget is set to the value of new_budget. idx is initialized to 0 for iteration through the grants.

#Loop through Grants: The function enters a while loop that iterates through the grants as long as there is budget left (remaining_budget) and the cap can be applied to the remaining grants. The condition idx < n && remaining_budget >= grants_array[idx] * (n - idx) ensures that both budget is available and the cap can be applied to the remaining grants.

#Adjust Budget and Move to Next Grant: Inside the loop, the adjusted grant value is subtracted from remaining_budget, and idx is incremented to move to the next grant.

#Calculate Cap: After the loop finishes, the function calculates the cap that would be applied to all remaining grants. If idx is less than n, it calculates the cap using the remaining budget divided by the number of remaining grants. If idx is equal to or greater than n, the cap is set to the value of the last grant in the array.

#Return Cap: Finally, the calculated cap value is returned by the function.