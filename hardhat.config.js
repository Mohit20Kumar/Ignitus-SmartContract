require('@nomicfoundation/hardhat-toolbox')
require('dotenv').config({ path: '.env' })

const ALCHEMY_HTTP_URL = process.env.RPC_URL
const PRIVATE_KEY = process.env.PRIVATE_KEY

module.exports = {
  solidity: '0.8.18',
  networks: {
    sepolia: {
      url: ALCHEMY_HTTP_URL,
      accounts: [PRIVATE_KEY],
    },
  },
}

// Contract Address: 0x365fB0EB0032C5d14dD5ef4bbD8D532aCf09A1A3

// "abi": [
//     {
//       "inputs": [],
//       "stateMutability": "nonpayable",
//       "type": "constructor"
//     },
//     {
//       "inputs": [],
//       "name": "sendEth",
//       "outputs": [],
//       "stateMutability": "payable",
//       "type": "function"
//     }
//   ]
