CXX = nvcc
CXXFLAGS = --default-stream per-thread -I gsl/include -L gsl/lib -lgsl -lgslcblas -O3 -DNUM_CPU_THREADS=10 -o 
LDFLAGS = -O3 -lineinfo -Xcompiler -fopenmp
EXE_NAME = episdet
SOURCES = src/epistasis.cu
BINDIR = bin

all: main

main:
	[ -d $(BINDIR) ] || mkdir $(BINDIR)
	$(CXX) $(CXXFLAGS) $(BINDIR)/$(EXE_NAME) $(SOURCES) $(LDFLAGS)


clean: 
	rm -rf $(BINDIR)/$(EXE_NAME)

