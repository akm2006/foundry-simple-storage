
# 📦 SimpleStorage with Foundry

A minimal Solidity smart contract deployed using [Foundry](https://book.getfoundry.sh/) — Ethereum's blazing fast, modular, and developer-friendly toolkit. This project recreates the classic **Simple Storage** contract using Foundry’s scripting system for deployment.

---
## 🔗 Deployed Contract (Sepolia)

- **Address:** `0x5Db9612cB05b21940D04F9CB814A8DFc54838378`
- **Explorer:** [View on Sepolia Etherscan](https://sepolia.etherscan.io/address/0x5Db9612cB05b21940D04F9CB814A8DFc54838378)
---
## 🗂 Project Structure

```bash
foundry-simple-storage/
├── src/
│   └── SimpleStorage.sol            # The smart contract
├── script/
│   └── DeploySimpleStorage.s.sol    # Deployment script using Foundry
├── test/
│   └── (optional test files)
├── foundry.toml                     # Foundry config file
└── README.md                        # Project documentation
````

---

## 📝 Smart Contract - `SimpleStorage.sol`

A basic contract that allows you to:

* ✅ Store a number on the blockchain
* ✅ Retrieve the stored number

### Example Functions

```solidity
function store(uint256 _favoriteNumber) public;
function retrieve() public view returns (uint256);
```

---

## 🚀 Deployment Script - `DeploySimpleStorage.s.sol`

This script uses Foundry's scripting engine to deploy the `SimpleStorage` contract to a blockchain network using:

```solidity
vm.startBroadcast();
SimpleStorage simpleStorage = new SimpleStorage();
vm.stopBroadcast();
```

---

## ⚙️ Getting Started

### 1. 📥 Install Foundry

```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

### 2. 🧾 Configure `.env`

Create a `.env` file in your root folder with the following:

```env
PRIVATE_KEY=your_private_key
SEPOLIA_RPC_URL=https://eth-sepolia.g.alchemy.com/v2/your-api-key
```

> Use [Alchemy](https://alchemy.com) or [Infura](https://infura.io) to get your RPC URL.

### 3. 🔨 Compile Contracts

```bash
forge build
```

### 4. 🚀 Deploy to a Testnet

```bash
forge script script/DeploySimpleStorage.s.sol \
  --rpc-url $SEPOLIA_RPC_URL \
  --private-key $PRIVATE_KEY \
  --broadcast
```

---

## 📦 Example Output

```bash
[⠒] Compiling...
[⠒] Deploying SimpleStorage to Sepolia...
[✔] Contract deployed at: 0xYourContractAddress
```

---

## ❓ Why Foundry?

* ⚡ Lightning fast builds & tests
* 🧪 Native Solidity testing
* 🧰 Scriptable deployments
* 🧼 Clean stack traces and gas reports
* 📦 Easy integration with CI/CD

---

## 🤝 Contributing

Feel free to fork, raise issues, or suggest improvements via pull requests!

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

