## Introduction
This is an implementation of [a modal superposition method for non-linear structures](https://scholar.google.com/citations?view_op=view_citation&hl=en&user=WqtD98YAAAAJ&citation_for_view=WqtD98YAAAAJ:aqlVkmm33-oC). The traditional method of numerical integration of equations of motion for nonlinear structures is computationally very costly for steady-state response analysis. However, the `modal superposition method` is a powerful and economical method developed for the harmonic response analysis of non-linear structures.

The implementation is made using MATLAB GUI module and the interface seems as follows.

| <img src="https://github.com/koraymelih/nonlinear-vibrations/assets/92992383/a3ce2754-e4ed-460e-b96c-4a7dd1d36d19" alt="drawing" width="600"/> |
|:--:|
| *The user interface of the application* |

## Requirements from the user
The user should provide the below-mentioned matrices in the form of text files given in the repo.
- System matrices
  - Mass matrix
  - Stiffness matrix
  - Linear damping matrix
  - Structural damping matrix
- Nonlinearities with the types and the  ID's of the affected nodes. The types of nonlinearities allowed are:
  -cubic stiffness
  -cubic damping
  -dry friction
  -gap nonlinearity
  -piecewise linear stiffness
  -square stiffness 

### How to use
The user provides the above-mentinoned system matrices in a text-file as in the sample file.

### How it works
Utilizing modal superposition method.
tbc

<!---
Provided the
Linear modlari 
Calculating the linear modes.
Adding the nonlinearities 
Given the stiffness damping ans mass matrix, linear modal analysis... as user requires... mod shapelarini hesapliyo..

with modal superposition method
-->


