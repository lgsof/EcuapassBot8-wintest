📄 [English version](README.en.md)

# 🧾 EcuapassBot – Automatización inteligente de documentos para ECUAPASS

**EcuapassBot** es una aplicación de escritorio diseñada para **automatizar la creación y transmisión de documentos aduaneros** exigidos por el sistema **ECUAPASS** del Ecuador, especialmente en el contexto del **transporte terrestre internacional de carga**.

Está orientada a **empresas transportistas**, **agentes de aduana** y **operadores logísticos**, y permite generar y transmitir automáticamente documentos como:

- 📝 **Cartas de porte**
- 📦 **Manifiestos de carga**
- 📄 **Declaraciones de Tránsito**

Gracias a su capacidad de extracción de datos desde los documentos PDF o desde el portal web donde se elaboran, EcuapassBot **minimiza errores de digitación**, **reduce tiempos de operación** y **mejora la eficiencia del proceso logístico y aduanero**.

---

## ⚙️ Características técnicas

EcuapassBot es una solución híbrida y modular compuesta por:

- ✅ **Frontend en Java (Swing)**: interfaz de usuario moderna y ligera, compatible con Windows.
- ✅ **Backend en Python**: empaquetado como ejecutable independiente con PyInstaller.
- ✅ **Extracción inteligente de datos**: 
  - Desde PDFs (mediante OCR y parsing estructurado)
  - Desde sitios web generadores de documentos (ej. Codebini o Sitios web de las empresas)
- ✅ **Robot de software avanzado**: 
  - Simula interacciones con el sistema ECUAPASS
  - Transmite documentos sin intervención manual
- ✅ **Actualización automática**: descarga y aplica parches desde GitHub sin sobrescribir archivos personalizados.
- ✅ **IA embebida (en desarrollo)**: autocompletado de campos basado en el historial de documentos.

---

## 🛠️ Tecnologías utilizadas

- `Java 17+` (Swing)
- `Python 3.10+` + `PyInstaller`
- `pdfminer`, `pytesseract` (OCR y parsing de texto)
- `xdelta3` (parcheo binario)
- `Git` (para actualizaciones)
- [Ollama](https://ollama.com) (para IA local, en desarrollo)

---

## 💼 Licenciamiento

EcuapassBot se licencia por país y empresa. Cada licencia incluye instalación en hasta **dos dispositivos**.

🔗 Más información comercial:  
👉 [https://softwareinteligente.github.io/productos/ecuapass-bot/](https://softwareinteligente.github.io/productos/ecuapass-bot/)

---

## LOG
Feb/20 v8.0.11: Testing on windows new Install and DB.

Feb/19 v8.0.10: Testing spdb, changing old ggsh for spdb
Feb/19 v8.0.9: Before refactoring ggsh to spdb

Feb/12 v8.0.9: Before refactoring ggsh to spdb

Feb/07 v8.0.7: Installer simplified. No tested on Windows

Feb/06 v8.0.6: Improving installer interaction. Reducing to one data empresa dialog.
Jan/29 v8.0.5: Improving installer

Jan/29 v8.0.4: Small file/dirs prunning.
Jan/29 v8.0.3: GUI Title.
Jan/29 v8.0.2: Fixed perms. 
Jan/28 v8.0.1: Added .gitattributes. Fixed GUI to front.
Jan/28 v8.0.0: New version that will have reduce size, simple installer, and payment buttons.


