#!/bin/bash

SRC=plane.c
BITCODE=plane.bc
EXTRA_OPTIONS=

if [ x$APPROXIMABILITY_DIR = x ] ; then
    APPROXIMABILITY_DIR=$HOME/software/approximability
fi
if [ ! -e $APPROXIMABILITY_DIR/find_approx.py ] ; then
    echo $APPROXIMABILITY_DIR/find_approx.py not found. Have you specified APPROXIMABILITY_DIR correctly?
    exit 1
fi
PROJECT_DIR=`pwd`
if [ x$KLEE_DIR = x ] ; then
    KLEE_DIR=$HOME/software/fp-analysis-klee/build
fi
if [ ! -x $KLEE_DIR/bin/klee ] ; then
    echo $KLEE_DIR/bin/klee not found. Have you specified KLEE_DIR correctly?
    exit 1
fi

if [ ! -d klee-out-0 ] ; then
    $KLEE_DIR/bin/klee $EXTRA_OPTIONS --precision -output-dir=klee-out-0 $BITCODE
    rm -f klee-last
fi
if [ ! -e out-0.txt ] ; then
    rm -rf config.tmp out-0.txt
    echo "result_path = " $PROJECT_DIR/klee-out-0 > config.tmp
    echo "source_path = " $PROJECT_DIR/$SRC >> config.tmp
    echo "ktest_tool_path = " $KLEE_DIR/bin/ktest-tool >> config.tmp
    echo "input_path = " $PROJECT_DIR >> config.tmp
    python3 $APPROXIMABILITY_DIR/find_approx.py --single-path-approximation config.tmp &> out-0.txt
    rm -f config.tmp
fi

if [ ! -d klee-out-1 ] ; then
    $KLEE_DIR/bin/klee $EXTRA_OPTIONS --precision -no-branch-check -max-time=1 -output-dir=klee-out-1 $BITCODE
    rm -f klee-last
fi
if [ ! -e out-1.txt ] ; then
    rm -rf config.tmp out-1.txt
    echo "result_path = " $PROJECT_DIR/klee-out-1 > config.tmp
    echo "source_path = " $PROJECT_DIR/$SRC >> config.tmp
    echo "ktest_tool_path = " $KLEE_DIR/bin/ktest-tool >> config.tmp
    echo "input_path = " $PROJECT_DIR >> config.tmp
    python3 $APPROXIMABILITY_DIR/find_approx.py --single-path-approximation config.tmp &> out-1.txt
    rm -f config.tmp
fi

if [ ! -d klee-out-2 ] ; then
    $KLEE_DIR/bin/klee $EXTRA_OPTIONS --precision --loop-breaking -default-trip-count=5 -max-time=1 -output-dir=klee-out-2 $BITCODE
    rm -f klee-last
fi
if [ ! -e out-2.txt ] ; then
    rm -rf config.tmp out-2.txt
    echo "result_path = " $PROJECT_DIR/klee-out-2 > config.tmp
    echo "source_path = " $PROJECT_DIR/$SRC >> config.tmp
    echo "ktest_tool_path = " $KLEE_DIR/bin/ktest-tool >> config.tmp
    echo "input_path = " $PROJECT_DIR >> config.tmp
    python3 $APPROXIMABILITY_DIR/find_approx.py --single-path-approximation config.tmp &> out-2.txt
    rm -f config.tmp
fi

if [ ! -d klee-out-3 ] ; then
    $KLEE_DIR/bin/klee $EXTRA_OPTIONS --precision --loop-breaking -default-trip-count=10 -max-time=1 -output-dir=klee-out-3 $BITCODE
    rm -f klee-last
fi
if [ ! -e out-3.txt ] ; then
    rm -rf config.tmp out-3.txt
    echo "result_path = " $PROJECT_DIR/klee-out-3 > config.tmp
    echo "source_path = " $PROJECT_DIR/$SRC >> config.tmp
    echo "ktest_tool_path = " $KLEE_DIR/bin/ktest-tool >> config.tmp
    echo "input_path = " $PROJECT_DIR >> config.tmp
    python3 $APPROXIMABILITY_DIR/find_approx.py --single-path-approximation config.tmp &> out-3.txt
    rm -f config.tmp
fi

if [ ! -d klee-out-4 ] ; then
    $KLEE_DIR/bin/klee $EXTRA_OPTIONS --precision --loop-breaking -default-trip-count=15 -max-time=1 -output-dir=klee-out-4 $BITCODE
    rm -f klee-last
fi
if [ ! -e out-4.txt ] ; then
    rm -rf config.tmp out-4.txt
    echo "result_path = " $PROJECT_DIR/klee-out-4 > config.tmp
    echo "source_path = " $PROJECT_DIR/$SRC >> config.tmp
    echo "ktest_tool_path = " $KLEE_DIR/bin/ktest-tool >> config.tmp
    echo "input_path = " $PROJECT_DIR >> config.tmp
    python3 $APPROXIMABILITY_DIR/find_approx.py --single-path-approximation config.tmp &> out-4.txt
    rm -f config.tmp
fi

