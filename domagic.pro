TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

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
