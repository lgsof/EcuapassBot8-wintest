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
Jan/28 v8.0.3: Removed launcher. Continue with bat as launcher

Jan/28 v8.0.2: Create EcuapassBot launcher. Modified starting .bat
Jan/25 v8.0.1: Updated bats for win.
Jan/25 v8.0.0: New version that will have reduce size, simple installer, and payment buttons.


