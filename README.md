# TRR285-LoadCaseChecker_LS-Dyna
One-element tests experiencing different load cases to check material models and element formulations, LS-Dyna keyword model

## What is this all about?
This is a set of one-element tests that are loaded by various loading types (tension, coompression, shear, ...). It allows to test the response of material models and element formulations under different loading conditions. Thereby, your material or element can be verified (correct shear response, objectivity, isotropy/anisotropy, robustness, convergence, ...). The setup is modular, such that you can turn on/off certain element tests or add your own tests.

## Getting started
* Download the entire repository and unpack on your PC
* Open the '0_run.asc' file and modify the path and name of your LS-Dyna executable ('path2lsdynaExe', 'exeName'). For Windows you can create a similar batch script.
* Add your custom material card as a new file into the folder '05_materialModelCards'.
* Add your custom element formulations as a new file into the folder '03_control'.
* Open the '1_main.k' file (e.g. in a standard text editor or LS-Dyna pre-processor like LS-PrePost).
    * Choose your material card under
    ```
    $ Material model:
    *INCLUDE
    05_materialModelCards/...
    ```
    * Choose your element formulation under
    ```
    $ Element formulation:
    *INCLUDE
    03_control/...
    ```
    * Or leave one or the other as default, if you don't test both simultaneously.
    * Modify the parameter for the time integration method 'tIntegr' and/or the number of history variables 'neip' depending on your needs.
    * Turn your desired element tests on or off by adding or removing '*COMMENT  ' in front of the '*INCLUDE_TRANSFORM' for each element test (or e.g. click the 'COMMENT' tick box in LS-PrePost).
    * The following test is active:
        ```
        *INCLUDE_TRANSFORM
        ./02_OET/02_OET_UniaxialTensionX.inc
        ...
        ```
    * The following test is inactive:
        ```
        *COMMENT  *INCLUDE_TRANSFORM
        ./02_OET/02_OET_UniaxialTensionY.inc
        ...
        ```
* Run the LS-Dyna keyword file '1_main.k' using your LS-Dyna executable, e.g. by executing './0_run.sh' in the terminal.


## Settings
* The unit system for the exemplary material card '5_MAT224-example.inc' is (ton, MPa, mm, N, s).
* For explicit time integration you might want to use mass scaling to speed up the simulation. E.g. increase the material density 'ro' from 7.85e-9 to 7.85e-6.

## Acknowledgements
The funding by the Deutsche Forschungsgemeinschaft (DFG, German Research Foundation), Germany — Project-ID 418701707 — TRR 285/2, subproject A05 is gratefully acknowledged. We also want to thank our colleagues in the TRR285 Benjamin Gröger and Johannes Gerritzen for their input.

## ToDo
* Create '0_run' file for Windows
* Add a automatic result checker, that e.g. compares output with presaved data
