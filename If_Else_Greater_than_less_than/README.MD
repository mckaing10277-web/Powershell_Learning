# PowerShell Conditional Logic for IAM Automation

A beginner-friendly PowerShell script demonstrating correct use of
`if`, `elseif`, and `else` statements in the context of **Identity & Access Management (IAM)**–style automation tasks.

This project focuses on **safe decision-making**, **predictable control flow**, and **validation logic** commonly required in IAM scripts.

---

## 🔐 IAM Context

In IAM and access-control automation, scripts frequently need to:

- Verify that an object exists (users, groups, files, policies)
- Inspect attributes or data before taking action
- Apply different logic paths based on state
- Fail safely when prerequisites are not met

This script models that exact pattern using a simple file-based example.

---

## 📌 Project Overview

The script performs the following IAM-relevant checks:

1. Verifies a resource exists (`Test-Path`)
2. Retrieves and inspects data (`Get-Content`)
3. Evaluates conditions in a controlled order
4. Executes **one and only one** action path using `elseif`
5. Handles invalid states safely with `else`

---

## 📂 Files Included

| File | Description |
|------|------------|
| `IfIsElseFalse.ps1` | PowerShell script demonstrating IAM-style conditional logic |
| `test.txt` | Sample data source used for evaluation |

---

## ⚙️ Requirements

- Windows
- PowerShell 5.1 or PowerShell 7+

---

## ▶️ How to Run

1. Update the file path if needed:
   ```powershell
   $filePath = "C:\Path\To\test.txt"
