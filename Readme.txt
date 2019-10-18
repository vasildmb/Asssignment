{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf500
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
Steps:\
\
1) Load libraries\
2) Import as tables all the files in the Test and Train folder\
3Column bind the Test and Train sets with the respective subjects and Y_test files\
4) Rename columns in order to Row bind Test and Train set\
5)Create dataframes that only have columns with \'93mean()\'94 or \'93Std()\'94\
6) Combine them with cbind\
7) measure the means with colMeans() to create a tidy dataframe\
}