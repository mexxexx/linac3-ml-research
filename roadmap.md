---
author : Max Mihailescu
title : Ideas for the Linac3 Source ML Analysis
bibliography: bibliography
---

This document provides a collection of ideas and topics for the analysis of the Linac3 Ion Source from a ML viewpoint. I will try to collect descriptions and links to interesting papers and summarize the results I had when trying out some of them.

## Clustering

Given a collection of data points, clustering is to group together points that are similar under some kind of similarity metric. Usually, this is an unsupervised technique, meaning that no reference labels are known. There exist a variety of different algorithms, and each algorithm can produce very different results on the same set of data. Therefore it is crucial to somehow evaluate the results.

For Linac3 we performed a Clustering Analysis with the goal, to see, if certain settings of the source would lead to a stable beam current. For the resulting report please contact Detlef Küchler (CERN BE-ABP-HSL).

The clustering algorithm we used is called _Optigrid_ and is described in the paper "Optimal Grid-Clustering: Towards Breaking the Curse of Dimensionality in High-Dimensional Clustering" by Alexander Hinneburg and Daniel A. Keim. [@Hinneburg:OptimalGridClustering]

## Matrix Profile

The Matrix Profile is a tool for efficient motif discovery in time series, i.e. for discovery of repeated or "conserved" patterns. It can also be used to find time series discords, i.e. anomalies. A large number of papers was published by the same working group, you can find the projects website here [@Keogh:UCRMatrixProfile]. For a good introduction with example applications read the first paper [@Yeh:MatrixProfileI].


### What is the Matrix Profile?

First, let's understand what a subsequence is. Consider a time series $T=T_1, \dots ,T_n$ of length $n$, and fix a number $m < n$ (typically $m \ll n$). Now, a subsequence of length $m$ starting at $i$ is the continuous block $T_i, \dots T_{i+m}$. By sliding a window of size $m$ over $T$ we can get all $n-m+1$ subsequences of length $m$.

Now, we can define the distance between two subsequences. The most obvious choice is the euclidean distance $dist(Q, T) = \sqrt{\left(Q_1 - T_1\right)^2+\dots+\left(Q_m-T_m\right)^2}$. However, for the matrix profile we work with the so called _z-normalized_ euclidean distance. It is the euclidean distance of the z-normalized subsequences, i.e. we subtract the mean of the subsequence and divide the difference by its standard deviation, and only then take the elidean distance. By this we rescale all subsequences to make them more compareable. Note that under some circumstances this might be undesirable, for example when search for motifs in the call of a bird where the pitch could be relevant.

## Discretization

## Change Point Detection

## Suffix arrays

## References
