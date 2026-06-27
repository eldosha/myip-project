# myip-project

A lightweight, open‑source CLI tool for Windows that shows your **public IP information** with a single command:

```
myip
```

This is the **Windows version** of the upcoming cross‑platform suite:

- myip-win
- myip-mac (coming soon)
- myip-linux (coming soon)

---

## 🚀 Features

- Fetches your **public IP** using a trusted external API
- Displays:
  - IPv4
  - IPv6 (if available)
  - Country
  - City
  - Region
  - ISP
  - Services / Hostname
  - Google Maps location link (if coordinates are available)
- Works in **CMD** and **PowerShell**
- Fully open‑source
- Zero dependencies (only uses built‑in Windows PowerShell + curl)

---

## 📦 Installation

### Quick Install (CMD or PowerShell)

Run:

```
curl -s -o install.cmd https://raw.githubusercontent.com/eldosha/myip-project/myip-win/main/install.cmd && install.cmd
```

This will:

- Download `myip.ps1` and `myip.cmd`
- Place them in:

```
%USERPROFILE%\myip-win
```

- Show instructions to add the folder to your PATH

---

## 🛠 Add to PATH

To use `myip` globally:

1. Open **Environment Variables**
2. Edit **Path**
3. Add:

```
%USERPROFILE%\myip-win
```

4. Open a new CMD or PowerShell

Now run:

```
myip
```

---

## 📄 Usage

Just type:

```
myip
```

Example output:

```
================= Your Public IP Info =================
IPv4:            203.0.113.42
IPv6:
Country:         FI
City:            Helsinki
Region:          Uusimaa
ISP:             Example ISP Oy
Services:        some-host.example.com
Your location link: https://www.google.com/maps?q=60.1699,24.9384
========================================================
```

---

## 🧩 Project Structure

```
myip-win/
├─ README.md
├─ LICENSE
├─ install.cmd
├─ myip.cmd
└─ myip.ps1
```

---

## 🔧 How It Works

- `myip.cmd` → Allows running `myip` from CMD  
- `myip.ps1` → Fetches IP info from `ipinfo.io`  
- `install.cmd` → Downloads everything automatically  

---

## 🔐 Privacy Notice

This tool sends a request to:

```
https://ipinfo.io/json
```

to retrieve your public IP and location.  
Check their privacy policy before using in sensitive environments.

---

## 🤝 Contributing

Pull requests are welcome.  
Future versions will include:

- macOS version (`myip-mac`)
- Linux version (`myip-linux`)
- Unified cross‑platform installer
- Optional offline mode
- Multiple API providers (fallback system)

---

## 📜 License

This project is licensed under the **MIT License**.  
See `LICENSE` for details.
