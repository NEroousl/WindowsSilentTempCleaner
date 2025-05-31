Here's the complete unified markdown file text:

```markdown
# 🧹 WindowsSilentTempCleaner

**Version 1.0**  
A lightweight, silent Windows utility that automatically cleans system temp folders on every startup — without interrupting your workflow.

## ✅ Features

- 🗑️ Cleans:
  - `C:\Windows\Prefetch`
  - `C:\Users\<User>\AppData\Local\Temp`
  - `C:\Windows\Temp`
- 🔕 Runs silently (no windows, no input required)
- 🔔 Sends a native Windows toast notification when cleanup is complete
- 🚀 Automatically starts with Windows (via Startup folder or Registry)
- 📦 Portable `.exe` (no installation needed)
- 🧩 Lightweight (~5 MB)
- 🧼 Built in Python and compiled using PyInstaller

---

## 📁 How to Use

1. Clone/download the repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/WindowsSilentTempCleaner.git
   ```

2. Install Python dependencies (if building yourself):
   ```bash
   pip install -r requirements.txt
   ```

3. Build the executable:
   ```bash
   pyinstaller --onefile --windowed clean_temp.py
   ```

4. Auto-install to Startup (Current User):
   ```bash
   cd WindowsSilentTempCleaner
   setup_startup.bat
   ```
   
   Or manually copy the `dist/clean_temp.exe` to:
   - **Current User**:
     ```
     %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
     ```
   - **All Users (Admin)**:
     ```
     C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
     ```

---

## ⚙️ Technical Details

- **Python Version**: 3.8+
- **Dependencies**: See `requirements.txt`
- **Build Command**: `pyinstaller --onefile --windowed clean_temp.py`
- **Notification System**: Uses Windows Toast Notifications
- **Compatibility**: Windows 10/11

---

## ❓ FAQ

**Q: Is this safe to run?**  
A: Yes, it only deletes temporary files from standard temp locations.

**Q: Can I customize which folders get cleaned?**  
A: Edit the `clean_temp.py` file to modify the target folders.

**Q: How do I uninstall?**  
A: Simply delete the executable from your startup folder.

