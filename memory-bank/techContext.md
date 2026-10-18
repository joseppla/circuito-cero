# Technical Context

## Known development environment
- OS: Linux.
- CPU: AMD Ryzen 5 3600.
- System RAM: 32 GB.
- Main GPU: AMD Radeon RX 6700 XT with 12 GB VRAM.
- Secondary GPU: NVIDIA Quadro P2000 with 5 GB VRAM.
- Local model runtime: Ollama.
- Coding agent options: OpenCode and an existing VS Code agent integration.
- Target engine: Godot 4.
- Target device: Android phone (Xiaomi) for real-device testing.

Hardware and model placement can vary with Ollama backend/configuration; verify actual behavior rather than assuming both GPUs are used together.

## Local coding models
- `qwen2.5-coder:14b` has not worked well with the user's OpenCode setup.
- `qwen2.5-coder:7b` is a candidate to test.
- `gemma4:latest` has previously created files through the user's existing agent setup and is a useful baseline.
- Compare models on the same small task. Do not assume a model is suitable just because it performs well in chat.
- For larger models or contexts, monitor actual memory and performance with `ollama ps`.
- Start with a modest context (e.g. 8K–16K) and increase only if needed. The correct context depends on the agent configuration and model runtime.

## Android debugging
The developer is setting up a Xiaomi phone for Android debugging over USB on Linux. ADB previously detected device ID `QCZPEE5XZXA6GU6D` but returned `no permissions`, despite the `reborn` user appearing to be in the `plugdev` group. This is an unresolved environment issue.
Do not assume ADB is fixed. Re-check `adb devices` before relying on the phone.

## Godot and Android export
Before Android export, verify the installed Godot version and install matching export templates. Configure a compatible JDK and Android SDK using Godot's official export settings. Do not assume the exact JDK/SDK version without checking the installed Godot version and its current requirements.

## Constraints
- Prefer free and local tools.
- Do not require paid APIs or cloud AI.
- Keep the project usable with the current hardware.
- Avoid large context settings by default.
- Do not spend time optimizing the AI stack before a small gameplay task proves the coding workflow works.
