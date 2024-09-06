const crypto = require('crypto'); // Import the crypto module for hashing

// Function to find a nonce for a given input string that produces a hash with a specific prefix
function findNonceForInput(inputString, prefix) {
    let nonce = 0; // Initialize nonce to 0
    while (true) { // Infinite loop to keep trying until a hash with the prefix is found
        const combinedString = `${inputString}${nonce}`; // Combine the input string with the current nonce
        const hash = crypto.createHash('sha256').update(combinedString).digest('hex'); // Generate SHA-256 hash of the combined string
        if (hash.startsWith(prefix)) { // Check if the hash starts with the given prefix
            return { nonce, hash }; // Return the nonce and hash if the condition is met
        }
        nonce++; // Increment the nonce and try again
    }
}

const inputString = "Dev => Karan | Rs 100\nKaran => Darsh | Rs 10"; // Define the input string
const result = findNonceForInput(inputString, '00000'); // Call the function with the input string and desired prefix
console.log(`Nonce: ${result.nonce}`); // Log the nonce that produced the desired hash
console.log(`Hash: ${result.hash}`); // Log the hash that starts with the desired prefix
