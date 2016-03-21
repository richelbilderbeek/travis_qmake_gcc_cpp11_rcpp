TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

# Rcpp does not play nice with -Weffc++
QMAKE_CXXFLAGS += -Wall -Wextra -Werror

# C++11
QMAKE_CXX = g++-5
QMAKE_LINK = g++-5
QMAKE_CC = gcc-5
QMAKE_CXXFLAGS += -std=c++11

INCLUDEPATH += src

# These INCLUDEPATHs depends on the computer where Rcpp is installed
#INCLUDEPATH += /home/p230198/R/x86_64-pc-linux-gnu-library/3.2/Rcpp/include
#INCLUDEPATH += /home/richel/R/i686-pc-linux-gnu-library/3.2/Rcpp/include
#INCLUDEPATH += /usr/local/lib/R/site-library/Rcpp/include
#INCLUDEPATH += /usr/share/R/include/

#Adapted from script from Dirk Eddelbuettel and Romain Francois
R_HOME = $$system(R RHOME)
message("R_HOME is" $$R_HOME)
RCPPINCL = $$system($$R_HOME/bin/Rscript -e \"Rcpp:::CxxFlags\(\)\")
message("RCPPINCL is" $$RCPPINCL)
INCLUDEPATH += RCPPINCL

SOURCES += \
    src/do_magic_cpp.cpp \
    main.cpp

HEADERS += \
    src/do_magic_cpp.h

# R
LIBS += -lR
