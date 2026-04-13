# To write a good professional README.md file use [this](https://www.makeareadme.com/) template.
# DevSecOps

This repository can be used for better approaches to be used while DevSecOps implementation.

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install pre-commit.
''' bash
pip install pre-commit 
'''
Pre-commit file which is located in .git/hooks folder can be used to run custom rules before every commit.

# gitleasks Repository/ history scanning
We can run gitleaks to scan the repo with sensitive data for every commit in CI system.
Command to install gitleaks in windows
''' bash
winget install gitleaks
'''
# Run gitleasks command 
''' bash
gitleaks detect --config custom-rules.toml
'''
