# Pitchstone Shield

**Working name**: Pitchstone Shield  
**Status**: Design / v1 scope definition  
**Date**: 2026-11-24

---

## Concept

Pitchstone Shield is a lightweight, observe-first runtime security layer for Pitchstone OS built on **stock Arch Linux kernel eBPF**.

It is inspired by the high-level architecture and goals of projects such as Shirudo and Tetragon, but is an independent design. V1 deliberately stays within the capabilities of the standard Arch kernel eBPF subsystem. No custom kernel patches are required.

The primary goal of v1 is **visibility and controlled enforcement** of process, file, and network behavior with minimal operational friction.

---

## High-Level Architecture (v1)

```
+-------------------+       +------------------+
|  Shield Policies  | ----> |  Shield Loader   |
|  (declarative)    |       |  (userspace)     |
+-------------------+       +------------------+
                                   |
                                   | load / attach
                                   v
                            +---------------+
                            |  eBPF programs |
                            |  (kernel)      |
                            +---------------+
                                   |
                                   | events
                                   v
                            +---------------+
                            |  Event sink    |
                            |  (logs / ring) |
                            +---------------+
```

### Components

1. **Shield Loader** (userspace)
   - Reads Shield policy files
   - Compiles or selects pre-built eBPF objects as needed
   - Loads and attaches programs via libbpf
   - Manages lifecycle (load, attach, detach, update)

2. **Shield Format**
   - Simple, declarative policy description (YAML or similar)
   - Describes what to observe or enforce (process exec, file access, network connect, etc.)
   - Intentionally small surface area for v1

3. **Signing** (v1 scope)
   - Policies and any shipped eBPF objects can be signed for integrity
   - Verification is optional and off by default in early v1
   - No hardware root of trust required

4. **Observe-first mode**
   - Default posture is observation + logging
   - Enforcement (block/kill) is explicit and opt-in per policy
   - Reduces risk of breaking the system while learning behavior

---

## What We Borrow (High-Level Only)

From the published ideas behind Shirudo and Tetragon:

- Runtime visibility using eBPF rather than only auditd or userspace polling
- Policy-driven approach instead of hard-coded checks
- Separation between policy definition and the loader/runtime
- Preference for safe defaults (observe before enforce)

We do **not** copy architecture diagrams, code, data structures, or implementation details from any existing project.

---

## What V1 Deliberately Does NOT Do

To keep the first version achievable on a stock Arch kernel:

- **No custom kernel patches** — only features available in the standard Arch kernel eBPF implementation
- **No TPM attestation** — no hardware-backed measurements or remote attestation in v1
- **No signed-loader ABI** — the loader does not implement a formal signed interface contract in v1
- No attempt to re-implement a full commercial or research runtime
- No dependency on out-of-tree modules

These constraints keep the attack surface smaller and the maintenance burden realistic.

---

## Relationship to pitchstone-ebpf

The `pitchstone-ebpf` meta-package provides the base tooling (bpftrace, BCC, libbpf, clang, llvm, headers) needed to develop, test, and eventually run Shield components.

Shield itself is a higher-level runtime that will consume those capabilities. The meta-package is the foundation; Shield is the product layer.

---

## V1 Success Criteria

- Policies can be loaded and attached on a stock Arch system
- Events are visible (logs or ring buffer)
- Observe-first works reliably
- Enforcement can be toggled per policy without requiring a reboot
- No custom kernel required

---

## Future (Out of Scope for V1)

- Evaluation of integrating or shipping real Shirudo (once stable)
- Stronger signing and optional TPM integration
- Richer policy language
- GUI / desktop integration for visibility
- Network namespace / container-aware policies

---

**Pitchstone Shield** — visibility first, enforcement by choice, stock kernel only.
