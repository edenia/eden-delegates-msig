# Multi-Sig Proposal to set Eden Delegate's Permissions

<div align="center">
	<a href="https://edenia.com">
		<img src="https://raw.githubusercontent.com/edenia/.github/master/.github/workflows/images/edenia-logo.png" width="300" alt="Edenia Logo">
	</a>

![](https://img.shields.io/github/license/edenia/eden-delegates-msig) 
![](https://img.shields.io/badge/code%20style-standard-brightgreen.svg) 
![](https://img.shields.io/badge/%E2%9C%93-collaborative_etiquette-brightgreen.svg) 
![](https://img.shields.io/twitter/follow/edeniaWeb3.svg?style=social&logo=twitter) 
![](https://img.shields.io/github/forks/edenia/eden-delegates-msig?style=social)

</div>

## Description
A shell script utility to update the **active** permissions for the `eden.genesis` account with newly elected delegates accounts.

## Quick Start
- Install pre-requisites
- Clone repository
- Update `./current-eden-delegates.json` with current delegate's accounts.
- Update `./new-delegates.json` with newly elected delegate's accounts (must be in alphabet order (1-5, a-z)).
- Import and Unlock `cleos` wallet with proposer account keys.
- Execute `./update-delegates.sh` and enter the account proposing and proposal name.

### Pre-Requisites
- [Git](https://git-scm.com/)
- [EOSIO](https://developers.eos.io/welcome/latest/getting-started-guide/local-development-environment/index)
- [jq](https://stedolan.github.io/jq/)

## File structure
```text title="./eden-delegates-msig"
/
├── current-eden-delegates.json ..... JSON containing outgoing chief delegates
├── new-delegates.json .............. JSON containing new chief delegates
├── update-delegates.sh ............. Shell Script to execute multi-signature proposal
├── LICENSE ......................... Open Source License
└── README.md ....................... This Readme File
```

## Contributing
If you want to contribute to this repository, please follow the steps below:

1. Fork the project
2. Create a new branch (`git checkout -b feat/sometodo`)
3. Commit changes (`git commit -m '<type>(<scope>): <subject>'`)
4. Push the commit (`git push origin feat/sometodo`)
5. Open a Pull Request

Read the EOS Costa Rica open source [contribution guidelines](https://guide.eoscostarica.io/docs/open-source-guidelines/) for more information on scheduling conventions.

If you find any bugs, please report them by opening an issue at [this link](https://github.com/edenia/eden-delegates-msig/issues).

## About Edenia

<div align="center">

<a href="https://edenia.com">
	<img width="300" alt="Edenia Logo" src="https://raw.githubusercontent.com/edenia/.github/master/.github/workflows/images/edenia-logo.png"></img>
</a>

[![Twitter](https://img.shields.io/twitter/follow/EdeniaWeb3?style=for-the-badge)](https://twitter.com/EdeniaWeb3)
[![Discord](https://img.shields.io/discord/946500573677625344?color=black&label=Discord&logo=discord&logoColor=white&style=for-the-badge)](https://discord.gg/YeGcF6QwhP)

</div>