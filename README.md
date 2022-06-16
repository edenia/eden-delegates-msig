# Multi-Sig Proposal for Updating Elected Eden Delegate's Active Permissions 
<p align="center">
	<a href="https://git.io/col">
		<img src="https://img.shields.io/badge/%E2%9C%93-collaborative_etiquette-brightgreen.svg" alt="Collaborative Etiquette">
	</a>
	<a href="https://twitter.com/intent/follow?screen_name=eoscostarica">
		<img src="https://img.shields.io/twitter/follow/eoscostarica.svg?style=social&logo=twitter" alt="follow on Twitter">
	</a>
	<a href="#">
		<img src="https://img.shields.io/github/license/eoscostarica/guias.eoscostarica.io" alt="MIT">
	</a>
	<a href="#">
    <img src="https://img.shields.io/github/forks/eoscostarica/guias.eoscostarica.io?style=social" alt="Forks">
    </a>
</p>

## Description
A shell script utility to update the active permissions for the `eden.genesis` account with newly elected delegates accounts.

## Quick Start
- Install pre-requisites
- Clone repository
- Update `current-eden-delegates.json` with current delegate's accounts.
- Update `new-delegates.json` with newly elected delegate's accounts.
- Execute `./update-delegates.sh` and enter the account proposing and proposal name.
- Confirm the proposal.
- Execute `./token-transfer.sh` *(still not sure how this part works)*

### Pre-Requisites
- [Git](https://git-scm.com/)
- [EOSIO](https://developers.eos.io/welcome/latest/getting-started-guide/local-development-environment/index)

## File structure
```text title="./eden-delegates-msig"
/
├── current-eden-delegates.json ..... JSON containing outgoing chief delegates 
├── new-delegates.json .............. JSON containing new chief delegates
├── update-delegates.sh ............. Shell Script to execute multi-signature proposal
├── token-transfer.sh ............... Token Transfer transaction
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

If you find any bugs, please report them by opening an issue at [this link](https://github.com/eoscostarica/eden-delegates-msig/issues).


## About EOS Costa Rica
<p align="center">
    <img src="https://raw.githubusercontent.com/eoscostarica/design-assets/master/logos/eosCR/fullColor-horizontal-transparent-white.png" width="400" >
</p>
<br>

EOS Costa Rica is an independently-owned, self-funded, bare-metal Genesis block producer that provides stable and secure infrastructure for EOSIO blockchains. We support open source software for our community while offering enterprise solutions and custom smart contract development for our clients.

[eoscostarica.io](https://eoscostarica.io/)