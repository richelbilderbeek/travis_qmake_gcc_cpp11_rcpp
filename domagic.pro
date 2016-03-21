TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

# Rcpp does not play nice with -Weffc++
QMAKE_CXXFLAGS += -Wall -Wextra -Werror

QMAKE_CXX = g++-5
QMAKE_LINK = g++-5
QMAKE_CC = gcc-5
QMAKE_CXXFLAGS += -std=c++11

INCLUDEPATH += src

# This folder is used if you did not have super-user right

INCLUDEPATH += /home/p230198/R/x86_64-pc-linux-gnu-library/3.2/Rcpp/include
INCLUDEPATH += /home/richel/R/i686-pc-linux-gnu-library/3.2/Rcpp/include

#INCLUDEPATH += /home/p230198/R/x86_64-pc-linux-gnu-library/3.2/Rcpp11/include/Rcpp
#INCLUDEPATH += /home/richel/R/i686-pc-linux-gnu-library/3.2/Rcpp11/include/Rcpp.h
INCLUDEPATH += /usr/local/lib/R/site-library/Rcpp/libs
INCLUDEPATH += /usr/share/R/include/

SOURCES += \
    src/do_magic_cpp.cpp \
    main.cpp

HEADERS += \
    src/do_magic_cpp.h

LIBS += -lR
