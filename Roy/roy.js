function minimumTime(n, m) {
  // Initialize the time to 0
  let time = 0;
  console.log(m)
  console.log(n)
  // While there are still computers that don't have the PDF
  while (n > 0) {
    // If there are enough pendrives to copy the PDF to all the computers
    if (m >= n) {
      // Copy the PDF to all the computers
      time++;
      console.log(time)
      break;
    }
    // Otherwise, copy the PDF to as many computers as possible
    else {
      time++;
      n -= m;
      m = Math.floor(n / 2);
    }
  }

  // Return the time it took to copy the PDF to all the computers
  return time;
}

// Example usage
console.log(minimumTime(10, 3)); // Output: 5