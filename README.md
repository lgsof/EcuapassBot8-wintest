📄 [English version](README.en.md)

# 🧾 EcuapassBot – Automatización inteligente de documentos para ECUAPASS

**EcuapassBot** es una aplicación desarrollada por la empresa **FronterIA Software** y diseñada para **automatizar la creación y transmisión de documentos aduaneros** exigidos por el sistema **ECUAPASS** del Ecuador, especialmente en el contexto del **transporte terrestre internacional de carga**.

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

- `Java 21+` (Swing)
- `Python 3.12+` + `PyInstaller`
- `pdfminer`, `pytesseract` (OCR y parsing de texto)
- `xdelta3` (parcheo binario)
- `Git` (para actualizaciones)
- [Ollama](https://ollama.com) (para IA local, en desarrollo)

---

## 💼 Licenciamiento

EcuapassBot se licencia por país y empresa. Cada licencia incluye instalación en hasta **tres dispositivos**.

🔗 Más información comercial:  
👉 [**Sitio Empresa Fronteria:** https://www.fronteria.co/](https://www.fronteria.co/)

👉 [**Sitio Producto EcuapassBot:** https://www.fronteria.co/productos/ecuapassbot/](https://www.fronteria.co/productos/ecuapassbot/)

👉 [**Sitio Producto EcuapassDocs:** https://www.fronteria.co/productos/ecuapassdocs/](https://www.fronteria.co/productos/ecuapassdocs/)

---

## LOG
Jul/03 v8.0.2: Fixed "Actualizar" button.
Feb/23 v8.0.1: Prefix 8 for dir and icon.
Feb/22 v8.0.0: Uploaded to releases. Added to web page. Tested Simple Installer. Using cloud DB. 

