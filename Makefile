-include .env

# .PHONY: all test clean deploy fund help install snapshot format anvil scopefile deploy-bridges

# DEFAULT_ANVIL_KEY := 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80

# all: remove install build

# Clean Repo
# clean  :; forge clean

# Install Libs
# install :; forge install https://github.com/smartcontractkit/chainlink lib/chainlink --no-commit && forge install https://github.com/smartcontractkit/chainlink-brownie-contracts lib/chainlink-brownie-contracts --no-commit && forge install https://github.com/foundry-rs/forge-std lib/forge-std --no-commit && forge install https://github.com/OpenZeppelin/openzeppelin-contracts lib/openzeppelin-contracts --no-commit
install :; forge install https://github.com/smartcontractkit/chainlink lib/chainlink --no-commit && forge install https://github.com/smartcontractkit/chainlink-brownie-contracts lib/chainlink-brownie-contracts --no-commit
# Update Dependencies
update:; foundryup

build:; forge build

test :; forge test