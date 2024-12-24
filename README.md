# Caravel Analog User

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![CI](https://github.com/efabless/caravel_user_project_analog/actions/workflows/user_project_ci.yml/badge.svg)](https://github.com/efabless/caravel_user_project_analog/actions/workflows/user_project_ci.yml) [![Caravan Build](https://github.com/efabless/caravel_user_project_analog/actions/workflows/caravan_build.yml/badge.svg)](https://github.com/efabless/caravel_user_project_analog/actions/workflows/caravan_build.yml)

---

# 3LFCC and UTFSM Chipathon

This tapeout includes the following projects:

- Medium sized 3 Level flying capacitor converter (converter_1)
- Small sized 3 Level flying capacitor converter (converter_2)
- 2 NMOS Buck converter (converter_3)
- Analog Mux
- Single cycle RISCV core

## Build

To make the final GDS run magic in the mag/ folder, then run:

```
source top.tcl
proj_make_gds
```

This load the top user project space and then export the GDS removing the modules that can be problematic for KLayout FEOL/BEOL given that they were designed for KLayout. This modules have to be added manually after the GDS is generated by magic.
The coordinates for these modules are:

Analog Mux: 0, 0
Risc-V Core: 0, 0
Modulator: 1058.965, 2807.515

Then the precheck can be run with:
```
make run-precheck
```

---

Refer to [README](docs/source/index.rst) for this sample project documentation. 
