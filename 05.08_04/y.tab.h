/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    OPEN_BRACKET = 258,            /* OPEN_BRACKET  */
    CLOSE_BRACKET = 259,           /* CLOSE_BRACKET  */
    ASSIGN = 260,                  /* ASSIGN  */
    PRINT = 261,                   /* PRINT  */
    num = 262,                     /* num  */
    VARIABLE = 263,                /* VARIABLE  */
    ADD = 264,                     /* ADD  */
    SUB = 265,                     /* SUB  */
    MUL = 266,                     /* MUL  */
    DIV = 267,                     /* DIV  */
    POW = 268,                     /* POW  */
    EXP = 269,                     /* EXP  */
    SQRT = 270,                    /* SQRT  */
    MOD = 271,                     /* MOD  */
    PI = 272,                      /* PI  */
    E = 273,                       /* E  */
    COS = 274,                     /* COS  */
    SIN = 275,                     /* SIN  */
    TAN = 276,                     /* TAN  */
    ASIN = 277,                    /* ASIN  */
    ACOS = 278,                    /* ACOS  */
    ATAN = 279,                    /* ATAN  */
    COT = 280,                     /* COT  */
    SEC = 281,                     /* SEC  */
    COSEC = 282,                   /* COSEC  */
    LOG = 283,                     /* LOG  */
    LN = 284                       /* LN  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define OPEN_BRACKET 258
#define CLOSE_BRACKET 259
#define ASSIGN 260
#define PRINT 261
#define num 262
#define VARIABLE 263
#define ADD 264
#define SUB 265
#define MUL 266
#define DIV 267
#define POW 268
#define EXP 269
#define SQRT 270
#define MOD 271
#define PI 272
#define E 273
#define COS 274
#define SIN 275
#define TAN 276
#define ASIN 277
#define ACOS 278
#define ATAN 279
#define COT 280
#define SEC 281
#define COSEC 282
#define LOG 283
#define LN 284

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 17 "file1.y"

double p;
char id;

#line 130 "y.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
