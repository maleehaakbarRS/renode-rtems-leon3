# Renode simulation of RTEMS on LEON3 platform

Copyright (c) 2021 [Antmicro](https://www.antmicro.com/)

This repository contains a script and test suite to simulate [RTEMS](https://github.com/RTEMS/rtems) on SPARC based LEON3 platform in [Renode](https://renode.io).

## Building

To test it locally, obtain Renode.

On Linux, the easiest way to do it is via the [renode-run](https://github.com/antmicro/renode-run) Python package:

```
pip3 install --upgrade --user git+https://github.com/antmicro/renode-run
renode-run download
```

Alternatively you can download a [latest nightly Renode package](https://builds.renode.io/), provided for all major OSes.

You can also build the [latest Renode version](https://github.com/renode/renode/tree/master) from GitHub repository.
For build instructions, please refer to [documentation](https://renode.readthedocs.io/en/latest/advanced/building_from_sources.html).

## Usage

To start the simulation, run Renode and type:

```
(monitor) s @leon3_rtems.resc
```

This will run a RTEMS shell sample bundled with [RCC compiler](https://www.gaisler.com/index.php/products/operating-systems/rtems) on LEON3 in Renode.

To run sample test cases, run the following in your console:

```
renode-run test -- leon3_rtems.robot
```

or fork this project and observe results in GitHub Actions CI workflow.

## Running the simulation

You should see the following output on UART:

```
 --- BUS TOPOLOGY ---
  |-> DEV  0x400d5160  GAISLER_APBMST
  |-> DEV  0x400d51c8  ESA_MCTRL
  |-> DEV  0x400d5230  GAISLER_APBUART
  |-> DEV  0x400d5298  GAISLER_IRQMP
  |-> DEV  0x400d5300  GAISLER_GPTIMER
  |-> DEV  0x400d5368  GAISLER_GPIO
  |-> DEV  0x400d53d0  GAISLER_ETHMAC


 You can use the shell commands drvmgr and pci to find out
 more about the system

Creating /etc/passwd and group with three useable accounts
root/pwd , test/pwd, rtems/NO PASSWORD

RTEMS Shell on dev/console. Use 'help' to list commands.
SHLL [/] # 
```
