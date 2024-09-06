const crypto = require('crypto'); // Import the crypto module for hashing

// Function to find a hash with a specific prefix
function findHashWithPrefix(prefix) {
    let nonce = 0; // Initialize nonce to 0
    while (true) { // Infinite loop to keep trying until a hash with the prefix is found
        const inputString = `string${nonce}`; // Create a string with the current nonce
        const hash = crypto.createHash('sha256').update(inputString).digest('hex'); // Generate SHA-256 hash of the string
        if (hash.startsWith(prefix)) { // Check if the hash starts with the given prefix
            return { inputString, hash }; // Return the input string and hash if the condition is met
        }
        nonce++; // Increment the nonce and try again
    }
}

const result = findHashWithPrefix('00000'); // Call the function with the desired prefix
console.log(`Input String: ${result.inputString}`); // Log the input string that produced the desired hash
console.log(`Hash: ${result.hash}`); // Log the hash that starts with the desired prefix
