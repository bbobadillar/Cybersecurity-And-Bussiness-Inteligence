<!-- 🚀 Neighborhood Cyber Lab: Malware Embedded in Images -->

# 🕵️ Laboratorio de Análisis de Malware (Firmado con GPG | Asegurado con SSH)

> Este laboratorio simula un ataque realista donde se esconde un archivo malicioso dentro de una imagen PNG, utilizando solo herramientas nativas de Windows y scripts personalizados.  
> Todo el proceso se asegura mediante **autenticación SSH** y **commits firmados digitalmente con GPG**.

---

## 🎯 Objetivos

- Simular cómo un atacante podría esconder código malicioso dentro de una imagen.
- Realizar un análisis forense de la imagen usando hexadecimales.
- Detectar patrones maliciosos mediante un diccionario personalizado.
- Usar únicamente herramientas de PowerShell y Windows para rastrear los artefactos generados.

---

## 🔐 Seguridad

✅ Todos los commits están **firmados digitalmente con GPG**  
🔗 Las operaciones con Git se hacen usando **autenticación SSH**  

> Esto garantiza integridad, autoría y evita cualquier alteración externa.

---

## 🧪 Estructura del Laboratorio

### 📥 1. Preparación del malware simulado
**Archivo:** `MALW4R3.bat`  
🔸 Crea la ruta `%APPDATA%\Malware`  
🔸 Copia `calc.exe` como si fuera un ejecutable malicioso  
🔸 Ejecuta `bad.exe`  
🧊 Analogía: Es como esconder un ladrón en un carrito de helados.

---

### 🖼️ 2. Embebido del malware en una imagen
**Script:** `SCRIPTFORINTORDUCEDM4LW4R3EMBEDEDTOIMAGE.ps1`  
🔸 Inserta el contenido del `.bat` dentro de una imagen PNG.  
🎁 Analogía: Es como esconder droga en un peluche bonito.

---

### 🧾 3. Volcado hexadecimal
**Script:** `HexExport.ps1`  
📄 Salida: `imagen_hex_dump.txt`  
🔍 Extrae el contenido hexadecimal para analizar bit a bit.  
🛂 Analogía: Como el escáner de un aeropuerto.

---

### 🧠 4. Análisis del volcado hexadecimal
**Script:** `SCRIPTFORANALYZEMALWARE.ps1`  
📄 Salida: `Findings_MalwareAnalysis.txt`  
📚 Analiza el hex volcado con un diccionario de patrones maliciosos.  
📸 Analogía: Como revisar las cámaras del barrio buscando al culpable.

---

### 🪪 5. Rastreo con PowerShell (comandos nativos)
**Comando:** `DETECTMKDIRMALWAREACTIONS`  
📄 Salida: `Artifact_Execution_Log.txt`  
📍 Detecta la creación de carpetas, copiado de archivos y ejecución sin usar software externo.  
🗣️ Analogía: Como el chisme del barrio: “¡Yo vi cuando lo metieron ahí!”

---

## 🗺️ Diagrama del Flujo

![Malware Analysis Lab Diagram](sandbox:/mnt/data/A_flowchart_infographic_composed_of_four_horizonta.png)

---

## 📥 Repositorio
📁 **Descarga todo desde:**  
👉 [INSERTA TU LINK DE GITHUB AQUÍ]

---

---

# 🕵️ Malware Analysis Lab (GPG Signed | SSH Secured)

> This lab simulates a realistic attack where malware is hidden inside a PNG image, using only native Windows tools and custom PowerShell scripts.  
> The full operation is secured via **SSH authentication** and **digitally signed commits with GPG**.

---

## 🎯 Objectives

- Simulate how attackers hide malicious code inside images.
- Perform forensic analysis by dumping and reviewing image hex.
- Detect known malware patterns with a keyword dictionary.
- Use only native tools and PowerShell commands to track actions.

---

## 🔐 Security

✅ All commits are **digitally signed with GPG**  
🔗 All Git operations performed with **SSH authentication**  

> This guarantees authenticity, integrity, and trust.

---

## 🧪 Lab Structure

### 📥 1. Simulated Malware Creation
**File:** `MALW4R3.bat`  
🔸 Creates `%APPDATA%\Malware`  
🔸 Copies `calc.exe` into `bad.exe`  
🔸 Executes the fake malware  
🧊 Analogy: Like hiding a thief inside an ice cream cart.

---

### 🖼️ 2. Embedding Malware in an Image
**Script:** `SCRIPTFORINTORDUCEDM4LW4R3EMBEDEDTOIMAGE.ps1`  
🔸 Embeds the `.bat` contents into any PNG image.  
🎁 Analogy: Like hiding drugs in a teddy bear.

---

### 🧾 3. Hex Dumping
**Script:** `HexExport.ps1`  
📄 Output: `imagen_hex_dump.txt`  
🔍 Dumps the image hex for byte-by-byte analysis.  
🛂 Analogy: Like an airport scanner checking for hidden items.

---

### 🧠 4. Hex Dump Malware Detection
**Script:** `SCRIPTFORANALYZEMALWARE.ps1`  
📄 Output: `Findings_MalwareAnalysis.txt`  
📚 Scans dumped hex against a dictionary of malicious keywords.  
📸 Analogy: Like checking security cameras for a suspect.

---

### 🪪 5. Native Tracking with PowerShell
**Command:** `DETECTMKDIRMALWAREACTIONS`  
📄 Output: `Artifact_Execution_Log.txt`  
📍 Detects folder creation, file copying, and execution using native PowerShell.  
🗣️ Analogy: Like the gossip in the neighborhood: "I saw when they hid it there!"

---

## 🗺️ Flowchart Diagram

![Malware Analysis Lab Diagram](sandbox:/mnt/data/A_flowchart_infographic_composed_of_four_horizonta.png)

---

## 📥 Repository
📁 **Download everything here:**  
👉 [INSERT YOUR GITHUB LINK HERE]

---

## 🛠️ Tools Used

- ✅ PowerShell Scripts
- 🧰 Native Windows Commands
- 🛡️ GPG for commit signing
- 🔐 SSH for Git operations
- 📂 Hex Dump & Detection Logic

---

## 🎙️ Final Words

In a digital jungle full of traps, this lab teaches how to move smart, investigate deeply, and defend your ground with precision and neighborhood energy.

> 🎯 _"Real hackers don’t just code… they sign, trace, and protect their digital barrio."_

---
