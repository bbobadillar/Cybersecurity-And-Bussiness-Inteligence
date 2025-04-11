
# 🧪 Cybersecurity Laboratory: Embedding and Analyzing Simulated Malware in an Image

Welcome to this technical and visual cybersecurity lab designed to demonstrate how simple malware instructions can be embedded into an image and detected using only native tools. This lab provides a realistic, hands-on scenario useful for defenders and red teamers.

---

## 1️⃣ Preparing the Malware Simulation Batch

We use a batch file to simulate the behavior of malware. This script:

- Creates a directory at `%APPDATA%\Malware`
- Copies `calc.exe` to that directory as `bad.exe`
- Executes `bad.exe` (acting as a fake malware payload)

**Batch script content**:

```bat
SET "MAL_DIR=%APPDATA%\Malware"
SET "MAL_EXEC=%MAL_DIR%\bad.exe"
SET "ORIG_EXEC=%WINDIR%\System32\calc.exe"

IF NOT EXIST "%MAL_DIR%" (
    mkdir "%MAL_DIR%"
)

IF NOT EXIST "%MAL_EXEC%" (
    copy "%ORIG_EXEC%" "%MAL_EXEC%" >nul
)

start "" "%MAL_EXEC%"
```

---

## 2️⃣ Embedding the Script into an Image

Use the `SCRIPTFORINTORDUCEDM4LW4R3EMBEDEDTOIMAGE.ps1` PowerShell script to embed the `.bat` content into any image file downloaded from the internet.

- This simulates steganographic or appended payloads in multimedia files.
- The script simply appends malicious content to the end of an image file.

---

## 3️⃣ Hex Dump and Byte-Level Inspection

Use `HexExport.ps1` to generate a full hex dump of the modified image.

- Export bit-by-bit content.
- Save to a Notepad file called `imagen_hex_dump.txt`.

```powershell
Format-Hex -Path ".\infected.png" | Out-File ".\imagen_hex_dump.txt"
```

---

## 4️⃣ Malware Detection with Dictionary-Based Scanning

Run `SCRIPTFORANALYZEMALWARE.ps1` to:

- Read the hex dump (`imagen_hex_dump.txt`).
- Detect keyword patterns (like `calc.exe`, `cmd.exe`, or specific encoded batch commands).
- Locate byte positions where anomalies or embedded code appears.
- Output matched signatures and their byte positions to `Findings_MalwareAnalysis.txt`.

---

## 5️⃣ Tracking Activity with Native Windows Tools

Use the following PowerShell native commands to investigate and detect the activity.

### 🔍 DETECTMKDIRMALWAREACTIONS - Save Output to `Artifact_Execution_Log.txt`

```powershell
Get-WinEvent -LogName "Microsoft-Windows-Sysmon/Operational" |
Where-Object { $_.Message -match "bad.exe" -or $_.Message -match "calc.exe" -or $_.Message -match "Malware" } |
Out-File ".\Artifact_Execution_Log.txt"
```

### 📂 Prefetch File Checks

```powershell
Get-ChildItem "$env:SystemRoot\Prefetch" | Where-Object { $_.Name -like '*CALC*.pf' -or $_.Name -like '*BAD*.pf' }
```

---

## 🧠 Lab Summary

| Phase        | Tools Used                 | Output File                     | Objective                          |
|--------------|----------------------------|----------------------------------|-------------------------------------|
| Embed        | PowerShell, Image          | -                                | Simulate a malware payload          |
| Dump         | HexExport.ps1              | `imagen_hex_dump.txt`           | Extract and visualize byte data     |
| Analyze      | SCRIPTFORANALYZEMALWARE.ps1| `Findings_MalwareAnalysis.txt`  | Locate malware by keyword dictionary|
| Investigate  | PowerShell (Sysmon)        | `Artifact_Execution_Log.txt`    | Trace execution with native tools   |

---

## ✅ Perfect for

- Red/Blue Team Labs
- DFIR & Forensics Practice
- Adversary Simulation with Legit Tools

> 👽 Make your GitHub shine with deep technical labs like this. Stay real, stay signed.
