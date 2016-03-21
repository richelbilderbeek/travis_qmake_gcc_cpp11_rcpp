TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

# C++11
QMAKE_CXX = g++-5
QMAKE_LINK = g++-5
QMAKE_CC = gcc-5
QMAKE_CXXFLAGS += -std=c++11

# Shared C++11 files
INCLUDEPATH += src
SOURCES += src/do_magic_cpp.cpp
HEADERS += src/do_magic_cpp.h

# Rcpp, adapted from script from Dirk Eddelbuettel and Romain Francois
R_HOME = $$system(R RHOME)
RCPPINCL = $$system($$R_HOME/bin/Rscript -e \"Rcpp:::CxxFlags\(\)\")
INCLUDEPATH += RCPPINCL

# Rcpp does not play nice with -Weffc++
QMAKE_CXXFLAGS += -Wall -Wextra -Werror

# C++11-only files
SOURCES += main.cpp

# R
LIBS += -lR
