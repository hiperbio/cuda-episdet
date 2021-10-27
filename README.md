# cuda-episdet

<p>
  <a href="https://doi.org/10.1007/978-3-030-63171-0_6" alt="Publication">
    <img src="https://img.shields.io/badge/DOI-10.1007/978--3--030--63171--0_6-blue.svg"/></a>
    
</p>

This repository includes an implementation of an exhaustive epistasis detection algorithm focused on efficient third-order searches that targets GPU-based systems.
Taking into account the architectural differences between CPU and GPU devices, a highly optimized GPU+CPU based approach for epistasis detection has been implemented in CUDA.
Evaluation on different GPU architectures (Maxwell 2.0, Pascal, Volta and Turing) achieves on average close to 3× higher performance than that of related art that also uses conventional GPU acceleration (i.e. without using specialized processing units such as tensor cores).

## What is Epistasis Detection?

Epistasis detection is a computationally complex bioinformatics application with significant societal impact. It is used in the search of new correlations between genetic markers, such as single-nucleotide polymorphisms (SNPs), and phenotype (e.g. a particular disease state).
Finding new associations between genotype and phenotype can contribute to improved preventive care, personalized treatments and to the development of better drugs for more conditions.

## Setup

### Requirements

* CUDA Toolkit (version 9+ recommended)
* GNU Scientific Library (GSL)
* NVIDIA GPU

The GSL library can be installed running `sh setup.sh` or installing the GSL system development package, e.g. `sudo apt-get install libgsl-dev` on Debian based systems. If you opt for the former you are required to add the location of the library to the `LD_LIBRARY_PATH` environment variable.

### Compilation

The CUDA application can be compiled with the following command:
```bash
        make
```

## Usage example

Running a third-order search with a synthetic example dataset with 4096 SNPs (11,444,858,880 triplets of SNPs to evaluate) and 8192 samples (4096 controls and 4096 cases):

```bash
$ ./bin/episdet datasets/4096SNPs_8192samples.csv
```

This example takes close to 1 minute to execute and achieves a performance of above 1.5 tera sets (triplets) of SNPs processed per second (scaled to sample size), when executed on a system with a Core i7 4770K CPU and a Titan Xp GPU.


## In papers and reports, please refer to this tool as follows

R. Nobre, S. Santander-Jiménez, L. Sousa, A. Ilic, "Accelerating 3-Way Epistasis Detection with CPU+GPU Processing," in Klusáček D., Cirne W., Desai N. (eds) Job Scheduling Strategies for Parallel Processing. JSSPP 2020. Lecture Notes in Computer Science, vol 12326. Springer, Cham. https://doi.org/10.1007/978-3-030-63171-0_6


BibTeX:

    @InProceedings{10.1007/978-3-030-63171-0_6,
    author="Nobre, Ricardo
    and Santander-Jim{\'e}nez, Sergio
    and Sousa, Leonel
    and Ilic, Aleksandar",
    editor="Klus{\'a}{\v{c}}ek, Dalibor
    and Cirne, Walfredo
    and Desai, Narayan",
    title="Accelerating 3-Way Epistasis Detection with CPU+GPU Processing",
    booktitle="Job Scheduling Strategies for Parallel Processing",
    year="2020",
    publisher="Springer International Publishing",
    address="Cham",
    pages="106--126",
    isbn="978-3-030-63171-0"
    }


