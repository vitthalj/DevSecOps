# To write a good professional README.md file use [this](https://www.makeareadme.com/) template.
# Day01

This repository can be used for better approaches to be used while DevSecOps implementation.

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install pre-commit.
```bash
pip install pre-commit 
```
Pre-commit file which is located in .git/hooks folder can be used to run custom rules before every commit.

# gitleasks Repository/ history scanning
We can run gitleaks to scan the repo with sensitive data for every commit in CI system.
Command to install gitleaks in windows
```bash
winget install gitleaks
```
# Run gitleasks command 
```bash
gitleaks detect --config custom-rules.toml
```
# Branch protection rules
We have to enforce branch protection rules such as 
No direct push to main branch
enable pull requests and atleast 2 review mandatory along with CI checks

# RBAC
enforce RBAC for repo by giving role based access like below 
DevOps Engineer - Admin
Developer - Write
Test - read

# Depanabot
Enable Dependabot which scans for vulnerabilities by looking in vulnerability database from  versions mentioned in requirements.txt/ pom.xml /npm / Go based applications

# Secure Terraform script
We can use checkov to verify if the cloud resource will have any security threats.
