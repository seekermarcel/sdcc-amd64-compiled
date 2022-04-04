/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
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
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.5.1"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 24 "SDCC.y"

#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "SDCCglobl.h"
#include "SDCCsymt.h"
#include "SDCChasht.h"
#include "SDCCval.h"
#include "SDCCmem.h"
#include "SDCCast.h"
#include "port.h"
#include "newalloc.h"
#include "SDCCerr.h"
#include "SDCCutil.h"
#include "SDCCbtree.h"
#include "SDCCopt.h"

extern int yyerror (char *);
extern FILE     *yyin;
int NestLevel = 0;      /* current NestLevel       */
int stackPtr  = 1;      /* stack pointer           */
int xstackPtr = 0;      /* xstack pointer          */
int reentrant = 0;
int blockNo   = 0;      /* sequential block number  */
int currBlockno=0;
int inCritical= 0;
int seqPointNo= 1;      /* sequence point number */
int ignoreTypedefType=0;
extern int yylex();
int yyparse(void);
extern int noLineno;
char lbuff[1024];       /* local buffer */
char function_name[256] = {0};

/* break & continue stacks */
STACK_DCL(continueStack  ,symbol *,MAX_NEST_LEVEL)
STACK_DCL(breakStack  ,symbol *,MAX_NEST_LEVEL)
STACK_DCL(forStack  ,symbol *,MAX_NEST_LEVEL)
STACK_DCL(swStk   ,ast   *,MAX_NEST_LEVEL)
STACK_DCL(blockNum,int,MAX_NEST_LEVEL*3)

value *cenum = NULL;        /* current enumeration  type chain*/
bool uselessDecl = TRUE;

#define YYDEBUG 1


#line 118 "SDCCy.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Use api.header.include to #include this header
   instead of duplicating it here.  */
#ifndef YY_YY_SDCCY_H_INCLUDED
# define YY_YY_SDCCY_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    IDENTIFIER = 258,
    TYPE_NAME = 259,
    ADDRSPACE_NAME = 260,
    CONSTANT = 261,
    SIZEOF = 262,
    ALIGNOF = 263,
    TYPEOF = 264,
    OFFSETOF = 265,
    PTR_OP = 266,
    INC_OP = 267,
    DEC_OP = 268,
    LEFT_OP = 269,
    RIGHT_OP = 270,
    LE_OP = 271,
    GE_OP = 272,
    EQ_OP = 273,
    NE_OP = 274,
    AND_OP = 275,
    OR_OP = 276,
    MUL_ASSIGN = 277,
    DIV_ASSIGN = 278,
    MOD_ASSIGN = 279,
    ADD_ASSIGN = 280,
    SUB_ASSIGN = 281,
    LEFT_ASSIGN = 282,
    RIGHT_ASSIGN = 283,
    AND_ASSIGN = 284,
    XOR_ASSIGN = 285,
    OR_ASSIGN = 286,
    TYPEDEF = 287,
    EXTERN = 288,
    STATIC = 289,
    AUTO = 290,
    REGISTER = 291,
    CODE = 292,
    EEPROM = 293,
    INTERRUPT = 294,
    SFR = 295,
    SFR16 = 296,
    SFR32 = 297,
    ADDRESSMOD = 298,
    STATIC_ASSERT = 299,
    AT = 300,
    SBIT = 301,
    REENTRANT = 302,
    USING = 303,
    XDATA = 304,
    DATA = 305,
    IDATA = 306,
    PDATA = 307,
    VAR_ARGS = 308,
    CRITICAL = 309,
    NONBANKED = 310,
    BANKED = 311,
    SHADOWREGS = 312,
    SD_WPARAM = 313,
    SD_BOOL = 314,
    SD_CHAR = 315,
    SD_SHORT = 316,
    SD_INT = 317,
    SD_LONG = 318,
    SIGNED = 319,
    UNSIGNED = 320,
    SD_FLOAT = 321,
    DOUBLE = 322,
    FIXED16X16 = 323,
    SD_CONST = 324,
    VOLATILE = 325,
    SD_VOID = 326,
    BIT = 327,
    STRUCT = 328,
    UNION = 329,
    ENUM = 330,
    RANGE = 331,
    SD_FAR = 332,
    CASE = 333,
    DEFAULT = 334,
    IF = 335,
    ELSE = 336,
    SWITCH = 337,
    WHILE = 338,
    DO = 339,
    FOR = 340,
    GOTO = 341,
    CONTINUE = 342,
    BREAK = 343,
    RETURN = 344,
    NAKED = 345,
    JAVANATIVE = 346,
    OVERLAY = 347,
    TRAP = 348,
    STRING_LITERAL = 349,
    INLINEASM = 350,
    IFX = 351,
    ADDRESS_OF = 352,
    GET_VALUE_AT_ADDRESS = 353,
    SPIL = 354,
    UNSPIL = 355,
    GETHBIT = 356,
    GETABIT = 357,
    GETBYTE = 358,
    GETWORD = 359,
    BITWISEAND = 360,
    UNARYMINUS = 361,
    IPUSH = 362,
    IPOP = 363,
    PCALL = 364,
    ENDFUNCTION = 365,
    JUMPTABLE = 366,
    RRC = 367,
    RLC = 368,
    CAST = 369,
    CALL = 370,
    PARAM = 371,
    NULLOP = 372,
    BLOCK = 373,
    LABEL = 374,
    RECEIVE = 375,
    SEND = 376,
    ARRAYINIT = 377,
    DUMMY_READ_VOLATILE = 378,
    ENDCRITICAL = 379,
    SWAP = 380,
    INLINE = 381,
    NORETURN = 382,
    RESTRICT = 383,
    SMALLC = 384,
    Z88DK_FASTCALL = 385,
    Z88DK_CALLEE = 386,
    ALIGNAS = 387,
    ASM = 388
  };
#endif
/* Tokens.  */
#define IDENTIFIER 258
#define TYPE_NAME 259
#define ADDRSPACE_NAME 260
#define CONSTANT 261
#define SIZEOF 262
#define ALIGNOF 263
#define TYPEOF 264
#define OFFSETOF 265
#define PTR_OP 266
#define INC_OP 267
#define DEC_OP 268
#define LEFT_OP 269
#define RIGHT_OP 270
#define LE_OP 271
#define GE_OP 272
#define EQ_OP 273
#define NE_OP 274
#define AND_OP 275
#define OR_OP 276
#define MUL_ASSIGN 277
#define DIV_ASSIGN 278
#define MOD_ASSIGN 279
#define ADD_ASSIGN 280
#define SUB_ASSIGN 281
#define LEFT_ASSIGN 282
#define RIGHT_ASSIGN 283
#define AND_ASSIGN 284
#define XOR_ASSIGN 285
#define OR_ASSIGN 286
#define TYPEDEF 287
#define EXTERN 288
#define STATIC 289
#define AUTO 290
#define REGISTER 291
#define CODE 292
#define EEPROM 293
#define INTERRUPT 294
#define SFR 295
#define SFR16 296
#define SFR32 297
#define ADDRESSMOD 298
#define STATIC_ASSERT 299
#define AT 300
#define SBIT 301
#define REENTRANT 302
#define USING 303
#define XDATA 304
#define DATA 305
#define IDATA 306
#define PDATA 307
#define VAR_ARGS 308
#define CRITICAL 309
#define NONBANKED 310
#define BANKED 311
#define SHADOWREGS 312
#define SD_WPARAM 313
#define SD_BOOL 314
#define SD_CHAR 315
#define SD_SHORT 316
#define SD_INT 317
#define SD_LONG 318
#define SIGNED 319
#define UNSIGNED 320
#define SD_FLOAT 321
#define DOUBLE 322
#define FIXED16X16 323
#define SD_CONST 324
#define VOLATILE 325
#define SD_VOID 326
#define BIT 327
#define STRUCT 328
#define UNION 329
#define ENUM 330
#define RANGE 331
#define SD_FAR 332
#define CASE 333
#define DEFAULT 334
#define IF 335
#define ELSE 336
#define SWITCH 337
#define WHILE 338
#define DO 339
#define FOR 340
#define GOTO 341
#define CONTINUE 342
#define BREAK 343
#define RETURN 344
#define NAKED 345
#define JAVANATIVE 346
#define OVERLAY 347
#define TRAP 348
#define STRING_LITERAL 349
#define INLINEASM 350
#define IFX 351
#define ADDRESS_OF 352
#define GET_VALUE_AT_ADDRESS 353
#define SPIL 354
#define UNSPIL 355
#define GETHBIT 356
#define GETABIT 357
#define GETBYTE 358
#define GETWORD 359
#define BITWISEAND 360
#define UNARYMINUS 361
#define IPUSH 362
#define IPOP 363
#define PCALL 364
#define ENDFUNCTION 365
#define JUMPTABLE 366
#define RRC 367
#define RLC 368
#define CAST 369
#define CALL 370
#define PARAM 371
#define NULLOP 372
#define BLOCK 373
#define LABEL 374
#define RECEIVE 375
#define SEND 376
#define ARRAYINIT 377
#define DUMMY_READ_VOLATILE 378
#define ENDCRITICAL 379
#define SWAP 380
#define INLINE 381
#define NORETURN 382
#define RESTRICT 383
#define SMALLC 384
#define Z88DK_FASTCALL 385
#define Z88DK_CALLEE 386
#define ALIGNAS 387
#define ASM 388

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 73 "SDCC.y"

    symbol     *sym;        /* symbol table pointer                   */
    structdef  *sdef;       /* structure definition                   */
    char       yychar[SDCC_NAME_MAX+1];
    sym_link   *lnk;        /* declarator  or specifier               */
    int        yyint;       /* integer value returned                 */
    value      *val;        /* for integer constant                   */
    initList   *ilist;      /* initial list                           */
    designation*dsgn;       /* designator                             */
    const char *yystr;      /* pointer to dynamicaly allocated string */
    ast        *asts;       /* expression tree                        */

#line 449 "SDCCy.c"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_SDCCY_H_INCLUDED  */



#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))

/* Stored state numbers (used for stacks). */
typedef yytype_int16 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                            \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  114
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   1899

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  158
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  118
/* YYNRULES -- Number of rules.  */
#define YYNRULES  319
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  493

#define YYUNDEFTOK  2
#define YYMAXUTOK   388


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   145,     2,     2,     2,   147,   140,     2,
     137,   138,   141,   142,   139,   143,   134,   146,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,   153,   155,
     148,   154,   149,   152,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,   135,     2,   136,   150,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   156,   151,   157,   144,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    94,
      95,    96,    97,    98,    99,   100,   101,   102,   103,   104,
     105,   106,   107,   108,   109,   110,   111,   112,   113,   114,
     115,   116,   117,   118,   119,   120,   121,   122,   123,   124,
     125,   126,   127,   128,   129,   130,   131,   132,   133
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   145,   145,   148,   152,   153,   157,   161,   182,   187,
     186,   196,   195,   208,   209,   213,   217,   220,   223,   226,
     229,   232,   238,   241,   244,   250,   256,   262,   265,   268,
     274,   275,   283,   284,   284,   291,   298,   299,   300,   301,
     305,   331,   332,   333,   335,   339,   339,   346,   346,   353,
     355,   360,   361,   365,   366,   367,   368,   377,   378,   379,
     380,   381,   385,   386,   387,   388,   389,   390,   394,   395,
     399,   400,   401,   402,   406,   407,   408,   412,   413,   414,
     418,   419,   420,   421,   422,   426,   427,   428,   432,   433,
     437,   438,   442,   443,   447,   448,   448,   453,   454,   454,
     459,   460,   460,   468,   469,   514,   515,   516,   517,   518,
     519,   520,   521,   522,   523,   524,   528,   529,   529,   533,
     537,   561,   586,   592,   595,   596,   601,   602,   607,   608,
     613,   614,   622,   623,   627,   628,   632,   633,   637,   641,
     642,   646,   668,   672,   676,   680,   684,   688,   695,   699,
     706,   712,   727,   728,   741,   746,   751,   756,   761,   766,
     771,   776,   781,   785,   789,   793,   797,   802,   807,   811,
     815,   819,   823,   827,   831,   839,   846,   851,   857,   866,
     870,   878,   882,   890,   901,   912,   925,   924,  1017,  1046,
    1047,  1051,  1052,  1063,  1082,  1083,  1096,  1126,  1127,  1135,
    1136,  1151,  1169,  1173,  1178,  1199,  1215,  1216,  1217,  1225,
    1245,  1258,  1272,  1273,  1281,  1282,  1286,  1292,  1302,  1303,
    1335,  1336,  1337,  1346,  1378,  1383,  1382,  1416,  1426,  1427,
    1440,  1446,  1486,  1493,  1496,  1498,  1506,  1507,  1515,  1516,
    1520,  1521,  1529,  1544,  1554,  1562,  1588,  1589,  1590,  1597,
    1598,  1603,  1609,  1615,  1623,  1624,  1625,  1638,  1637,  1667,
    1668,  1669,  1673,  1674,  1683,  1694,  1695,  1696,  1697,  1698,
    1699,  1700,  1701,  1705,  1714,  1723,  1724,  1736,  1738,  1745,
    1745,  1755,  1766,  1774,  1775,  1776,  1781,  1788,  1792,  1805,
    1831,  1832,  1836,  1837,  1841,  1842,  1847,  1847,  1855,  1855,
    1880,  1894,  1909,  1928,  1928,  1937,  1947,  1972,  1973,  1977,
    1982,  1995,  2005,  2014,  2026,  2030,  2040,  2053,  2064,  2082
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "IDENTIFIER", "TYPE_NAME",
  "ADDRSPACE_NAME", "CONSTANT", "SIZEOF", "ALIGNOF", "TYPEOF", "OFFSETOF",
  "PTR_OP", "INC_OP", "DEC_OP", "LEFT_OP", "RIGHT_OP", "LE_OP", "GE_OP",
  "EQ_OP", "NE_OP", "AND_OP", "OR_OP", "MUL_ASSIGN", "DIV_ASSIGN",
  "MOD_ASSIGN", "ADD_ASSIGN", "SUB_ASSIGN", "LEFT_ASSIGN", "RIGHT_ASSIGN",
  "AND_ASSIGN", "XOR_ASSIGN", "OR_ASSIGN", "TYPEDEF", "EXTERN", "STATIC",
  "AUTO", "REGISTER", "CODE", "EEPROM", "INTERRUPT", "SFR", "SFR16",
  "SFR32", "ADDRESSMOD", "STATIC_ASSERT", "AT", "SBIT", "REENTRANT",
  "USING", "XDATA", "DATA", "IDATA", "PDATA", "VAR_ARGS", "CRITICAL",
  "NONBANKED", "BANKED", "SHADOWREGS", "SD_WPARAM", "SD_BOOL", "SD_CHAR",
  "SD_SHORT", "SD_INT", "SD_LONG", "SIGNED", "UNSIGNED", "SD_FLOAT",
  "DOUBLE", "FIXED16X16", "SD_CONST", "VOLATILE", "SD_VOID", "BIT",
  "STRUCT", "UNION", "ENUM", "RANGE", "SD_FAR", "CASE", "DEFAULT", "IF",
  "ELSE", "SWITCH", "WHILE", "DO", "FOR", "GOTO", "CONTINUE", "BREAK",
  "RETURN", "NAKED", "JAVANATIVE", "OVERLAY", "TRAP", "STRING_LITERAL",
  "INLINEASM", "IFX", "ADDRESS_OF", "GET_VALUE_AT_ADDRESS", "SPIL",
  "UNSPIL", "GETHBIT", "GETABIT", "GETBYTE", "GETWORD", "BITWISEAND",
  "UNARYMINUS", "IPUSH", "IPOP", "PCALL", "ENDFUNCTION", "JUMPTABLE",
  "RRC", "RLC", "CAST", "CALL", "PARAM", "NULLOP", "BLOCK", "LABEL",
  "RECEIVE", "SEND", "ARRAYINIT", "DUMMY_READ_VOLATILE", "ENDCRITICAL",
  "SWAP", "INLINE", "NORETURN", "RESTRICT", "SMALLC", "Z88DK_FASTCALL",
  "Z88DK_CALLEE", "ALIGNAS", "ASM", "'.'", "'['", "']'", "'('", "')'",
  "','", "'&'", "'*'", "'+'", "'-'", "'~'", "'!'", "'/'", "'%'", "'<'",
  "'>'", "'^'", "'|'", "'?'", "':'", "'='", "';'", "'{'", "'}'", "$accept",
  "file", "program", "external_definition", "function_definition", "$@1",
  "$@2", "function_attribute", "function_attributes", "function_body",
  "offsetof_member_designator", "$@3", "primary_expr",
  "string_literal_val", "postfix_expr", "$@4", "$@5", "argument_expr_list",
  "unary_expr", "unary_operator", "cast_expr", "multiplicative_expr",
  "additive_expr", "shift_expr", "relational_expr", "equality_expr",
  "and_expr", "exclusive_or_expr", "inclusive_or_expr", "logical_and_expr",
  "$@6", "logical_or_expr", "$@7", "conditional_expr", "$@8",
  "assignment_expr", "assignment_operator", "expr", "$@9", "constant_expr",
  "declaration", "declaration_specifiers", "declaration_specifiers_",
  "init_declarator_list", "init_declarator", "designation_opt",
  "designation", "designator_list", "designator",
  "storage_class_specifier", "function_specifier", "alignment_specifier",
  "Interrupt_storage", "type_specifier", "sfr_reg_bit", "sfr_attributes",
  "struct_or_union_specifier", "$@10", "struct_or_union", "opt_stag",
  "stag", "struct_declaration_list", "struct_declaration",
  "struct_declarator_list", "struct_declarator", "enum_specifier",
  "enumerator_list", "enumerator", "opt_assign_expr", "declarator",
  "declarator3", "function_declarator", "declarator2_function_attributes",
  "declarator2", "function_declarator2", "$@11", "pointer",
  "unqualified_pointer", "type_specifier_list", "type_specifier_list_",
  "identifier_list", "parameter_type_list", "parameter_list",
  "parameter_declaration", "type_name", "abstract_declarator",
  "abstract_declarator2", "$@12", "initializer", "initializer_list",
  "static_assert_declaration", "statement", "critical",
  "critical_statement", "labeled_statement", "label", "@13", "start_block",
  "end_block", "compound_statement", "declaration_list", "statement_list",
  "expression_statement", "else_statement", "selection_statement", "$@14",
  "@15", "while", "do", "for", "iteration_statement", "$@16", "expr_opt",
  "jump_statement", "asm_string_literal", "asm_statement", "addressmod",
  "identifier", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_int16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,   317,   318,   319,   320,   321,   322,   323,   324,
     325,   326,   327,   328,   329,   330,   331,   332,   333,   334,
     335,   336,   337,   338,   339,   340,   341,   342,   343,   344,
     345,   346,   347,   348,   349,   350,   351,   352,   353,   354,
     355,   356,   357,   358,   359,   360,   361,   362,   363,   364,
     365,   366,   367,   368,   369,   370,   371,   372,   373,   374,
     375,   376,   377,   378,   379,   380,   381,   382,   383,   384,
     385,   386,   387,   388,    46,    91,    93,    40,    41,    44,
      38,    42,    43,    45,   126,    33,    47,    37,    60,    62,
      94,   124,    63,    58,    61,    59,   123,   125
};
# endif

#define YYPACT_NINF (-433)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-215)

#define yytable_value_is_error(Yyn) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
    1358,  -433,  -433,  -433,  -433,  -433,  -433,  -433,  -433,  -433,
    -433,   -21,  -433,  -433,    44,   -76,  1188,  -433,  -433,  -433,
    -433,  -433,  -433,  -433,  -433,  -433,  -433,  -433,  -433,  -433,
    -433,  -433,  -433,  -433,  -433,  -433,  -433,     6,  -433,  -433,
    -433,   -27,    13,  -433,   118,  1358,  -433,  -433,  -433,     5,
    -433,  1732,  1732,  1732,  1732,  -433,  -433,  -433,    44,  -433,
     -13,  -433,   -80,   -17,   864,    21,  1557,    -7,  -433,  -433,
    -433,    19,  1188,  -433,  1233,    27,  1244,    48,  1244,  1244,
    -433,  1077,  -433,  -433,  -433,  -433,  -433,  -433,  -433,  -433,
      86,  -433,  1188,  -433,   -74,   -52,   126,    47,   185,    49,
      43,    57,   196,    30,  -433,  -433,  -433,    44,    66,  1077,
      87,   -13,  -433,    21,  -433,  -433,  -433,  -109,  -433,    73,
    -433,    21,  -433,  -433,  -433,  -433,  -433,    79,  -433,  1088,
     817,    15,  1188,  -433,  1188,  -433,  -433,  -433,  -433,  -433,
    -433,  -433,  -433,  -433,  -433,  -433,  -433,  -433,   864,  -433,
     -80,  -433,  -433,   105,  1771,  -433,    44,    97,   142,  1077,
    -433,  1732,  1188,  -433,  1732,  -433,  -433,   499,  -433,  -433,
      72,    -8,   146,  -433,  -433,  -433,  -433,  1188,  1150,  -433,
    1188,  1188,  1188,  1188,  1188,  1188,  1188,  1188,  1188,  1188,
    1188,  1188,  1188,  1188,  1188,  1188,  -433,  -433,  -433,  -113,
    -433,   131,    44,   148,   149,  -433,   -13,    13,  -433,   241,
     817,   133,  -433,   152,   136,  -433,  -433,  -433,     5,   501,
    -433,   817,  -433,  1732,    75,  -433,  -433,  -433,  -433,  -433,
    -433,   138,  -433,   201,   158,   159,   160,  -433,  -433,  -433,
    -433,  -433,  -433,  -433,  -433,  -433,  -433,  -433,  1188,  -433,
    -433,  1166,  1518,   -96,  -433,   -56,  1188,    44,    44,    -4,
    -433,   162,   163,  -433,  -433,  -433,   -74,   -74,   -52,   -52,
     126,   126,   126,   126,    47,    47,   185,    49,    43,  1188,
    1188,  1188,    44,  -433,  1188,  -433,   -89,  -433,  -433,  -433,
     108,  -433,  -433,  -433,  1771,  -433,  -433,  -433,  1188,  -433,
     161,   167,  -433,  -433,  -433,    44,   151,   153,   656,   154,
     170,  -433,  -433,   -54,  -433,   892,  -433,  -433,   596,  -433,
    -433,   501,   691,  -433,  -433,   173,   892,   174,  -433,  -433,
    -433,   164,  -433,  -433,     8,   176,   177,  -433,  -433,  -433,
      44,  -433,   181,  -433,  -433,    44,  -433,  1188,  -433,   184,
    -433,   187,   189,   -56,  1177,   191,  -433,  -433,  -433,  -433,
    -433,  1188,    57,   196,    -9,  -433,  -433,  -433,    44,  1188,
     241,  -433,   -65,  -433,   -79,  1004,  -433,    10,   178,   179,
    1188,  1188,   157,  -433,  -433,  -433,   -53,  -433,   229,  -433,
    -433,  -433,  -433,  -433,   691,  -433,  -433,  1188,   247,  1188,
    -433,  1408,  -433,    22,  -433,  1631,  -433,  -433,   -23,  -433,
    -433,  -433,  -433,  -433,  -433,   197,  -433,  1732,  -433,  1188,
    -433,   202,  -433,  -433,  -433,  -114,  -433,  -433,  -433,  1188,
     -30,  -433,   188,  -433,  -433,   117,   129,  -433,  -433,  -433,
     204,  -433,   132,   207,   208,   194,  -433,  -433,  -433,  1188,
    -433,  -433,   213,  -433,  -433,  -433,   241,  -433,    10,  -433,
    1188,  -433,  -433,   198,  -433,  1188,  1188,    44,    62,  -433,
    -433,  -433,  -433,   892,   892,  -433,   892,   134,   200,  -433,
    -433,   265,  -433,  -433,   203,  1188,   892,  -433,  -433,   214,
    -433,   892,  -433
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_int16 yydefact[] =
{
       2,   319,   178,   165,   143,   144,   145,   146,   147,   169,
     170,   182,   184,   185,     0,     0,     0,   180,   168,   171,
     172,   173,   154,   155,   156,   157,   158,   159,   160,   166,
     167,   162,   163,   161,   174,   189,   190,     0,   148,   149,
     164,     0,     0,   232,     0,     3,     4,     6,     7,     0,
     123,   124,   128,   130,   126,   179,   181,   176,   192,   177,
       0,     9,   216,   215,   218,     0,   228,     0,     8,   220,
     183,     0,     0,    37,     0,     0,     0,     0,     0,     0,
      40,     0,    62,    63,    64,    65,    66,    67,    41,    38,
      53,    68,     0,    70,    74,    77,    80,    85,    88,    90,
      92,    94,    97,   100,   119,   175,    36,     0,   205,     0,
       0,   212,   214,     0,     1,     5,   120,     0,   132,   134,
      11,     0,   125,   129,   131,   127,   186,   188,   193,     0,
       0,   225,   152,    16,     0,    17,    21,    24,    22,    23,
      18,    19,    20,    26,    27,    28,    29,   219,    13,    25,
     217,   234,   230,   229,   233,   122,     0,     0,     0,     0,
      57,     0,     0,    60,     0,    54,    55,    70,   103,   116,
       0,   244,     0,    47,    49,    50,    45,     0,     0,    56,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    95,    98,   101,     0,
     206,   211,     0,     0,     0,   221,   213,     0,   121,     0,
       0,     0,   222,     0,     0,   281,    10,   288,     0,     0,
      30,     0,   224,     0,     0,   236,   153,    15,    14,   231,
     235,     0,   317,     0,     0,     0,     0,   106,   107,   108,
     109,   110,   111,   112,   113,   114,   115,   105,     0,    39,
     117,     0,     0,   246,   245,   247,     0,     0,     0,     0,
      43,     0,    51,    71,    72,    73,    75,    76,    78,    79,
      83,    84,    81,    82,    86,    87,    89,    91,    93,     0,
       0,     0,   207,   203,     0,   209,     0,   151,   150,   133,
     136,   259,   135,    12,     0,   223,   287,   273,     0,   279,
       0,     0,   300,   301,   302,     0,     0,     0,     0,     0,
       0,   292,   282,     0,   290,     0,   271,   265,     0,   283,
     266,     0,     0,   267,   268,     0,     0,     0,   269,   270,
     272,    36,   289,    31,   244,     0,   238,   240,   243,   227,
       0,   318,     0,    58,    59,     0,   104,     0,   250,     0,
     254,     0,     0,   248,     0,   257,    69,    48,    46,    42,
      44,     0,    96,    99,     0,   208,   210,   204,     0,     0,
       0,   137,     0,   139,     0,     0,   194,   202,     0,     0,
       0,     0,     0,   310,   311,   312,     0,   316,     0,   293,
     274,   276,   275,   285,     0,   291,   284,     0,     0,   307,
     277,     0,   242,   246,   226,     0,   237,   264,     0,    32,
     118,   251,   255,   249,   252,     0,   256,     0,    52,     0,
     142,     0,   262,   138,   140,   136,   260,   187,   195,     0,
       0,   197,   199,   278,   280,     0,     0,   309,   313,   314,
       0,   286,     0,     0,   308,     0,   239,   241,    33,     0,
      61,   253,     0,   102,   141,   261,     0,   200,   202,   196,
       0,   296,   298,     0,   303,     0,   307,     0,     0,   258,
     263,   198,   201,     0,     0,   315,     0,     0,     0,    34,
      35,   295,   299,   304,     0,   307,     0,   297,   305,     0,
     294,     0,   306
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -433,  -433,  -433,   311,  -433,  -433,  -433,   211,  -433,   147,
    -433,  -433,  -433,  -433,  -433,  -433,  -433,    -1,   155,  -433,
     -15,    91,    94,    50,    85,   169,   171,   172,    90,    84,
    -433,    89,  -433,    -6,  -433,  -155,  -433,    35,  -433,    52,
       3,     7,   209,  -433,   166,   -59,  -433,  -433,     2,  -433,
    -433,  -433,  -433,   -62,  -433,  -433,  -433,  -433,  -433,  -433,
    -433,  -433,     1,  -433,   -87,  -433,   186,    93,  -433,   -40,
      17,   330,    31,  -433,  -433,  -433,    38,  -433,   314,  -433,
    -433,  -218,  -433,   -18,   -25,  -246,  -220,  -433,  -351,  -433,
    -433,  -286,  -433,  -433,  -433,  -433,  -433,  -433,  -294,  -115,
     180,    68,  -433,  -433,  -433,  -433,  -433,  -433,  -433,  -433,
    -433,  -433,  -432,  -433,  -433,  -433,  -433,     0
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,    44,    45,    46,    47,   130,   210,   147,   148,   216,
     408,   467,    88,    89,    90,   258,   257,   261,    91,    92,
     167,    94,    95,    96,    97,    98,    99,   100,   101,   102,
     279,   103,   280,   168,   281,   169,   248,   313,   347,   105,
     217,   171,    50,   117,   118,   370,   371,   372,   373,    51,
      52,    53,   149,    54,    55,    56,    57,   211,    58,   126,
     127,   375,   376,   430,   431,    59,   199,   200,   285,   119,
     111,    61,   112,    63,    64,   223,   113,    66,   377,   154,
     224,   351,   336,   337,   338,   254,   255,   417,   292,   374,
      67,   314,   315,   316,   317,   318,   379,   219,   319,   320,
     221,   322,   323,   487,   324,   473,   474,   325,   326,   327,
     328,   476,   445,   329,   440,   330,    68,   106
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      69,    93,   110,    48,   151,   335,   352,    49,     1,     1,
     104,     1,   197,     1,    71,   220,     1,    60,     1,   422,
     368,   369,     1,   262,     1,     1,   282,   393,   396,   390,
     207,    62,   392,   353,   478,    70,   395,   108,    65,   251,
     398,   252,    69,   455,   283,    69,   208,     1,    48,    69,
     282,   197,    49,   489,   291,  -214,   172,    93,   128,  -214,
     425,    72,    60,   187,   188,    69,   104,   180,   367,   368,
     369,   157,   181,   182,  -214,  -214,    62,   179,   426,   354,
      62,   355,    60,    65,   204,   250,   250,   121,   156,   423,
     183,   184,   230,   346,    93,   220,   150,   173,   174,   175,
     441,   389,   438,   104,   152,   470,   333,   201,   395,   458,
     109,   448,   449,    69,    93,   450,   170,    93,   114,    93,
     131,    69,   129,   104,   158,   459,   104,   251,   104,   252,
     206,   225,   359,    43,   234,   250,   235,   218,   206,   236,
     185,   186,    42,   251,   419,   401,    43,    42,   155,    43,
      42,    43,   150,   222,    43,   352,   231,   251,    42,   401,
     116,   203,   107,   429,   161,   263,   264,   265,    93,    93,
      93,    93,    93,    93,    93,    93,    93,    93,    93,    93,
      93,   213,   198,   353,   226,   164,   227,   481,   482,   193,
     483,   229,   410,   194,   170,   189,   190,   170,   480,   452,
     490,   250,   201,   191,   192,   492,   262,    69,   195,   253,
     249,   250,   259,   339,   340,   291,   196,   218,    69,   331,
     176,   177,   202,   178,   332,   205,   218,   209,   218,   160,
     334,   163,   151,   165,   166,  -191,    93,   270,   271,   272,
     273,   356,   368,   369,     1,   104,    43,    73,    74,    75,
      76,    77,   232,    78,    79,   461,   250,   357,   358,   334,
     122,   123,   124,   125,    93,    93,    93,   462,   250,    93,
     464,   250,   484,   250,   266,   267,   274,   275,   104,   268,
     269,   233,   201,    93,   256,   284,   287,   288,   295,   294,
     253,   296,   104,   341,   402,   342,   343,   344,   380,   345,
     360,   291,   361,   349,   381,   382,   383,   388,   384,   387,
     397,   399,   437,   151,   404,   331,   405,   400,   331,   407,
     411,   331,   331,   439,   332,   412,   331,   413,   218,   416,
     443,   433,   434,   451,    69,    80,   366,   432,   454,    93,
     406,   460,   463,   386,   465,   409,   486,   250,   104,   466,
     378,   469,   491,   475,    93,   485,   115,   293,   488,   228,
     418,   110,   276,   104,   363,   277,   456,   278,   420,   362,
     364,   471,   403,   289,   424,   365,   428,    69,    81,   120,
     153,    82,    83,    84,    85,    86,    87,   447,   286,   394,
       0,     0,     0,     0,   331,     0,     0,   290,     0,   321,
       0,    69,     0,    69,    93,     0,   415,     0,   334,     0,
       0,     0,   334,   453,    93,   435,   436,     0,   432,     0,
     206,   421,     0,   104,   334,     0,     0,     0,     0,     0,
       0,     0,   442,     0,   444,     0,     0,     0,     0,   403,
       0,     0,     0,     0,     0,    93,     0,     0,     0,     0,
       0,     0,     0,     0,   104,     0,     0,     0,    69,     0,
       0,     0,     0,     0,     0,     0,     0,   479,     0,     0,
       0,     0,     0,   331,   331,     0,   331,     0,     0,     0,
       0,   457,     0,     0,   468,     0,   331,     0,     0,     0,
       0,   331,     0,     0,     0,     0,     0,     0,     0,     0,
     477,   444,   214,     0,     1,     2,     3,    73,    74,    75,
      76,    77,   472,    78,    79,     0,     0,     0,     0,     0,
     444,   237,   238,   239,   240,   241,   242,   243,   244,   245,
     246,     0,     0,     4,     5,     6,     7,     8,     9,    10,
       0,    11,    12,    13,     0,    15,    16,    17,     0,     0,
      18,    19,    20,    21,     0,   297,     0,     0,     0,     0,
      22,    23,    24,    25,    26,    27,    28,    29,     0,    30,
      31,    32,    33,    34,    35,    36,    37,     0,     0,   298,
     299,   300,     0,   301,   302,   303,   304,   305,   306,   307,
     308,     0,     0,     0,     0,    80,   309,   214,     0,     1,
       0,     0,    73,    74,    75,    76,    77,     0,    78,    79,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    38,    39,    40,
       0,     0,     0,    41,   310,     0,     0,     0,    81,     0,
       0,    82,    83,    84,    85,    86,    87,     0,     0,     0,
     297,     0,     0,   247,     0,     0,   311,   215,   312,     1,
       0,     0,    73,    74,    75,    76,    77,     0,    78,    79,
       0,     0,     0,     0,   298,   299,   300,     0,   301,   302,
     303,   304,   305,   306,   307,   308,     0,     0,     0,     0,
      80,   309,   214,     0,     1,     0,     0,    73,    74,    75,
      76,    77,     0,    78,    79,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   310,
       0,     0,     0,    81,     0,     0,    82,    83,    84,    85,
      86,    87,     0,     0,     0,   297,     0,     0,     0,     0,
      80,   311,   215,   391,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   298,
     299,   300,     0,   301,   302,   303,   304,   305,   306,   307,
     308,     0,     0,     0,     0,    80,   309,     0,     0,     0,
       0,     0,     0,    81,     0,     0,    82,    83,    84,    85,
      86,    87,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   385,     0,     0,     0,     0,     0,     0,   214,     0,
       0,     2,     3,     0,   310,     0,     0,     0,    81,     0,
       0,    82,    83,    84,    85,    86,    87,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   311,   215,   312,     4,
       5,     6,     7,     8,     9,    10,     0,    11,    12,    13,
       0,    15,    16,    17,     0,     0,    18,    19,    20,    21,
       0,     0,     0,     0,     0,     0,    22,    23,    24,    25,
      26,    27,    28,    29,     0,    30,    31,    32,    33,    34,
      35,    36,    37,   214,     0,     1,     0,     0,    73,    74,
      75,    76,    77,   132,    78,    79,     0,     0,     0,     0,
       0,   133,   134,     0,     0,     0,     0,     0,   135,   136,
     137,   138,   139,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    38,    39,    40,   297,     0,     0,    41,
       0,     0,     0,     0,   140,   141,   142,   143,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     298,   299,   300,   215,   301,   302,   303,   304,   305,   306,
     307,   308,     0,     0,     0,     0,    80,   309,     0,     0,
       0,     0,     0,   144,   145,   146,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     2,     3,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   310,     0,     0,     0,    81,
       0,     0,    82,    83,    84,    85,    86,    87,     0,     0,
       0,     9,    10,     0,    11,    12,    13,   311,   215,    16,
      17,     0,     0,    18,    19,    20,    21,     0,     0,     0,
       0,     0,     0,    22,    23,    24,    25,    26,    27,    28,
      29,     0,    30,    31,    32,    33,    34,    35,    36,    37,
       1,     2,     3,    73,    74,    75,    76,    77,     0,    78,
      79,     1,     0,     0,    73,    74,    75,    76,    77,     0,
      78,    79,     0,     0,     0,     0,     0,     0,     0,     4,
       5,     6,     7,     8,     9,    10,     0,    11,    12,    13,
       0,     0,    16,    17,     0,     0,    18,    19,    20,    21,
       0,     0,    40,     0,     0,     0,    22,    23,    24,    25,
      26,    27,    28,    29,     0,    30,    31,    32,    33,    34,
      35,    36,    37,     1,     0,     0,    73,    74,    75,    76,
      77,   427,    78,    79,     0,     0,     0,     0,     0,     1,
       0,    80,    73,    74,    75,    76,    77,     0,    78,    79,
       1,     0,    80,    73,    74,    75,    76,    77,     0,    78,
      79,     1,     0,     0,    73,    74,    75,    76,    77,     0,
      78,    79,     0,    38,    39,    40,     0,     0,     0,    41,
       0,     0,     0,     0,    81,     0,     0,    82,    83,    84,
      85,    86,    87,     0,   212,    81,     0,     0,    82,    83,
      84,    85,    86,    87,     0,     0,     1,     0,     0,    73,
      74,    75,    76,    77,    80,    78,    79,     1,     0,     0,
      73,    74,    75,    76,    77,     0,    78,    79,     0,     0,
      80,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    80,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    80,     0,     0,     0,     0,    81,   260,     0,
      82,    83,    84,    85,    86,    87,     0,     0,     0,     0,
       0,     0,   348,    81,     0,     0,    82,    83,    84,    85,
      86,    87,     0,   414,    81,     0,     0,    82,    83,    84,
      85,    86,    87,     0,     0,    81,     0,    80,    82,    83,
      84,    85,    86,    87,     0,     0,     0,     0,    80,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     1,     2,     3,     0,     0,     0,     0,     0,     0,
     159,     0,     0,    82,    83,    84,    85,    86,    87,     0,
       0,   162,     0,     0,    82,    83,    84,    85,    86,    87,
       4,     5,     6,     7,     8,     9,    10,     0,    11,    12,
      13,    14,    15,    16,    17,     0,     0,    18,    19,    20,
      21,     1,     2,     3,     0,     0,     0,    22,    23,    24,
      25,    26,    27,    28,    29,     0,    30,    31,    32,    33,
      34,    35,    36,    37,     0,     0,     0,     0,     0,     0,
       4,     5,     6,     7,     8,     9,    10,     0,    11,    12,
      13,     0,     0,    16,    17,     0,     0,    18,    19,    20,
      21,     0,     0,     0,     0,     0,     0,    22,    23,    24,
      25,    26,    27,    28,    29,     0,    30,    31,    32,    33,
      34,    35,    36,    37,    38,    39,    40,     0,     0,     0,
      41,     0,     0,     0,     0,    42,     0,     0,     0,    43,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     2,     3,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    38,    39,    40,     0,     0,     0,
      41,     0,     0,   251,     0,   401,   350,     0,     0,    43,
       4,     5,     6,     7,     8,     9,    10,     0,    11,    12,
      13,     2,     3,    16,    17,     0,     0,    18,    19,    20,
      21,     0,     0,     0,     0,     0,     0,    22,    23,    24,
      25,    26,    27,    28,    29,     0,    30,    31,    32,    33,
      34,    35,    36,    37,     9,    10,     0,    11,    12,    13,
       0,     0,    16,    17,     0,     0,    18,    19,    20,    21,
       0,     0,     0,     0,     0,     0,    22,    23,    24,    25,
      26,    27,    28,    29,     0,    30,    31,    32,    33,    34,
      35,    36,    37,     0,     0,     2,     3,     0,     0,     0,
       0,     0,     0,     0,    38,    39,    40,     0,     0,     0,
      41,     0,     0,   251,     0,   252,   350,     0,     0,    43,
       0,     0,     0,     4,     5,     6,     7,     8,     9,    10,
       0,    11,    12,    13,     0,     0,    16,    17,     0,     0,
      18,    19,    20,    21,   446,    40,     0,     0,     0,     0,
      22,    23,    24,    25,    26,    27,    28,    29,    43,    30,
      31,    32,    33,    34,    35,    36,    37,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     2,     3,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    38,    39,    40,
       0,     0,     0,    41,     4,     5,     6,     7,     8,     9,
      10,     0,    11,    12,    13,     2,     3,    16,    17,     0,
       0,    18,    19,    20,    21,     0,     0,     0,     0,     0,
       0,    22,    23,    24,    25,    26,    27,    28,    29,     0,
      30,    31,    32,    33,    34,    35,    36,    37,     9,    10,
       0,    11,    12,    13,     0,     0,    16,    17,     0,     0,
      18,    19,    20,    21,     0,     0,     0,     0,     0,     0,
      22,    23,    24,    25,    26,    27,    28,    29,     0,    30,
      31,    32,    33,    34,    35,    36,    37,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    38,    39,
      40,     0,     0,     0,    41,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    40
};

static const yytype_int16 yycheck[] =
{
       0,    16,    42,     0,    66,   223,   252,     0,     3,     3,
      16,     3,    21,     3,    14,   130,     3,     0,     3,   370,
     134,   135,     3,   178,     3,     3,   139,   321,   322,   315,
     139,     0,   318,   253,   466,    56,   322,    37,     0,   135,
     326,   137,    42,   157,   157,    45,   155,     3,    45,    49,
     139,    21,    45,   485,   209,   135,    81,    72,    58,   139,
     139,   137,    45,    16,    17,    65,    72,   141,   157,   134,
     135,    71,   146,   147,   154,   155,    45,    92,   157,   135,
      49,   137,    65,    45,   109,   139,   139,    49,    69,   154,
     142,   143,   154,   248,   109,   210,    65,    11,    12,    13,
     394,   155,   155,   109,    66,   456,   221,   107,   394,   139,
     137,   134,   135,   113,   129,   138,    81,   132,     0,   134,
     137,   121,   135,   129,    72,   155,   132,   135,   134,   137,
     113,   131,   136,   141,   159,   139,   161,   130,   121,   164,
      14,    15,   137,   135,   153,   137,   141,   137,   155,   141,
     137,   141,   121,   138,   141,   401,   156,   135,   137,   137,
     155,   109,   156,   153,   137,   180,   181,   182,   183,   184,
     185,   186,   187,   188,   189,   190,   191,   192,   193,   194,
     195,   129,   152,   403,   132,   137,   134,   473,   474,   140,
     476,   153,   347,   150,   159,   148,   149,   162,   136,   417,
     486,   139,   202,    18,    19,   491,   361,   207,   151,   171,
     138,   139,   177,   138,   139,   370,    20,   210,   218,   219,
     134,   135,   156,   137,   221,   138,   219,   154,   221,    74,
     223,    76,   294,    78,    79,   156,   251,   187,   188,   189,
     190,   256,   134,   135,     3,   251,   141,     6,     7,     8,
       9,    10,   155,    12,    13,   138,   139,   257,   258,   252,
      51,    52,    53,    54,   279,   280,   281,   138,   139,   284,
     138,   139,   138,   139,   183,   184,   191,   192,   284,   185,
     186,   139,   282,   298,   138,   154,   138,   138,   136,   156,
     252,   155,   298,   155,   334,    94,   138,   138,   137,   139,
     138,   456,   139,   251,   137,   305,   155,   137,   155,   155,
     137,   137,   155,   375,   138,   315,   139,   153,   318,   138,
     136,   321,   322,    94,   321,   138,   326,   138,   321,   138,
      83,   153,   153,   136,   334,    94,   284,   377,   136,   354,
     340,   153,   138,   308,   137,   345,    81,   139,   354,   155,
     298,   138,   138,   155,   369,   155,    45,   210,   155,   148,
     361,   401,   193,   369,   280,   194,   425,   195,   368,   279,
     281,   458,   334,   207,   372,   282,   375,   377,   137,    49,
      66,   140,   141,   142,   143,   144,   145,   405,   202,   321,
      -1,    -1,    -1,    -1,   394,    -1,    -1,   156,    -1,   219,
      -1,   401,    -1,   403,   419,    -1,   354,    -1,   401,    -1,
      -1,    -1,   405,   419,   429,   380,   381,    -1,   458,    -1,
     403,   369,    -1,   429,   417,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   397,    -1,   399,    -1,    -1,    -1,    -1,   401,
      -1,    -1,    -1,    -1,    -1,   460,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   460,    -1,    -1,    -1,   458,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   467,    -1,    -1,
      -1,    -1,    -1,   473,   474,    -1,   476,    -1,    -1,    -1,
      -1,   429,    -1,    -1,   449,    -1,   486,    -1,    -1,    -1,
      -1,   491,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     465,   466,     1,    -1,     3,     4,     5,     6,     7,     8,
       9,    10,   460,    12,    13,    -1,    -1,    -1,    -1,    -1,
     485,    22,    23,    24,    25,    26,    27,    28,    29,    30,
      31,    -1,    -1,    32,    33,    34,    35,    36,    37,    38,
      -1,    40,    41,    42,    -1,    44,    45,    46,    -1,    -1,
      49,    50,    51,    52,    -1,    54,    -1,    -1,    -1,    -1,
      59,    60,    61,    62,    63,    64,    65,    66,    -1,    68,
      69,    70,    71,    72,    73,    74,    75,    -1,    -1,    78,
      79,    80,    -1,    82,    83,    84,    85,    86,    87,    88,
      89,    -1,    -1,    -1,    -1,    94,    95,     1,    -1,     3,
      -1,    -1,     6,     7,     8,     9,    10,    -1,    12,    13,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   126,   127,   128,
      -1,    -1,    -1,   132,   133,    -1,    -1,    -1,   137,    -1,
      -1,   140,   141,   142,   143,   144,   145,    -1,    -1,    -1,
      54,    -1,    -1,   154,    -1,    -1,   155,   156,   157,     3,
      -1,    -1,     6,     7,     8,     9,    10,    -1,    12,    13,
      -1,    -1,    -1,    -1,    78,    79,    80,    -1,    82,    83,
      84,    85,    86,    87,    88,    89,    -1,    -1,    -1,    -1,
      94,    95,     1,    -1,     3,    -1,    -1,     6,     7,     8,
       9,    10,    -1,    12,    13,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   133,
      -1,    -1,    -1,   137,    -1,    -1,   140,   141,   142,   143,
     144,   145,    -1,    -1,    -1,    54,    -1,    -1,    -1,    -1,
      94,   155,   156,   157,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    78,
      79,    80,    -1,    82,    83,    84,    85,    86,    87,    88,
      89,    -1,    -1,    -1,    -1,    94,    95,    -1,    -1,    -1,
      -1,    -1,    -1,   137,    -1,    -1,   140,   141,   142,   143,
     144,   145,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   155,    -1,    -1,    -1,    -1,    -1,    -1,     1,    -1,
      -1,     4,     5,    -1,   133,    -1,    -1,    -1,   137,    -1,
      -1,   140,   141,   142,   143,   144,   145,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   155,   156,   157,    32,
      33,    34,    35,    36,    37,    38,    -1,    40,    41,    42,
      -1,    44,    45,    46,    -1,    -1,    49,    50,    51,    52,
      -1,    -1,    -1,    -1,    -1,    -1,    59,    60,    61,    62,
      63,    64,    65,    66,    -1,    68,    69,    70,    71,    72,
      73,    74,    75,     1,    -1,     3,    -1,    -1,     6,     7,
       8,     9,    10,    39,    12,    13,    -1,    -1,    -1,    -1,
      -1,    47,    48,    -1,    -1,    -1,    -1,    -1,    54,    55,
      56,    57,    58,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   126,   127,   128,    54,    -1,    -1,   132,
      -1,    -1,    -1,    -1,    90,    91,    92,    93,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      78,    79,    80,   156,    82,    83,    84,    85,    86,    87,
      88,    89,    -1,    -1,    -1,    -1,    94,    95,    -1,    -1,
      -1,    -1,    -1,   129,   130,   131,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,     4,     5,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   133,    -1,    -1,    -1,   137,
      -1,    -1,   140,   141,   142,   143,   144,   145,    -1,    -1,
      -1,    37,    38,    -1,    40,    41,    42,   155,   156,    45,
      46,    -1,    -1,    49,    50,    51,    52,    -1,    -1,    -1,
      -1,    -1,    -1,    59,    60,    61,    62,    63,    64,    65,
      66,    -1,    68,    69,    70,    71,    72,    73,    74,    75,
       3,     4,     5,     6,     7,     8,     9,    10,    -1,    12,
      13,     3,    -1,    -1,     6,     7,     8,     9,    10,    -1,
      12,    13,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    32,
      33,    34,    35,    36,    37,    38,    -1,    40,    41,    42,
      -1,    -1,    45,    46,    -1,    -1,    49,    50,    51,    52,
      -1,    -1,   128,    -1,    -1,    -1,    59,    60,    61,    62,
      63,    64,    65,    66,    -1,    68,    69,    70,    71,    72,
      73,    74,    75,     3,    -1,    -1,     6,     7,     8,     9,
      10,   157,    12,    13,    -1,    -1,    -1,    -1,    -1,     3,
      -1,    94,     6,     7,     8,     9,    10,    -1,    12,    13,
       3,    -1,    94,     6,     7,     8,     9,    10,    -1,    12,
      13,     3,    -1,    -1,     6,     7,     8,     9,    10,    -1,
      12,    13,    -1,   126,   127,   128,    -1,    -1,    -1,   132,
      -1,    -1,    -1,    -1,   137,    -1,    -1,   140,   141,   142,
     143,   144,   145,    -1,   136,   137,    -1,    -1,   140,   141,
     142,   143,   144,   145,    -1,    -1,     3,    -1,    -1,     6,
       7,     8,     9,    10,    94,    12,    13,     3,    -1,    -1,
       6,     7,     8,     9,    10,    -1,    12,    13,    -1,    -1,
      94,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    94,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    94,    -1,    -1,    -1,    -1,   137,   138,    -1,
     140,   141,   142,   143,   144,   145,    -1,    -1,    -1,    -1,
      -1,    -1,   136,   137,    -1,    -1,   140,   141,   142,   143,
     144,   145,    -1,   136,   137,    -1,    -1,   140,   141,   142,
     143,   144,   145,    -1,    -1,   137,    -1,    94,   140,   141,
     142,   143,   144,   145,    -1,    -1,    -1,    -1,    94,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,     3,     4,     5,    -1,    -1,    -1,    -1,    -1,    -1,
     137,    -1,    -1,   140,   141,   142,   143,   144,   145,    -1,
      -1,   137,    -1,    -1,   140,   141,   142,   143,   144,   145,
      32,    33,    34,    35,    36,    37,    38,    -1,    40,    41,
      42,    43,    44,    45,    46,    -1,    -1,    49,    50,    51,
      52,     3,     4,     5,    -1,    -1,    -1,    59,    60,    61,
      62,    63,    64,    65,    66,    -1,    68,    69,    70,    71,
      72,    73,    74,    75,    -1,    -1,    -1,    -1,    -1,    -1,
      32,    33,    34,    35,    36,    37,    38,    -1,    40,    41,
      42,    -1,    -1,    45,    46,    -1,    -1,    49,    50,    51,
      52,    -1,    -1,    -1,    -1,    -1,    -1,    59,    60,    61,
      62,    63,    64,    65,    66,    -1,    68,    69,    70,    71,
      72,    73,    74,    75,   126,   127,   128,    -1,    -1,    -1,
     132,    -1,    -1,    -1,    -1,   137,    -1,    -1,    -1,   141,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,     4,     5,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   126,   127,   128,    -1,    -1,    -1,
     132,    -1,    -1,   135,    -1,   137,   138,    -1,    -1,   141,
      32,    33,    34,    35,    36,    37,    38,    -1,    40,    41,
      42,     4,     5,    45,    46,    -1,    -1,    49,    50,    51,
      52,    -1,    -1,    -1,    -1,    -1,    -1,    59,    60,    61,
      62,    63,    64,    65,    66,    -1,    68,    69,    70,    71,
      72,    73,    74,    75,    37,    38,    -1,    40,    41,    42,
      -1,    -1,    45,    46,    -1,    -1,    49,    50,    51,    52,
      -1,    -1,    -1,    -1,    -1,    -1,    59,    60,    61,    62,
      63,    64,    65,    66,    -1,    68,    69,    70,    71,    72,
      73,    74,    75,    -1,    -1,     4,     5,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   126,   127,   128,    -1,    -1,    -1,
     132,    -1,    -1,   135,    -1,   137,   138,    -1,    -1,   141,
      -1,    -1,    -1,    32,    33,    34,    35,    36,    37,    38,
      -1,    40,    41,    42,    -1,    -1,    45,    46,    -1,    -1,
      49,    50,    51,    52,    53,   128,    -1,    -1,    -1,    -1,
      59,    60,    61,    62,    63,    64,    65,    66,   141,    68,
      69,    70,    71,    72,    73,    74,    75,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,     4,     5,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   126,   127,   128,
      -1,    -1,    -1,   132,    32,    33,    34,    35,    36,    37,
      38,    -1,    40,    41,    42,     4,     5,    45,    46,    -1,
      -1,    49,    50,    51,    52,    -1,    -1,    -1,    -1,    -1,
      -1,    59,    60,    61,    62,    63,    64,    65,    66,    -1,
      68,    69,    70,    71,    72,    73,    74,    75,    37,    38,
      -1,    40,    41,    42,    -1,    -1,    45,    46,    -1,    -1,
      49,    50,    51,    52,    -1,    -1,    -1,    -1,    -1,    -1,
      59,    60,    61,    62,    63,    64,    65,    66,    -1,    68,
      69,    70,    71,    72,    73,    74,    75,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   126,   127,
     128,    -1,    -1,    -1,   132,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   128
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_int16 yystos[] =
{
       0,     3,     4,     5,    32,    33,    34,    35,    36,    37,
      38,    40,    41,    42,    43,    44,    45,    46,    49,    50,
      51,    52,    59,    60,    61,    62,    63,    64,    65,    66,
      68,    69,    70,    71,    72,    73,    74,    75,   126,   127,
     128,   132,   137,   141,   159,   160,   161,   162,   198,   199,
     200,   207,   208,   209,   211,   212,   213,   214,   216,   223,
     228,   229,   230,   231,   232,   234,   235,   248,   274,   275,
      56,   275,   137,     6,     7,     8,     9,    10,    12,    13,
      94,   137,   140,   141,   142,   143,   144,   145,   170,   171,
     172,   176,   177,   178,   179,   180,   181,   182,   183,   184,
     185,   186,   187,   189,   191,   197,   275,   156,   275,   137,
     227,   228,   230,   234,     0,   161,   155,   201,   202,   227,
     229,   234,   200,   200,   200,   200,   217,   218,   275,   135,
     163,   137,    39,    47,    48,    54,    55,    56,    57,    58,
      90,    91,    92,    93,   129,   130,   131,   165,   166,   210,
     230,   211,   234,   236,   237,   155,    69,   275,   197,   137,
     176,   137,   137,   176,   137,   176,   176,   178,   191,   193,
     195,   199,   242,    11,    12,    13,   134,   135,   137,   178,
     141,   146,   147,   142,   143,    14,    15,    16,    17,   148,
     149,    18,    19,   140,   150,   151,    20,    21,   152,   224,
     225,   275,   156,   197,   242,   138,   228,   139,   155,   154,
     164,   215,   136,   197,     1,   156,   167,   198,   199,   255,
     257,   258,   138,   233,   238,   275,   197,   197,   165,   234,
     211,   275,   155,   139,   242,   242,   242,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,   154,   194,   138,
     139,   135,   137,   234,   243,   244,   138,   174,   173,   195,
     138,   175,   193,   178,   178,   178,   179,   179,   180,   180,
     181,   181,   181,   181,   182,   182,   183,   184,   185,   188,
     190,   192,   139,   157,   154,   226,   224,   138,   138,   202,
     156,   193,   246,   167,   156,   136,   155,    54,    78,    79,
      80,    82,    83,    84,    85,    86,    87,    88,    89,    95,
     133,   155,   157,   195,   249,   250,   251,   252,   253,   256,
     257,   258,   259,   260,   262,   265,   266,   267,   268,   271,
     273,   275,   198,   257,   199,   239,   240,   241,   242,   138,
     139,   155,    94,   138,   138,   139,   193,   196,   136,   197,
     138,   239,   243,   244,   135,   137,   178,   275,   275,   136,
     138,   139,   186,   187,   189,   225,   197,   157,   134,   135,
     203,   204,   205,   206,   247,   219,   220,   236,   197,   254,
     137,   137,   275,   155,   155,   155,   195,   155,   137,   155,
     249,   157,   249,   256,   259,   249,   256,   137,   249,   137,
     153,   137,   227,   234,   138,   139,   275,   138,   168,   275,
     193,   136,   138,   138,   136,   197,   138,   245,   175,   153,
     275,   197,   246,   154,   206,   139,   157,   157,   220,   153,
     221,   222,   227,   153,   153,   195,   195,   155,   155,    94,
     272,   256,   195,    83,   195,   270,    53,   241,   134,   135,
     138,   136,   239,   191,   136,   157,   203,   197,   139,   155,
     153,   138,   138,   138,   138,   137,   155,   169,   195,   138,
     246,   222,   197,   263,   264,   155,   269,   195,   270,   275,
     136,   249,   249,   249,   138,   155,    81,   261,   155,   270,
     249,   138,   249
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_int16 yyr1[] =
{
       0,   158,   159,   159,   160,   160,   161,   161,   161,   163,
     162,   164,   162,   165,   165,   166,   166,   166,   166,   166,
     166,   166,   166,   166,   166,   166,   166,   166,   166,   166,
     167,   167,   168,   169,   168,   168,   170,   170,   170,   170,
     171,   172,   172,   172,   172,   173,   172,   174,   172,   172,
     172,   175,   175,   176,   176,   176,   176,   176,   176,   176,
     176,   176,   177,   177,   177,   177,   177,   177,   178,   178,
     179,   179,   179,   179,   180,   180,   180,   181,   181,   181,
     182,   182,   182,   182,   182,   183,   183,   183,   184,   184,
     185,   185,   186,   186,   187,   188,   187,   189,   190,   189,
     191,   192,   191,   193,   193,   194,   194,   194,   194,   194,
     194,   194,   194,   194,   194,   194,   195,   196,   195,   197,
     198,   198,   198,   199,   200,   200,   200,   200,   200,   200,
     200,   200,   201,   201,   202,   202,   203,   203,   204,   205,
     205,   206,   206,   207,   207,   207,   207,   207,   208,   208,
     209,   209,   210,   210,   211,   211,   211,   211,   211,   211,
     211,   211,   211,   211,   211,   211,   211,   211,   211,   211,
     211,   211,   211,   211,   211,   211,   211,   211,   211,   211,
     212,   212,   213,   213,   213,   213,   215,   214,   214,   216,
     216,   217,   217,   218,   219,   219,   220,   221,   221,   222,
     222,   222,   222,   223,   223,   223,   224,   224,   224,   225,
     226,   226,   227,   227,   228,   228,   229,   229,   230,   230,
     231,   231,   231,   231,   232,   233,   232,   232,   234,   234,
     234,   234,   235,   236,   237,   237,   238,   238,   239,   239,
     240,   240,   241,   241,   242,   242,   243,   243,   243,   244,
     244,   244,   244,   244,   244,   244,   244,   245,   244,   246,
     246,   246,   247,   247,   248,   249,   249,   249,   249,   249,
     249,   249,   249,   250,   251,   252,   252,   253,   253,   254,
     253,   255,   256,   257,   257,   257,   257,   257,   258,   258,
     259,   259,   260,   260,   261,   261,   263,   262,   264,   262,
     265,   266,   267,   269,   268,   268,   268,   270,   270,   271,
     271,   271,   271,   271,   272,   273,   273,   274,   274,   275
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     0,     1,     1,     2,     1,     1,     1,     0,
       3,     0,     4,     1,     2,     2,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     2,     1,     0,     4,     4,     1,     1,     1,     3,
       1,     1,     4,     3,     4,     0,     4,     0,     4,     2,
       2,     1,     3,     1,     2,     2,     2,     2,     4,     4,
       2,     6,     1,     1,     1,     1,     1,     1,     1,     4,
       1,     3,     3,     3,     1,     3,     3,     1,     3,     3,
       1,     3,     3,     3,     3,     1,     3,     3,     1,     3,
       1,     3,     1,     3,     1,     0,     4,     1,     0,     4,
       1,     0,     6,     1,     3,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     0,     4,     1,
       2,     3,     2,     1,     1,     2,     1,     2,     1,     2,
       1,     2,     1,     3,     1,     3,     0,     1,     2,     1,
       2,     3,     2,     1,     1,     1,     1,     1,     1,     1,
       4,     4,     1,     2,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     2,     1,     1,     1,     1,
       1,     1,     1,     2,     1,     1,     0,     6,     2,     1,
       1,     1,     0,     1,     1,     2,     3,     1,     3,     1,
       2,     3,     0,     4,     5,     2,     1,     2,     3,     2,
       2,     0,     1,     2,     1,     1,     1,     2,     1,     2,
       1,     3,     3,     4,     3,     0,     5,     4,     1,     2,
       2,     3,     1,     1,     1,     2,     1,     3,     1,     3,
       1,     3,     2,     1,     1,     2,     1,     1,     2,     3,
       2,     3,     3,     4,     2,     3,     3,     0,     5,     1,
       3,     4,     2,     4,     6,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     2,     2,     2,     2,     3,     0,
       3,     1,     1,     2,     3,     3,     4,     2,     1,     2,
       1,     2,     1,     2,     2,     0,     0,     7,     0,     6,
       1,     1,     1,     0,     6,     7,     9,     0,     1,     3,
       2,     2,     2,     3,     1,     5,     2,     4,     5,     1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YYUSE (yyoutput);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyo, yytoknum[yytype], *yyvaluep);
# endif
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyo, yytype, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[+yyssp[yyi + 1 - yynrhs]],
                       &yyvsp[(yyi + 1) - (yynrhs)]
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen(S) (YY_CAST (YYPTRDIFF_T, strlen (S)))
#  else
/* Return the length of YYSTR.  */
static YYPTRDIFF_T
yystrlen (const char *yystr)
{
  YYPTRDIFF_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYPTRDIFF_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYPTRDIFF_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            else
              goto append;

          append:
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (yyres)
    return yystpcpy (yyres, yystr) - yyres;
  else
    return yystrlen (yystr);
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYPTRDIFF_T *yymsg_alloc, char **yymsg,
                yy_state_t *yyssp, int yytoken)
{
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat: reported tokens (one for the "unexpected",
     one per "expected"). */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Actual size of YYARG. */
  int yycount = 0;
  /* Cumulated lengths of YYARG.  */
  YYPTRDIFF_T yysize = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[+*yyssp];
      YYPTRDIFF_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
      yysize = yysize0;
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYPTRDIFF_T yysize1
                    = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
                    yysize = yysize1;
                  else
                    return 2;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
    default: /* Avoid compiler warnings. */
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    /* Don't count the "%s"s in the final size, but reserve room for
       the terminator.  */
    YYPTRDIFF_T yysize1 = yysize + (yystrlen (yyformat) - 2 * yycount) + 1;
    if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
      yysize = yysize1;
    else
      return 2;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          ++yyp;
          ++yyformat;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss;
    yy_state_t *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYPTRDIFF_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYPTRDIFF_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    goto yyexhaustedlab;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
# undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2:
#line 145 "SDCC.y"
        {
          werror(W_EMPTY_SOURCE_FILE);
        }
#line 2334 "SDCCy.c"
    break;

  case 6:
#line 158 "SDCC.y"
        {
          // blockNo = 0;
        }
#line 2342 "SDCCy.c"
    break;

  case 7:
#line 162 "SDCC.y"
        {
          ignoreTypedefType = 0;
          if ((yyvsp[0].sym) && (yyvsp[0].sym)->type && IS_FUNC((yyvsp[0].sym)->type))
            {
              /* The only legal storage classes for
               * a function prototype (declaration)
               * are extern and static. extern is the
               * default. Thus, if this function isn't
               * explicitly marked static, mark it
               * extern.
               */
              if ((yyvsp[0].sym)->etype && IS_SPEC((yyvsp[0].sym)->etype) && !SPEC_STAT((yyvsp[0].sym)->etype))
                {
                  SPEC_EXTR((yyvsp[0].sym)->etype) = 1;
                }
            }
          addSymChain (&(yyvsp[0].sym));
          allocVariables ((yyvsp[0].sym));
          cleanUpLevel (SymbolTab, 1);
        }
#line 2367 "SDCCy.c"
    break;

  case 9:
#line 187 "SDCC.y"
         {   /* function type not specified */
             /* assume it to be 'int'       */
             addDecl((yyvsp[0].sym),0,newIntLink());
             (yyvsp[0].sym) = createFunctionDecl((yyvsp[0].sym));
         }
#line 2377 "SDCCy.c"
    break;

  case 10:
#line 192 "SDCC.y"
                     {
                                   (yyval.asts) = createFunction((yyvsp[-2].sym),(yyvsp[0].asts));
                               }
#line 2385 "SDCCy.c"
    break;

  case 11:
#line 196 "SDCC.y"
         {
              pointerTypes((yyvsp[0].sym)->type,copyLinkChain((yyvsp[-1].lnk)));
              addDecl((yyvsp[0].sym),0,(yyvsp[-1].lnk));
              (yyvsp[0].sym) = createFunctionDecl((yyvsp[0].sym));
         }
#line 2395 "SDCCy.c"
    break;

  case 12:
#line 202 "SDCC.y"
                                {
                                    (yyval.asts) = createFunction((yyvsp[-2].sym),(yyvsp[0].asts));
                                }
#line 2403 "SDCCy.c"
    break;

  case 14:
#line 209 "SDCC.y"
                                            { (yyval.lnk) = mergeSpec((yyvsp[-1].lnk),(yyvsp[0].lnk),"function_attribute"); }
#line 2409 "SDCCy.c"
    break;

  case 15:
#line 213 "SDCC.y"
                          {
                        (yyval.lnk) = newLink(SPECIFIER);
                        FUNC_REGBANK((yyval.lnk)) = (int) ulFromVal(constExprValue((yyvsp[0].asts),TRUE));
                     }
#line 2418 "SDCCy.c"
    break;

  case 16:
#line 217 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISREENT((yyval.lnk))=1;
                     }
#line 2426 "SDCCy.c"
    break;

  case 17:
#line 220 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISCRITICAL((yyval.lnk)) = 1;
                     }
#line 2434 "SDCCy.c"
    break;

  case 18:
#line 223 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISNAKED((yyval.lnk))=1;
                     }
#line 2442 "SDCCy.c"
    break;

  case 19:
#line 226 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISJAVANATIVE((yyval.lnk))=1;
                     }
#line 2450 "SDCCy.c"
    break;

  case 20:
#line 229 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISOVERLAY((yyval.lnk))=1;
                     }
#line 2458 "SDCCy.c"
    break;

  case 21:
#line 232 "SDCC.y"
                     {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_NONBANKED((yyval.lnk)) = 1;
                        if (FUNC_BANKED((yyval.lnk))) {
                            werror(W_BANKED_WITH_NONBANKED);
                        }
                     }
#line 2469 "SDCCy.c"
    break;

  case 22:
#line 238 "SDCC.y"
                     {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISSHADOWREGS((yyval.lnk)) = 1;
                     }
#line 2477 "SDCCy.c"
    break;

  case 23:
#line 241 "SDCC.y"
                     {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISWPARAM((yyval.lnk)) = 1;
                     }
#line 2485 "SDCCy.c"
    break;

  case 24:
#line 244 "SDCC.y"
                     {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_BANKED((yyval.lnk)) = 1;
                        if (FUNC_NONBANKED((yyval.lnk))) {
                            werror(W_BANKED_WITH_NONBANKED);
                        }
                     }
#line 2496 "SDCCy.c"
    break;

  case 25:
#line 251 "SDCC.y"
                     {
                        (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_INTNO((yyval.lnk)) = (yyvsp[0].yyint);
                        FUNC_ISISR((yyval.lnk)) = 1;
                     }
#line 2506 "SDCCy.c"
    break;

  case 26:
#line 257 "SDCC.y"
                     {
					    (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_INTNO((yyval.lnk)) = INTNO_TRAP;
						FUNC_ISISR((yyval.lnk)) = 1;
				     }
#line 2516 "SDCCy.c"
    break;

  case 27:
#line 262 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISSMALLC((yyval.lnk)) = 1;
                     }
#line 2524 "SDCCy.c"
    break;

  case 28:
#line 265 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISZ88DK_FASTCALL((yyval.lnk)) = 1;
                     }
#line 2532 "SDCCy.c"
    break;

  case 29:
#line 268 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISZ88DK_CALLEE((yyval.lnk)) = 1;
                     }
#line 2540 "SDCCy.c"
    break;

  case 31:
#line 276 "SDCC.y"
                     {
                       werror (E_OLD_STYLE, ((yyvsp[-1].sym) ? (yyvsp[-1].sym)->name: ""));
                       exit (1);
                     }
#line 2549 "SDCCy.c"
    break;

  case 32:
#line 283 "SDCC.y"
                     { (yyval.asts) = newAst_VALUE (symbolVal ((yyvsp[0].sym))); }
#line 2555 "SDCCy.c"
    break;

  case 33:
#line 284 "SDCC.y"
                                    { ignoreTypedefType = 1; }
#line 2561 "SDCCy.c"
    break;

  case 34:
#line 285 "SDCC.y"
                     {
                       ignoreTypedefType = 0;
                       (yyvsp[0].sym) = newSymbol ((yyvsp[0].sym)->name, NestLevel);
                       (yyvsp[0].sym)->implicit = 1;
                       (yyval.asts) = newNode ('.', (yyvsp[-3].asts), newAst_VALUE (symbolVal ((yyvsp[0].sym))));
                     }
#line 2572 "SDCCy.c"
    break;

  case 35:
#line 292 "SDCC.y"
                     {
                       (yyval.asts) = newNode ('[', (yyvsp[-3].asts), (yyvsp[-1].asts));
                     }
#line 2580 "SDCCy.c"
    break;

  case 36:
#line 298 "SDCC.y"
                     { (yyval.asts) = newAst_VALUE (symbolVal ((yyvsp[0].sym))); }
#line 2586 "SDCCy.c"
    break;

  case 37:
#line 299 "SDCC.y"
                     { (yyval.asts) = newAst_VALUE ((yyvsp[0].val)); }
#line 2592 "SDCCy.c"
    break;

  case 39:
#line 301 "SDCC.y"
                     { (yyval.asts) = (yyvsp[-1].asts); }
#line 2598 "SDCCy.c"
    break;

  case 40:
#line 305 "SDCC.y"
                     {
                       int cnt = 1;
                       int max = 253, min = 1;
                       char fb[256];
                       /* refer to support/cpp/libcpp/macro.c for details */
                       while ((((int) ((yyvsp[0].yystr)[cnt] & 0xff)) & 0xff) == 0xff)
                         cnt++;
                       if (cnt <= max)
                         {
                           (yyval.asts) = newAst_VALUE (strVal ((yyvsp[0].yystr)));
                         }
                       else
                         {
                           memset (fb, 0x00, sizeof (fb));
                           fb[0] = '"';
                           strncpy (fb + 1, function_name, max - min + 1);
                           fb[max + 1] = '"';
                           fb[max + 2] = 0;
                           fb[strlen (fb)] = '"';
                           fb[strlen (fb) + 1] = 0;
                           (yyval.asts) = newAst_VALUE (strVal (fb));
                         }
                     }
#line 2626 "SDCCy.c"
    break;

  case 42:
#line 332 "SDCC.y"
                                        { (yyval.asts) = newNode  ('[', (yyvsp[-3].asts), (yyvsp[-1].asts)); }
#line 2632 "SDCCy.c"
    break;

  case 43:
#line 333 "SDCC.y"
                                        { (yyval.asts) = newNode  (CALL,(yyvsp[-2].asts),NULL);
                                          (yyval.asts)->left->funcName = 1;}
#line 2639 "SDCCy.c"
    break;

  case 44:
#line 336 "SDCC.y"
          {
            (yyval.asts) = newNode  (CALL,(yyvsp[-3].asts),(yyvsp[-1].asts)); (yyval.asts)->left->funcName = 1;
          }
#line 2647 "SDCCy.c"
    break;

  case 45:
#line 339 "SDCC.y"
                      { ignoreTypedefType = 1; }
#line 2653 "SDCCy.c"
    break;

  case 46:
#line 340 "SDCC.y"
                      {
                        ignoreTypedefType = 0;
                        (yyvsp[0].sym) = newSymbol((yyvsp[0].sym)->name,NestLevel);
                        (yyvsp[0].sym)->implicit = 1;
                        (yyval.asts) = newNode(PTR_OP,newNode('&',(yyvsp[-3].asts),NULL),newAst_VALUE(symbolVal((yyvsp[0].sym))));
                      }
#line 2664 "SDCCy.c"
    break;

  case 47:
#line 346 "SDCC.y"
                         { ignoreTypedefType = 1; }
#line 2670 "SDCCy.c"
    break;

  case 48:
#line 347 "SDCC.y"
                      {
                        ignoreTypedefType = 0;
                        (yyvsp[0].sym) = newSymbol((yyvsp[0].sym)->name,NestLevel);
                        (yyvsp[0].sym)->implicit = 1;
                        (yyval.asts) = newNode(PTR_OP,(yyvsp[-3].asts),newAst_VALUE(symbolVal((yyvsp[0].sym))));
                      }
#line 2681 "SDCCy.c"
    break;

  case 49:
#line 354 "SDCC.y"
                      { (yyval.asts) = newNode(INC_OP,(yyvsp[-1].asts),NULL);}
#line 2687 "SDCCy.c"
    break;

  case 50:
#line 356 "SDCC.y"
                      { (yyval.asts) = newNode(DEC_OP,(yyvsp[-1].asts),NULL); }
#line 2693 "SDCCy.c"
    break;

  case 52:
#line 361 "SDCC.y"
                                            { (yyval.asts) = newNode(PARAM,(yyvsp[-2].asts),(yyvsp[0].asts)); }
#line 2699 "SDCCy.c"
    break;

  case 54:
#line 366 "SDCC.y"
                              { (yyval.asts) = newNode (INC_OP, NULL, (yyvsp[0].asts)); }
#line 2705 "SDCCy.c"
    break;

  case 55:
#line 367 "SDCC.y"
                              { (yyval.asts) = newNode (DEC_OP, NULL, (yyvsp[0].asts)); }
#line 2711 "SDCCy.c"
    break;

  case 56:
#line 369 "SDCC.y"
       {
         if ((yyvsp[-1].yyint) == '&' && IS_AST_OP ((yyvsp[0].asts)) && (yyvsp[0].asts)->opval.op == '*' && (yyvsp[0].asts)->right == NULL)
           (yyval.asts) = (yyvsp[0].asts)->left;
         else if ((yyvsp[-1].yyint) == '*' && IS_AST_OP ((yyvsp[0].asts)) && (yyvsp[0].asts)->opval.op == '&' && (yyvsp[0].asts)->right == NULL)
           (yyval.asts) = (yyvsp[0].asts)->left;
         else
           (yyval.asts) = newNode ((yyvsp[-1].yyint), (yyvsp[0].asts), NULL);
       }
#line 2724 "SDCCy.c"
    break;

  case 57:
#line 377 "SDCC.y"
                              { (yyval.asts) = newNode (SIZEOF, NULL, (yyvsp[0].asts)); }
#line 2730 "SDCCy.c"
    break;

  case 58:
#line 378 "SDCC.y"
                              { (yyval.asts) = newAst_VALUE (sizeofOp ((yyvsp[-1].lnk))); }
#line 2736 "SDCCy.c"
    break;

  case 59:
#line 379 "SDCC.y"
                              { (yyval.asts) = newAst_VALUE (alignofOp ((yyvsp[-1].lnk))); }
#line 2742 "SDCCy.c"
    break;

  case 60:
#line 380 "SDCC.y"
                              { (yyval.asts) = newNode (TYPEOF, NULL, (yyvsp[0].asts)); }
#line 2748 "SDCCy.c"
    break;

  case 61:
#line 381 "SDCC.y"
                                                               { (yyval.asts) = offsetofOp((yyvsp[-3].lnk), (yyvsp[-1].asts)); }
#line 2754 "SDCCy.c"
    break;

  case 62:
#line 385 "SDCC.y"
            { (yyval.yyint) = '&';}
#line 2760 "SDCCy.c"
    break;

  case 63:
#line 386 "SDCC.y"
            { (yyval.yyint) = '*';}
#line 2766 "SDCCy.c"
    break;

  case 64:
#line 387 "SDCC.y"
            { (yyval.yyint) = '+';}
#line 2772 "SDCCy.c"
    break;

  case 65:
#line 388 "SDCC.y"
            { (yyval.yyint) = '-';}
#line 2778 "SDCCy.c"
    break;

  case 66:
#line 389 "SDCC.y"
            { (yyval.yyint) = '~';}
#line 2784 "SDCCy.c"
    break;

  case 67:
#line 390 "SDCC.y"
            { (yyval.yyint) = '!';}
#line 2790 "SDCCy.c"
    break;

  case 69:
#line 395 "SDCC.y"
                                 { (yyval.asts) = newNode(CAST,newAst_LINK((yyvsp[-2].lnk)),(yyvsp[0].asts)); }
#line 2796 "SDCCy.c"
    break;

  case 71:
#line 400 "SDCC.y"
                                       { (yyval.asts) = newNode('*',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 2802 "SDCCy.c"
    break;

  case 72:
#line 401 "SDCC.y"
                                       { (yyval.asts) = newNode('/',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 2808 "SDCCy.c"
    break;

  case 73:
#line 402 "SDCC.y"
                                       { (yyval.asts) = newNode('%',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 2814 "SDCCy.c"
    break;

  case 75:
#line 407 "SDCC.y"
                                           { (yyval.asts)=newNode('+',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 2820 "SDCCy.c"
    break;

  case 76:
#line 408 "SDCC.y"
                                           { (yyval.asts)=newNode('-',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 2826 "SDCCy.c"
    break;

  case 78:
#line 413 "SDCC.y"
                                       { (yyval.asts) = newNode(LEFT_OP,(yyvsp[-2].asts),(yyvsp[0].asts)); }
#line 2832 "SDCCy.c"
    break;

  case 79:
#line 414 "SDCC.y"
                                       { (yyval.asts) = newNode(RIGHT_OP,(yyvsp[-2].asts),(yyvsp[0].asts)); }
#line 2838 "SDCCy.c"
    break;

  case 81:
#line 419 "SDCC.y"
                                      { (yyval.asts) = newNode('<',  (yyvsp[-2].asts),(yyvsp[0].asts));}
#line 2844 "SDCCy.c"
    break;

  case 82:
#line 420 "SDCC.y"
                                      { (yyval.asts) = newNode('>',  (yyvsp[-2].asts),(yyvsp[0].asts));}
#line 2850 "SDCCy.c"
    break;

  case 83:
#line 421 "SDCC.y"
                                      { (yyval.asts) = newNode(LE_OP,(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 2856 "SDCCy.c"
    break;

  case 84:
#line 422 "SDCC.y"
                                      { (yyval.asts) = newNode(GE_OP,(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 2862 "SDCCy.c"
    break;

  case 86:
#line 427 "SDCC.y"
                                         { (yyval.asts) = newNode(EQ_OP,(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 2868 "SDCCy.c"
    break;

  case 87:
#line 428 "SDCC.y"
                                         { (yyval.asts) = newNode(NE_OP,(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 2874 "SDCCy.c"
    break;

  case 89:
#line 433 "SDCC.y"
                                 { (yyval.asts) = newNode('&',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 2880 "SDCCy.c"
    break;

  case 91:
#line 438 "SDCC.y"
                                    { (yyval.asts) = newNode('^',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 2886 "SDCCy.c"
    break;

  case 93:
#line 443 "SDCC.y"
                                             { (yyval.asts) = newNode('|',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 2892 "SDCCy.c"
    break;

  case 95:
#line 448 "SDCC.y"
                             { seqPointNo++;}
#line 2898 "SDCCy.c"
    break;

  case 96:
#line 449 "SDCC.y"
                                 { (yyval.asts) = newNode(AND_OP,(yyvsp[-3].asts),(yyvsp[0].asts));}
#line 2904 "SDCCy.c"
    break;

  case 98:
#line 454 "SDCC.y"
                           { seqPointNo++;}
#line 2910 "SDCCy.c"
    break;

  case 99:
#line 455 "SDCC.y"
                                 { (yyval.asts) = newNode(OR_OP,(yyvsp[-3].asts),(yyvsp[0].asts)); }
#line 2916 "SDCCy.c"
    break;

  case 101:
#line 460 "SDCC.y"
                         { seqPointNo++;}
#line 2922 "SDCCy.c"
    break;

  case 102:
#line 461 "SDCC.y"
                     {
                        (yyval.asts) = newNode(':',(yyvsp[-2].asts),(yyvsp[0].asts));
                        (yyval.asts) = newNode('?',(yyvsp[-5].asts),(yyval.asts));
                     }
#line 2931 "SDCCy.c"
    break;

  case 104:
#line 470 "SDCC.y"
                     {

                             switch ((yyvsp[-1].yyint)) {
                             case '=':
                                     (yyval.asts) = newNode((yyvsp[-1].yyint),(yyvsp[-2].asts),(yyvsp[0].asts));
                                     break;
                             case MUL_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '*', (yyvsp[0].asts));
                                     break;
                             case DIV_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '/', (yyvsp[0].asts));
                                     break;
                             case MOD_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '%', (yyvsp[0].asts));
                                     break;
                             case ADD_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '+', (yyvsp[0].asts));
                                     break;
                             case SUB_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '-', (yyvsp[0].asts));
                                     break;
                             case LEFT_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), LEFT_OP, (yyvsp[0].asts));
                                     break;
                             case RIGHT_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), RIGHT_OP, (yyvsp[0].asts));
                                     break;
                             case AND_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '&', (yyvsp[0].asts));
                                     break;
                             case XOR_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '^', (yyvsp[0].asts));
                                     break;
                             case OR_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '|', (yyvsp[0].asts));
                                     break;
                             default :
                                     (yyval.asts) = NULL;
                             }

                     }
#line 2977 "SDCCy.c"
    break;

  case 105:
#line 514 "SDCC.y"
                     { (yyval.yyint) = '=';}
#line 2983 "SDCCy.c"
    break;

  case 117:
#line 529 "SDCC.y"
              { seqPointNo++;}
#line 2989 "SDCCy.c"
    break;

  case 118:
#line 529 "SDCC.y"
                                               { (yyval.asts) = newNode(',',(yyvsp[-3].asts),(yyvsp[0].asts));}
#line 2995 "SDCCy.c"
    break;

  case 120:
#line 538 "SDCC.y"
      {
         /* Special case: if incomplete struct/union declared without name, */
         /* make sure an incomplete type for it exists in the current scope */
         if (IS_STRUCT((yyvsp[-1].lnk)))
           {
             structdef *sdef = SPEC_STRUCT((yyvsp[-1].lnk));
             structdef *osdef;
             osdef = findSymWithBlock (StructTab, sdef->tagsym, currBlockno);
             if (osdef && osdef->block != currBlockno)
               {
                 sdef = newStruct(osdef->tagsym->name);
                 sdef->level = NestLevel;
                 sdef->block = currBlockno;
                 sdef->tagsym = newSymbol (osdef->tagsym->name, NestLevel);
                 addSym (StructTab, sdef, sdef->tag, sdef->level, currBlockno, 0);
                 uselessDecl = FALSE;
               }
           }
         if (uselessDecl)
           werror(W_USELESS_DECL);
         uselessDecl = TRUE;
         (yyval.sym) = NULL;
      }
#line 3023 "SDCCy.c"
    break;

  case 121:
#line 562 "SDCC.y"
      {
         /* add the specifier list to the id */
         symbol *sym , *sym1;

         for (sym1 = sym = reverseSyms((yyvsp[-1].sym));sym != NULL;sym = sym->next) {
             sym_link *lnk = copyLinkChain((yyvsp[-2].lnk));
             sym_link *l0 = NULL, *l1 = NULL;
             /* check creating intances of structs with flexible arrays */
             for (l0 = sym->type; l0 != NULL; l0 = l0->next)
               if (IS_PTR (l0))
                 break;
             for (l1 = lnk; l1 != NULL; l1 = l1->next)
               if (IS_STRUCT (l1) && SPEC_STRUCT (l1)->b_flexArrayMember)
                 break;
             if (l0 == NULL && l1 != NULL && SPEC_EXTR((yyvsp[-2].lnk)) != 1)
               werror (W_FLEXARRAY_INSTRUCT, sym->name);
             /* do the pointer stuff */
             pointerTypes(sym->type,lnk);
             addDecl (sym,0,lnk);
         }

         uselessDecl = TRUE;
         (yyval.sym) = sym1;
      }
#line 3052 "SDCCy.c"
    break;

  case 122:
#line 587 "SDCC.y"
      {
         (yyval.sym) = NULL;
      }
#line 3060 "SDCCy.c"
    break;

  case 123:
#line 592 "SDCC.y"
                                                 { (yyval.lnk) = finalizeSpec((yyvsp[0].lnk)); }
#line 3066 "SDCCy.c"
    break;

  case 124:
#line 595 "SDCC.y"
                                                     { (yyval.lnk) = (yyvsp[0].lnk); }
#line 3072 "SDCCy.c"
    break;

  case 125:
#line 596 "SDCC.y"
                                                     {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "storage_class_specifier declaration_specifiers - skipped");
   }
#line 3082 "SDCCy.c"
    break;

  case 126:
#line 601 "SDCC.y"
                                                    { (yyval.lnk) = (yyvsp[0].lnk); }
#line 3088 "SDCCy.c"
    break;

  case 127:
#line 602 "SDCC.y"
                                                    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "type_specifier declaration_specifiers - skipped");
   }
#line 3098 "SDCCy.c"
    break;

  case 128:
#line 607 "SDCC.y"
                                                    { (yyval.lnk) = (yyvsp[0].lnk); }
#line 3104 "SDCCy.c"
    break;

  case 129:
#line 608 "SDCC.y"
                                                    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "function_specifier declaration_specifiers - skipped");
   }
#line 3114 "SDCCy.c"
    break;

  case 130:
#line 613 "SDCC.y"
                                                    { (yyval.lnk) = (yyvsp[0].lnk); }
#line 3120 "SDCCy.c"
    break;

  case 131:
#line 614 "SDCC.y"
                                                    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "alignment_specifier declaration_specifiers - skipped");
   }
#line 3130 "SDCCy.c"
    break;

  case 133:
#line 623 "SDCC.y"
                                                   { (yyvsp[0].sym)->next = (yyvsp[-2].sym); (yyval.sym) = (yyvsp[0].sym);}
#line 3136 "SDCCy.c"
    break;

  case 134:
#line 627 "SDCC.y"
                                 { (yyvsp[0].sym)->ival = NULL; }
#line 3142 "SDCCy.c"
    break;

  case 135:
#line 628 "SDCC.y"
                                 { (yyvsp[-2].sym)->ival = (yyvsp[0].ilist); seqPointNo++; }
#line 3148 "SDCCy.c"
    break;

  case 136:
#line 632 "SDCC.y"
                                 { (yyval.dsgn) = NULL; }
#line 3154 "SDCCy.c"
    break;

  case 138:
#line 637 "SDCC.y"
                                 { (yyval.dsgn) = revDesignation((yyvsp[-1].dsgn)); }
#line 3160 "SDCCy.c"
    break;

  case 140:
#line 642 "SDCC.y"
                                 { (yyvsp[0].dsgn)->next = (yyvsp[-1].dsgn); (yyval.dsgn) = (yyvsp[0].dsgn); }
#line 3166 "SDCCy.c"
    break;

  case 141:
#line 647 "SDCC.y"
         {
            value *tval;
            int elemno;

            tval = constExprValue((yyvsp[-1].asts), TRUE);
            /* if it is not a constant then Error  */
            if (!tval || (SPEC_SCLS(tval->etype) != S_LITERAL))
              {
                werror (E_CONST_EXPECTED);
                elemno = 0; /* arbitrary fixup */
              }
            else
              {
                if ((elemno = (int) ulFromVal(tval)) < 0)
                  {
                    werror (E_BAD_DESIGNATOR);
                    elemno = 0; /* arbitrary fixup */
                  }
              }
            (yyval.dsgn) = newDesignation(DESIGNATOR_ARRAY, &elemno);
         }
#line 3192 "SDCCy.c"
    break;

  case 142:
#line 668 "SDCC.y"
                                 { (yyval.dsgn) = newDesignation(DESIGNATOR_STRUCT,(yyvsp[0].sym)); }
#line 3198 "SDCCy.c"
    break;

  case 143:
#line 672 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_TYPEDEF((yyval.lnk)) = 1;
               }
#line 3207 "SDCCy.c"
    break;

  case 144:
#line 676 "SDCC.y"
               {
                  (yyval.lnk) = newLink(SPECIFIER);
                  SPEC_EXTR((yyval.lnk)) = 1;
               }
#line 3216 "SDCCy.c"
    break;

  case 145:
#line 680 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_STAT((yyval.lnk)) = 1;
               }
#line 3225 "SDCCy.c"
    break;

  case 146:
#line 684 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_AUTO;
               }
#line 3234 "SDCCy.c"
    break;

  case 147:
#line 688 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_REGISTER;
               }
#line 3243 "SDCCy.c"
    break;

  case 148:
#line 695 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_INLINE((yyval.lnk)) = 1;
               }
#line 3252 "SDCCy.c"
    break;

  case 149:
#line 699 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_NORETURN((yyval.lnk)) = 1;
               }
#line 3261 "SDCCy.c"
    break;

  case 150:
#line 707 "SDCC.y"
              {
                 checkTypeSanity ((yyvsp[-1].lnk), "(_Alignas)");
                 (yyval.lnk) = newLink (SPECIFIER);
                 SPEC_ALIGNAS((yyval.lnk)) = 1;
              }
#line 3271 "SDCCy.c"
    break;

  case 151:
#line 713 "SDCC.y"
              {
                 value *val = constExprValue ((yyvsp[-1].asts), TRUE);
                 (yyval.lnk) = newLink (SPECIFIER);
                 SPEC_ALIGNAS((yyval.lnk)) = 0;
                 if (!val)
                   werror (E_CONST_EXPECTED);
                 else if (ulFromVal (val) == 0 || isPowerOf2 (ulFromVal (val)) && ulFromVal (val) <= port->mem.maxextalign)
                   SPEC_ALIGNAS((yyval.lnk)) = ulFromVal(val);
                 else
                   werror (E_ALIGNAS, ulFromVal(val));
              }
#line 3287 "SDCCy.c"
    break;

  case 152:
#line 727 "SDCC.y"
               { (yyval.yyint) = INTNO_UNSPEC; }
#line 3293 "SDCCy.c"
    break;

  case 153:
#line 729 "SDCC.y"
        { int intno = (int) ulFromVal(constExprValue((yyvsp[0].asts),TRUE));
          if ((intno >= 0) && (intno <= INTNO_MAX))
            (yyval.yyint) = intno;
          else
            {
              werror(E_INT_BAD_INTNO, intno);
              (yyval.yyint) = INTNO_UNSPEC;
            }
        }
#line 3307 "SDCCy.c"
    break;

  case 154:
#line 741 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_BOOL;
                  ignoreTypedefType = 1;
               }
#line 3317 "SDCCy.c"
    break;

  case 155:
#line 746 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_CHAR;
                  ignoreTypedefType = 1;
               }
#line 3327 "SDCCy.c"
    break;

  case 156:
#line 751 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_SHORT((yyval.lnk)) = 1;
                  ignoreTypedefType = 1;
               }
#line 3337 "SDCCy.c"
    break;

  case 157:
#line 756 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_INT;
                  ignoreTypedefType = 1;
               }
#line 3347 "SDCCy.c"
    break;

  case 158:
#line 761 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_LONG((yyval.lnk)) = 1;
                  ignoreTypedefType = 1;
               }
#line 3357 "SDCCy.c"
    break;

  case 159:
#line 766 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  (yyval.lnk)->select.s.b_signed = 1;
                  ignoreTypedefType = 1;
               }
#line 3367 "SDCCy.c"
    break;

  case 160:
#line 771 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_USIGN((yyval.lnk)) = 1;
                  ignoreTypedefType = 1;
               }
#line 3377 "SDCCy.c"
    break;

  case 161:
#line 776 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_VOID;
                  ignoreTypedefType = 1;
               }
#line 3387 "SDCCy.c"
    break;

  case 162:
#line 781 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_CONST((yyval.lnk)) = 1;
               }
#line 3396 "SDCCy.c"
    break;

  case 163:
#line 785 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_VOLATILE((yyval.lnk)) = 1;
               }
#line 3405 "SDCCy.c"
    break;

  case 164:
#line 789 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_RESTRICT((yyval.lnk)) = 1;
               }
#line 3414 "SDCCy.c"
    break;

  case 165:
#line 793 "SDCC.y"
                    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_ADDRSPACE((yyval.lnk)) = findSym (AddrspaceTab, 0, (yyvsp[0].yychar));
               }
#line 3423 "SDCCy.c"
    break;

  case 166:
#line 797 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_FLOAT;
                  ignoreTypedefType = 1;
               }
#line 3433 "SDCCy.c"
    break;

  case 167:
#line 802 "SDCC.y"
                {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_FIXED16X16;
                  ignoreTypedefType = 1;
               }
#line 3443 "SDCCy.c"
    break;

  case 168:
#line 807 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_XDATA;
               }
#line 3452 "SDCCy.c"
    break;

  case 169:
#line 811 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_CODE;
               }
#line 3461 "SDCCy.c"
    break;

  case 170:
#line 815 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_EEPROM;
               }
#line 3470 "SDCCy.c"
    break;

  case 171:
#line 819 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_DATA;
               }
#line 3479 "SDCCy.c"
    break;

  case 172:
#line 823 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_IDATA;
               }
#line 3488 "SDCCy.c"
    break;

  case 173:
#line 827 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_PDATA;
               }
#line 3497 "SDCCy.c"
    break;

  case 174:
#line 831 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_BIT;
                  SPEC_SCLS((yyval.lnk)) = S_BIT;
                  SPEC_BLEN((yyval.lnk)) = 1;
                  SPEC_BSTR((yyval.lnk)) = 0;
                  ignoreTypedefType = 1;
               }
#line 3510 "SDCCy.c"
    break;

  case 175:
#line 839 "SDCC.y"
                      {
                  (yyval.lnk)=newLink(SPECIFIER);
                  /* add this to the storage class specifier  */
                  SPEC_ABSA((yyval.lnk)) = 1;   /* set the absolute addr flag */
                  /* now get the abs addr from value */
                  SPEC_ADDR((yyval.lnk)) = (unsigned int) ulFromVal(constExprValue((yyvsp[0].asts),TRUE));
               }
#line 3522 "SDCCy.c"
    break;

  case 176:
#line 846 "SDCC.y"
                                {
                                   uselessDecl = FALSE;
                                   (yyval.lnk) = (yyvsp[0].lnk);
                                   ignoreTypedefType = 1;
                                }
#line 3532 "SDCCy.c"
    break;

  case 177:
#line 851 "SDCC.y"
                        {
                           cenum = NULL;
                           uselessDecl = FALSE;
                           ignoreTypedefType = 1;
                           (yyval.lnk) = (yyvsp[0].lnk);
                        }
#line 3543 "SDCCy.c"
    break;

  case 178:
#line 858 "SDCC.y"
         {
            symbol *sym;
            sym_link *p;
            sym = findSym(TypedefTab,NULL,(yyvsp[0].yychar));
            (yyval.lnk) = p = copyLinkChain(sym ? sym->type : NULL);
            SPEC_TYPEDEF(getSpec(p)) = 0;
            ignoreTypedefType = 1;
         }
#line 3556 "SDCCy.c"
    break;

  case 180:
#line 870 "SDCC.y"
            {
               (yyval.lnk) = newLink(SPECIFIER);
               SPEC_NOUN((yyval.lnk)) = V_SBIT;
               SPEC_SCLS((yyval.lnk)) = S_SBIT;
               SPEC_BLEN((yyval.lnk)) = 1;
               SPEC_BSTR((yyval.lnk)) = 0;
               ignoreTypedefType = 1;
            }
#line 3569 "SDCCy.c"
    break;

  case 182:
#line 882 "SDCC.y"
            {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 0;
               SPEC_NOUN((yyval.lnk))    = V_CHAR;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
#line 3582 "SDCCy.c"
    break;

  case 183:
#line 890 "SDCC.y"
                {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 1;
               SPEC_NOUN((yyval.lnk))    = V_CHAR;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
#line 3595 "SDCCy.c"
    break;

  case 184:
#line 901 "SDCC.y"
            {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 0;
               SPEC_NOUN((yyval.lnk))    = V_INT;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
#line 3608 "SDCCy.c"
    break;

  case 185:
#line 912 "SDCC.y"
            {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 0;
               SPEC_NOUN((yyval.lnk))    = V_INT;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_LONG((yyval.lnk))    = 1;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
#line 3622 "SDCCy.c"
    break;

  case 186:
#line 925 "SDCC.y"
        {
          structdef *sdef;

          if (! (yyvsp[0].sdef)->tagsym)
            {
              /* no tag given, so new struct def for current scope */
              addSym (StructTab, (yyvsp[0].sdef), (yyvsp[0].sdef)->tag, (yyvsp[0].sdef)->level, currBlockno, 0);
            }
          else
            {
              sdef = findSymWithBlock (StructTab, (yyvsp[0].sdef)->tagsym, currBlockno);
              if (sdef)
                {
                  /* Error if a complete type already defined in this scope */
                  if (sdef->block == currBlockno)
                    {
                      if (sdef->fields)
                        {
                          werror(E_STRUCT_REDEF, (yyvsp[0].sdef)->tag);
                          werrorfl(sdef->tagsym->fileDef, sdef->tagsym->lineDef, E_PREVIOUS_DEF);
                        }
                      else
                        {
                          (yyvsp[0].sdef) = sdef; /* We are completing an incomplete type */
                        }
                    }
                  else
                    {
                      /* There is an existing struct def in an outer scope. */
                      /* Create new struct def for current scope */
                      addSym (StructTab, (yyvsp[0].sdef), (yyvsp[0].sdef)->tag, (yyvsp[0].sdef)->level, currBlockno, 0);
                    }
                }
              else
               {
                 /* There is no existing struct def at all. */
                 /* Create new struct def for current scope */
                 addSym (StructTab, (yyvsp[0].sdef), (yyvsp[0].sdef)->tag, (yyvsp[0].sdef)->level, currBlockno, 0);
               }
            }

          if (!(yyvsp[0].sdef)->type)
            {
              (yyvsp[0].sdef)->type = (yyvsp[-1].yyint);
            }
          else
            {
              if ((yyvsp[0].sdef)->type != (yyvsp[-1].yyint))
                  werror(E_BAD_TAG, (yyvsp[0].sdef)->tag, (yyvsp[-1].yyint)==STRUCT ? "struct" : "union");
            }
        }
#line 3678 "SDCCy.c"
    break;

  case 187:
#line 977 "SDCC.y"
        {
          structdef *sdef;
          symbol *sym, *dsym;

          // check for errors in structure members
          for (sym=(yyvsp[-1].sym); sym; sym=sym->next)
            {
              if (IS_ABSOLUTE(sym->etype))
                {
                  werrorfl(sym->fileDef, sym->lineDef, E_NOT_ALLOWED, "'at'");
                  SPEC_ABSA(sym->etype) = 0;
                }
              if (IS_SPEC(sym->etype) && SPEC_SCLS(sym->etype))
                {
                  werrorfl(sym->fileDef, sym->lineDef, E_NOT_ALLOWED, "storage class");
                  printTypeChainRaw (sym->type, NULL);
                  SPEC_SCLS(sym->etype) = 0;
                }
              for (dsym=sym->next; dsym; dsym=dsym->next)
                {
                  if (*dsym->name && strcmp(sym->name, dsym->name)==0)
                    {
                      werrorfl(sym->fileDef, sym->lineDef, E_DUPLICATE_MEMBER,
                               (yyvsp[-5].yyint)==STRUCT ? "struct" : "union", sym->name);
                      werrorfl(dsym->fileDef, dsym->lineDef, E_PREVIOUS_DEF);
                    }
                }
            }

          /* Create a structdef   */
          sdef = (yyvsp[-4].sdef);
          sdef->fields = reverseSyms((yyvsp[-1].sym));        /* link the fields */
          sdef->size = compStructSize((yyvsp[-5].yyint), sdef); /* update size of  */
          promoteAnonStructs ((yyvsp[-5].yyint), sdef);

          /* Create the specifier */
          (yyval.lnk) = newLink (SPECIFIER);
          SPEC_NOUN((yyval.lnk)) = V_STRUCT;
          SPEC_STRUCT((yyval.lnk))= sdef;
        }
#line 3723 "SDCCy.c"
    break;

  case 188:
#line 1018 "SDCC.y"
        {
          structdef *sdef;

          sdef = findSymWithBlock (StructTab, (yyvsp[0].sdef)->tagsym, currBlockno);
          if (sdef)
            (yyvsp[0].sdef) = sdef;
          else
            {
              /* new struct def for current scope */
              addSym (StructTab, (yyvsp[0].sdef), (yyvsp[0].sdef)->tag, (yyvsp[0].sdef)->level, currBlockno, 0);
            }
          (yyval.lnk) = newLink(SPECIFIER);
          SPEC_NOUN((yyval.lnk)) = V_STRUCT;
          SPEC_STRUCT((yyval.lnk)) = (yyvsp[0].sdef);

          if (!(yyvsp[0].sdef)->type)
            {
              (yyvsp[0].sdef)->type = (yyvsp[-1].yyint);
            }
          else
            {
              if ((yyvsp[0].sdef)->type != (yyvsp[-1].yyint))
                  werror(E_BAD_TAG, (yyvsp[0].sdef)->tag, (yyvsp[-1].yyint)==STRUCT ? "struct" : "union");
            }
        }
#line 3753 "SDCCy.c"
    break;

  case 189:
#line 1046 "SDCC.y"
                     { (yyval.yyint) = STRUCT; ignoreTypedefType = 1; }
#line 3759 "SDCCy.c"
    break;

  case 190:
#line 1047 "SDCC.y"
                     { (yyval.yyint) = UNION; ignoreTypedefType = 1; }
#line 3765 "SDCCy.c"
    break;

  case 192:
#line 1052 "SDCC.y"
        {  /* synthesize a name add to structtable */
          ignoreTypedefType = 0;
          (yyval.sdef) = newStruct(genSymName(NestLevel));
          (yyval.sdef)->level = NestLevel;
          (yyval.sdef)->block = currBlockno;
          (yyval.sdef)->tagsym = NULL;
          //addSym (StructTab, $$, $$->tag, $$->level, currBlockno, 0);
        }
#line 3778 "SDCCy.c"
    break;

  case 193:
#line 1064 "SDCC.y"
        {  /* add name to structure table */
          ignoreTypedefType = 0;
          (yyval.sdef) = newStruct((yyvsp[0].sym)->name);
          (yyval.sdef)->level = NestLevel;
          (yyval.sdef)->block = currBlockno;
          (yyval.sdef)->tagsym = (yyvsp[0].sym);
          //$$ = findSymWithBlock (StructTab, $1, currBlockno);
          //if (! $$ )
          //  {
          //    $$ = newStruct($1->name);
          //    $$->level = NestLevel;
          //    $$->tagsym = $1;
          //    //addSym (StructTab, $$, $$->tag, $$->level, currBlockno, 0);
          //  }
        }
#line 3798 "SDCCy.c"
    break;

  case 195:
#line 1084 "SDCC.y"
        {
          symbol *sym = (yyvsp[0].sym);

          /* go to the end of the chain */
          while (sym->next) sym = sym->next;
          sym->next = (yyvsp[-1].sym);

           (yyval.sym) = (yyvsp[0].sym);
        }
#line 3812 "SDCCy.c"
    break;

  case 196:
#line 1097 "SDCC.y"
        {
          /* add this type to all the symbols */
          symbol *sym;
          for ( sym = (yyvsp[-1].sym); sym != NULL; sym = sym->next )
            {
              sym_link *btype = copyLinkChain((yyvsp[-2].lnk));

              pointerTypes(sym->type, btype);
              if (!sym->type)
                {
                  sym->type = btype;
                  sym->etype = getSpec(sym->type);
                }
              else
                  addDecl (sym, 0, btype);
              /* make sure the type is complete and sane */
              checkTypeSanity(sym->etype, sym->name);

              /* disabled, see bug 2378
              if (strlen (sym->name) == 0 && !options.std_c11)
                werrorfl(sym->fileDef, sym->lineDef, W_ANONYMOUS_MEMBER);
              */
            }
          ignoreTypedefType = 0;
          (yyval.sym) = (yyvsp[-1].sym);
        }
#line 3843 "SDCCy.c"
    break;

  case 198:
#line 1128 "SDCC.y"
        {
          (yyvsp[0].sym)->next  = (yyvsp[-2].sym);
          (yyval.sym) = (yyvsp[0].sym);
        }
#line 3852 "SDCCy.c"
    break;

  case 200:
#line 1137 "SDCC.y"
        {
          unsigned int bitsize;
          (yyval.sym) = newSymbol (genSymName(NestLevel), NestLevel);
          bitsize = (unsigned int) ulFromVal(constExprValue((yyvsp[0].asts), TRUE));
          if (bitsize > (port->s.int_size * 8))
            {
              bitsize = port->s.int_size * 8;
              werror(E_BITFLD_SIZE, bitsize);
            }
          if (!bitsize)
              bitsize = BITVAR_PAD;
          (yyval.sym)->bitVar = bitsize;
          (yyval.sym)->bitUnnamed = 1;
        }
#line 3871 "SDCCy.c"
    break;

  case 201:
#line 1152 "SDCC.y"
        {
          unsigned int bitsize;
          bitsize = (unsigned int) ulFromVal(constExprValue((yyvsp[0].asts), TRUE));
          if (bitsize > (port->s.int_size * 8))
            {
              bitsize = port->s.int_size * 8;
              werror(E_BITFLD_SIZE, bitsize);
            }
          if (!bitsize)
            {
              (yyval.sym) = newSymbol (genSymName(NestLevel), NestLevel);
              (yyval.sym)->bitVar = BITVAR_PAD;
              werror(W_BITFLD_NAMED);
            }
          else
              (yyvsp[-2].sym)->bitVar = bitsize;
        }
#line 3893 "SDCCy.c"
    break;

  case 202:
#line 1169 "SDCC.y"
     { (yyval.sym) = newSymbol ("", NestLevel); }
#line 3899 "SDCCy.c"
    break;

  case 203:
#line 1174 "SDCC.y"
        {
          (yyval.lnk) = newEnumType ((yyvsp[-1].sym));
          SPEC_SCLS(getSpec((yyval.lnk))) = 0;
        }
#line 3908 "SDCCy.c"
    break;

  case 204:
#line 1179 "SDCC.y"
        {
          symbol *csym;
          sym_link *enumtype;

          csym = findSymWithLevel(enumTab, (yyvsp[-3].sym));
          if ((csym && csym->level == (yyvsp[-3].sym)->level))
            {
              werrorfl((yyvsp[-3].sym)->fileDef, (yyvsp[-3].sym)->lineDef, E_DUPLICATE_TYPEDEF, csym->name);
              werrorfl(csym->fileDef, csym->lineDef, E_PREVIOUS_DEF);
            }

          enumtype = newEnumType ((yyvsp[-1].sym));
          SPEC_SCLS(getSpec(enumtype)) = 0;
          (yyvsp[-3].sym)->type = enumtype;

          /* add this to the enumerator table */
          if (!csym)
              addSym (enumTab, (yyvsp[-3].sym), (yyvsp[-3].sym)->name, (yyvsp[-3].sym)->level, (yyvsp[-3].sym)->block, 0);
          (yyval.lnk) = copyLinkChain(enumtype);
        }
#line 3933 "SDCCy.c"
    break;

  case 205:
#line 1200 "SDCC.y"
        {
          symbol *csym;

          /* check the enumerator table */
          if ((csym = findSymWithLevel(enumTab, (yyvsp[0].sym))))
              (yyval.lnk) = copyLinkChain(csym->type);
          else
            {
              (yyval.lnk) = newLink(SPECIFIER);
              SPEC_NOUN((yyval.lnk)) = V_INT;
            }
        }
#line 3950 "SDCCy.c"
    break;

  case 208:
#line 1218 "SDCC.y"
        {
          (yyvsp[0].sym)->next = (yyvsp[-2].sym);
          (yyval.sym) = (yyvsp[0].sym);
        }
#line 3959 "SDCCy.c"
    break;

  case 209:
#line 1226 "SDCC.y"
        {
          symbol *sym;

          // check if the symbol at the same level already exists
          if ((sym = findSymWithLevel (SymbolTab, (yyvsp[-1].sym))) && sym->level == (yyvsp[-1].sym)->level)
            {
              werrorfl ((yyvsp[-1].sym)->fileDef, (yyvsp[-1].sym)->lineDef, E_DUPLICATE_MEMBER, "enum", (yyvsp[-1].sym)->name);
              werrorfl (sym->fileDef, sym->lineDef, E_PREVIOUS_DEF);
            }
          (yyvsp[-1].sym)->type = copyLinkChain ((yyvsp[0].val)->type);
          (yyvsp[-1].sym)->etype = getSpec ((yyvsp[-1].sym)->type);
          SPEC_ENUM ((yyvsp[-1].sym)->etype) = 1;
          (yyval.sym) = (yyvsp[-1].sym);
          // do this now, so we can use it for the next enums in the list
          addSymChain (&(yyvsp[-1].sym));
        }
#line 3980 "SDCCy.c"
    break;

  case 210:
#line 1246 "SDCC.y"
        {
          value *val;

          val = constExprValue((yyvsp[0].asts), TRUE);
          if (!IS_INT(val->type) && !IS_CHAR(val->type) && !IS_BOOL(val->type))
            {
              werror(E_ENUM_NON_INTEGER);
              SNPRINTF(lbuff, sizeof(lbuff), "%d", (int) ulFromVal(val));
              val = constVal(lbuff);
            }
          (yyval.val) = cenum = val;
        }
#line 3997 "SDCCy.c"
    break;

  case 211:
#line 1258 "SDCC.y"
        {
          if (cenum)
            {
              SNPRINTF(lbuff, sizeof(lbuff), "%d", (int) ulFromVal(cenum)+1);
              (yyval.val) = cenum = constVal(lbuff);
            }
          else
            {
              (yyval.val) = cenum = constCharVal(0);
            }
        }
#line 4013 "SDCCy.c"
    break;

  case 212:
#line 1272 "SDCC.y"
                                        { (yyval.sym) = (yyvsp[0].sym); }
#line 4019 "SDCCy.c"
    break;

  case 213:
#line 1274 "SDCC.y"
         {
             addDecl ((yyvsp[0].sym),0,reverseLink((yyvsp[-1].lnk)));
             (yyval.sym) = (yyvsp[0].sym);
         }
#line 4028 "SDCCy.c"
    break;

  case 214:
#line 1281 "SDCC.y"
                                        { (yyval.sym) = (yyvsp[0].sym); }
#line 4034 "SDCCy.c"
    break;

  case 215:
#line 1282 "SDCC.y"
                                        { (yyval.sym) = (yyvsp[0].sym); }
#line 4040 "SDCCy.c"
    break;

  case 216:
#line 1287 "SDCC.y"
         {
             (yyval.sym) = (yyvsp[0].sym);
             strncpy (function_name, (yyval.sym)->name, sizeof (function_name) - 4);
             memset (function_name + sizeof (function_name) - 4, 0x00, 4);
         }
#line 4050 "SDCCy.c"
    break;

  case 217:
#line 1293 "SDCC.y"
         {
             addDecl ((yyvsp[0].sym),0,reverseLink((yyvsp[-1].lnk)));
             (yyval.sym) = (yyvsp[0].sym);
             strncpy (function_name, (yyval.sym)->name, sizeof (function_name) - 4);
             memset (function_name + sizeof (function_name) - 4, 0x00, 4);
         }
#line 4061 "SDCCy.c"
    break;

  case 218:
#line 1302 "SDCC.y"
                                          { (yyval.sym) = (yyvsp[0].sym); }
#line 4067 "SDCCy.c"
    break;

  case 219:
#line 1303 "SDCC.y"
                                              {
           // copy the functionAttributes (not the args and hasVargs !!)
           struct value *args;
           unsigned hasVargs;
           sym_link *funcType=(yyvsp[-1].sym)->type;

           while (funcType && !IS_FUNC(funcType))
             funcType = funcType->next;

           if (!funcType)
             werror (E_FUNC_ATTR);
           else
             {
               args=FUNC_ARGS(funcType);
               hasVargs=FUNC_HASVARARGS(funcType);

               memcpy (&funcType->funcAttrs, &(yyvsp[0].lnk)->funcAttrs,
                   sizeof((yyvsp[0].lnk)->funcAttrs));

               FUNC_ARGS(funcType)=args;
               FUNC_HASVARARGS(funcType)=hasVargs;

               // just to be sure
               memset (&(yyvsp[0].lnk)->funcAttrs, 0,
                   sizeof((yyvsp[0].lnk)->funcAttrs));

               addDecl ((yyvsp[-1].sym),0,(yyvsp[0].lnk));
             }
   }
#line 4101 "SDCCy.c"
    break;

  case 221:
#line 1336 "SDCC.y"
                            { (yyval.sym) = (yyvsp[-1].sym); }
#line 4107 "SDCCy.c"
    break;

  case 222:
#line 1338 "SDCC.y"
         {
            sym_link   *p;

            p = newLink (DECLARATOR);
            DCL_TYPE(p) = ARRAY;
            DCL_ELEM(p) = 0;
            addDecl((yyvsp[-2].sym),0,p);
         }
#line 4120 "SDCCy.c"
    break;

  case 223:
#line 1347 "SDCC.y"
         {
            sym_link *p;
            value *tval;
            int size;

            tval = constExprValue((yyvsp[-1].asts), TRUE);
            /* if it is not a constant then Error  */
            p = newLink (DECLARATOR);
            DCL_TYPE(p) = ARRAY;

            if (!tval || (SPEC_SCLS(tval->etype) != S_LITERAL))
              {
                werror(E_CONST_EXPECTED);
                /* Assume a single item array to limit the cascade */
                /* of additional errors. */
                size = 1;
              }
            else
              {
                if ((size = (int) ulFromVal(tval)) < 0)
                  {
                    werror(E_NEGATIVE_ARRAY_SIZE, (yyvsp[-3].sym)->name);
                    size = 1;
                  }
              }
            DCL_ELEM(p) = size;
            addDecl((yyvsp[-3].sym), 0, p);
         }
#line 4153 "SDCCy.c"
    break;

  case 224:
#line 1379 "SDCC.y"
        {
          addDecl ((yyvsp[-2].sym), FUNCTION, NULL);
        }
#line 4161 "SDCCy.c"
    break;

  case 225:
#line 1383 "SDCC.y"
        {
          NestLevel++;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
          seqPointNo++; /* not a true sequence point, but helps resolve scope */
        }
#line 4173 "SDCCy.c"
    break;

  case 226:
#line 1391 "SDCC.y"
        {
          sym_link *funcType;

          addDecl ((yyvsp[-4].sym), FUNCTION, NULL);

          funcType = (yyvsp[-4].sym)->type;
          while (funcType && !IS_FUNC(funcType))
              funcType = funcType->next;

          assert (funcType);

          FUNC_HASVARARGS(funcType) = IS_VARG((yyvsp[-1].val));
          FUNC_ARGS(funcType) = reverseVal((yyvsp[-1].val));

          /* nest level was incremented to take care of the parms  */
          NestLevel--;
          currBlockno = STACK_POP(blockNum);
          seqPointNo++; /* not a true sequence point, but helps resolve scope */

          // if this was a pointer (to a function)
          if (!IS_FUNC((yyvsp[-4].sym)->type))
              cleanUpLevel(SymbolTab, NestLevel + 1);

          (yyval.sym) = (yyvsp[-4].sym);
        }
#line 4203 "SDCCy.c"
    break;

  case 227:
#line 1417 "SDCC.y"
        {
          werror(E_OLD_STYLE,(yyvsp[-3].sym)->name);
          /* assume it returns an int */
          (yyvsp[-3].sym)->type = (yyvsp[-3].sym)->etype = newIntLink();
          (yyval.sym) = (yyvsp[-3].sym);
        }
#line 4214 "SDCCy.c"
    break;

  case 228:
#line 1426 "SDCC.y"
                         { (yyval.lnk) = (yyvsp[0].lnk);}
#line 4220 "SDCCy.c"
    break;

  case 229:
#line 1428 "SDCC.y"
         {
             (yyval.lnk) = (yyvsp[-1].lnk);
             if (IS_SPEC((yyvsp[0].lnk))) {
                 DCL_TSPEC((yyvsp[-1].lnk)) = (yyvsp[0].lnk);
                 DCL_PTR_CONST((yyvsp[-1].lnk)) = SPEC_CONST((yyvsp[0].lnk));
                 DCL_PTR_VOLATILE((yyvsp[-1].lnk)) = SPEC_VOLATILE((yyvsp[0].lnk));
                 DCL_PTR_RESTRICT((yyvsp[-1].lnk)) = SPEC_RESTRICT((yyvsp[0].lnk));
                 DCL_PTR_ADDRSPACE((yyvsp[-1].lnk)) = SPEC_ADDRSPACE((yyvsp[0].lnk));
             }
             else
                 werror (W_PTR_TYPE_INVALID);
         }
#line 4237 "SDCCy.c"
    break;

  case 230:
#line 1441 "SDCC.y"
         {
             (yyval.lnk) = (yyvsp[-1].lnk);
             (yyval.lnk)->next = (yyvsp[0].lnk);
             DCL_TYPE((yyvsp[0].lnk))=port->unqualified_pointer;
         }
#line 4247 "SDCCy.c"
    break;

  case 231:
#line 1447 "SDCC.y"
         {
             (yyval.lnk) = (yyvsp[-2].lnk);
             if (IS_SPEC((yyvsp[-1].lnk)) && DCL_TYPE((yyvsp[0].lnk)) == UPOINTER) {
                 DCL_PTR_CONST((yyvsp[-2].lnk)) = SPEC_CONST((yyvsp[-1].lnk));
                 DCL_PTR_VOLATILE((yyvsp[-2].lnk)) = SPEC_VOLATILE((yyvsp[-1].lnk));
                 DCL_PTR_RESTRICT((yyvsp[-2].lnk)) = SPEC_RESTRICT((yyvsp[-1].lnk));
                 DCL_PTR_ADDRSPACE((yyvsp[-2].lnk)) = SPEC_ADDRSPACE((yyvsp[-1].lnk));
                 switch (SPEC_SCLS((yyvsp[-1].lnk))) {
                 case S_XDATA:
                     DCL_TYPE((yyvsp[0].lnk)) = FPOINTER;
                     break;
                 case S_IDATA:
                     DCL_TYPE((yyvsp[0].lnk)) = IPOINTER;
                     break;
                 case S_PDATA:
                     DCL_TYPE((yyvsp[0].lnk)) = PPOINTER;
                     break;
                 case S_DATA:
                     DCL_TYPE((yyvsp[0].lnk)) = POINTER;
                     break;
                 case S_CODE:
                     DCL_TYPE((yyvsp[0].lnk)) = CPOINTER;
                     break;
                 case S_EEPROM:
                     DCL_TYPE((yyvsp[0].lnk)) = EEPPOINTER;
                     break;
                 default:
                   // this could be just "constant"
                   // werror(W_PTR_TYPE_INVALID);
                     ;
                 }
             }
             else
                 werror (W_PTR_TYPE_INVALID);
             (yyval.lnk)->next = (yyvsp[0].lnk);
         }
#line 4288 "SDCCy.c"
    break;

  case 232:
#line 1487 "SDCC.y"
      {
        (yyval.lnk) = newLink(DECLARATOR);
        DCL_TYPE((yyval.lnk))=UPOINTER;
      }
#line 4297 "SDCCy.c"
    break;

  case 233:
#line 1493 "SDCC.y"
                                           { (yyval.lnk) = finalizeSpec((yyvsp[0].lnk)); }
#line 4303 "SDCCy.c"
    break;

  case 235:
#line 1498 "SDCC.y"
                                         {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "type_specifier_list type_specifier skipped");
   }
#line 4313 "SDCCy.c"
    break;

  case 237:
#line 1508 "SDCC.y"
         {
           (yyvsp[0].sym)->next = (yyvsp[-2].sym);
           (yyval.sym) = (yyvsp[0].sym);
         }
#line 4322 "SDCCy.c"
    break;

  case 239:
#line 1516 "SDCC.y"
                                      { (yyvsp[-2].val)->vArgs = 1;}
#line 4328 "SDCCy.c"
    break;

  case 241:
#line 1522 "SDCC.y"
         {
            (yyvsp[0].val)->next = (yyvsp[-2].val);
            (yyval.val) = (yyvsp[0].val);
         }
#line 4337 "SDCCy.c"
    break;

  case 242:
#line 1530 "SDCC.y"
        {
          symbol *loop;

          if (IS_SPEC ((yyvsp[-1].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[-1].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, (yyvsp[0].sym)->name);
            }
          pointerTypes ((yyvsp[0].sym)->type, (yyvsp[-1].lnk));
          addDecl ((yyvsp[0].sym), 0, (yyvsp[-1].lnk));
          for (loop = (yyvsp[0].sym); loop; loop->_isparm = 1, loop = loop->next)
            ;
          (yyval.val) = symbolVal ((yyvsp[0].sym));
          ignoreTypedefType = 0;
        }
#line 4356 "SDCCy.c"
    break;

  case 243:
#line 1545 "SDCC.y"
        {
          (yyval.val) = newValue ();
          (yyval.val)->type = (yyvsp[0].lnk);
          (yyval.val)->etype = getSpec ((yyval.val)->type);
          ignoreTypedefType = 0;
         }
#line 4367 "SDCCy.c"
    break;

  case 244:
#line 1555 "SDCC.y"
        {
          if (IS_SPEC ((yyvsp[0].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[0].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, "type name");
            }
          (yyval.lnk) = (yyvsp[0].lnk); ignoreTypedefType = 0;
        }
#line 4379 "SDCCy.c"
    break;

  case 245:
#line 1563 "SDCC.y"
        {
          /* go to the end of the list */
          sym_link *p;

          if (IS_SPEC ((yyvsp[-1].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[-1].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, "type name");
            }
          pointerTypes ((yyvsp[0].lnk),(yyvsp[-1].lnk));
          for (p = (yyvsp[0].lnk); p && p->next; p = p->next)
            ;
          if (!p)
            {
              werror(E_SYNTAX_ERROR, yytext);
            }
          else
            {
              p->next = (yyvsp[-1].lnk);
            }
          (yyval.lnk) = (yyvsp[0].lnk);
          ignoreTypedefType = 0;
        }
#line 4406 "SDCCy.c"
    break;

  case 246:
#line 1588 "SDCC.y"
             { (yyval.lnk) = reverseLink((yyvsp[0].lnk)); }
#line 4412 "SDCCy.c"
    break;

  case 248:
#line 1590 "SDCC.y"
                                    { (yyvsp[-1].lnk) = reverseLink((yyvsp[-1].lnk)); (yyvsp[-1].lnk)->next = (yyvsp[0].lnk); (yyval.lnk) = (yyvsp[-1].lnk);
          if (IS_PTR((yyvsp[-1].lnk)) && IS_FUNC((yyvsp[0].lnk)))
            DCL_TYPE((yyvsp[-1].lnk)) = CPOINTER;
        }
#line 4421 "SDCCy.c"
    break;

  case 249:
#line 1597 "SDCC.y"
                                    { (yyval.lnk) = (yyvsp[-1].lnk); }
#line 4427 "SDCCy.c"
    break;

  case 250:
#line 1598 "SDCC.y"
                                    {
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = 0;
                                    }
#line 4437 "SDCCy.c"
    break;

  case 251:
#line 1603 "SDCC.y"
                                    {
                                       value *val;
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = (int) ulFromVal(val = constExprValue((yyvsp[-1].asts),TRUE));
                                    }
#line 4448 "SDCCy.c"
    break;

  case 252:
#line 1609 "SDCC.y"
                                    {
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = 0;
                                       (yyval.lnk)->next = (yyvsp[-2].lnk);
                                    }
#line 4459 "SDCCy.c"
    break;

  case 253:
#line 1616 "SDCC.y"
                                    {
                                       value *val;
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = (int) ulFromVal(val = constExprValue((yyvsp[-1].asts),TRUE));
                                       (yyval.lnk)->next = (yyvsp[-3].lnk);
                                    }
#line 4471 "SDCCy.c"
    break;

  case 254:
#line 1623 "SDCC.y"
                                    { (yyval.lnk) = NULL;}
#line 4477 "SDCCy.c"
    break;

  case 255:
#line 1624 "SDCC.y"
                                    { (yyval.lnk) = NULL;}
#line 4483 "SDCCy.c"
    break;

  case 256:
#line 1625 "SDCC.y"
                                  {
     // $1 must be a pointer to a function
     sym_link *p=newLink(DECLARATOR);
     DCL_TYPE(p) = FUNCTION;
     if (!(yyvsp[-2].lnk)) {
       // ((void (code *) ()) 0) ()
       (yyvsp[-2].lnk)=newLink(DECLARATOR);
       DCL_TYPE((yyvsp[-2].lnk))=CPOINTER;
       (yyval.lnk) = (yyvsp[-2].lnk);
     }
     (yyvsp[-2].lnk)->next=p;
   }
#line 4500 "SDCCy.c"
    break;

  case 257:
#line 1638 "SDCC.y"
        {
          NestLevel++;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
        }
#line 4511 "SDCCy.c"
    break;

  case 258:
#line 1645 "SDCC.y"
        {
          sym_link *p = newLink(DECLARATOR);
          DCL_TYPE(p) = FUNCTION;

          FUNC_HASVARARGS(p) = IS_VARG((yyvsp[-1].val));
          FUNC_ARGS(p) = reverseVal((yyvsp[-1].val));

          /* nest level was incremented to take care of the parms  */
          NestLevel--;
          currBlockno = STACK_POP(blockNum);
          if (!(yyvsp[-4].lnk))
            {
              /* ((void (code *) (void)) 0) () */
              (yyvsp[-4].lnk) = newLink(DECLARATOR);
              DCL_TYPE((yyvsp[-4].lnk)) = CPOINTER;
              (yyval.lnk) = (yyvsp[-4].lnk);
            }
          (yyvsp[-4].lnk)->next = p;
        }
#line 4535 "SDCCy.c"
    break;

  case 259:
#line 1667 "SDCC.y"
                                    { (yyval.ilist) = newiList(INIT_NODE,(yyvsp[0].asts)); }
#line 4541 "SDCCy.c"
    break;

  case 260:
#line 1668 "SDCC.y"
                                    { (yyval.ilist) = newiList(INIT_DEEP,revinit((yyvsp[-1].ilist))); }
#line 4547 "SDCCy.c"
    break;

  case 261:
#line 1669 "SDCC.y"
                                    { (yyval.ilist) = newiList(INIT_DEEP,revinit((yyvsp[-2].ilist))); }
#line 4553 "SDCCy.c"
    break;

  case 262:
#line 1673 "SDCC.y"
                                    { (yyvsp[0].ilist)->designation = (yyvsp[-1].dsgn); (yyval.ilist) = (yyvsp[0].ilist); }
#line 4559 "SDCCy.c"
    break;

  case 263:
#line 1675 "SDCC.y"
                                    {
                                       (yyvsp[0].ilist)->designation = (yyvsp[-1].dsgn);
                                       (yyvsp[0].ilist)->next = (yyvsp[-3].ilist);
                                       (yyval.ilist) = (yyvsp[0].ilist);
                                    }
#line 4569 "SDCCy.c"
    break;

  case 264:
#line 1684 "SDCC.y"
                                    {
                                       value *val = constExprValue ((yyvsp[-3].asts), TRUE);
                                       if (!val)
                                         werror (E_CONST_EXPECTED);
                                       else if (!ulFromVal(val))
                                         werror (W_STATIC_ASSERTION, (yyvsp[-1].yystr));
                                    }
#line 4581 "SDCCy.c"
    break;

  case 273:
#line 1705 "SDCC.y"
                {
                   inCritical++;
                   STACK_PUSH(continueStack,NULL);
                   STACK_PUSH(breakStack,NULL);
                   (yyval.sym) = NULL;
                }
#line 4592 "SDCCy.c"
    break;

  case 274:
#line 1714 "SDCC.y"
                         {
                   STACK_POP(breakStack);
                   STACK_POP(continueStack);
                   inCritical--;
                   (yyval.asts) = newNode(CRITICAL,(yyvsp[0].asts),NULL);
                }
#line 4603 "SDCCy.c"
    break;

  case 275:
#line 1723 "SDCC.y"
                      { if ((yyvsp[-1].asts)) {(yyval.asts) = (yyvsp[-1].asts); (yyvsp[-1].asts)->right = (yyvsp[0].asts);} else (yyval.asts) = newNode (BLOCK, NULL, NULL); }
#line 4609 "SDCCy.c"
    break;

  case 276:
#line 1725 "SDCC.y"
     { /* Support a label without a statement at the end of a */
       /* compound statement as a SDCC extension. Include the */
       /* closing brace as part of the rule to avoid an */
       /* unacceptably large number of shift/reduce conflicts */
       /* and then reinsert it to be parsed a second time. */
       (yyval.asts) = (yyvsp[-1].asts);
       yychar = '}';
     }
#line 4622 "SDCCy.c"
    break;

  case 277:
#line 1736 "SDCC.y"
                                       {  (yyval.asts) = createLabel((yyvsp[-1].sym),NULL);
                                          (yyvsp[-1].sym)->isitmp = 0;  }
#line 4629 "SDCCy.c"
    break;

  case 278:
#line 1739 "SDCC.y"
     {
       if (STACK_EMPTY(swStk))
         (yyval.asts) = createCase(NULL,(yyvsp[-1].asts),NULL);
       else
         (yyval.asts) = createCase(STACK_PEEK(swStk),(yyvsp[-1].asts),NULL);
     }
#line 4640 "SDCCy.c"
    break;

  case 279:
#line 1745 "SDCC.y"
             { (yyval.asts) = newNode(DEFAULT,NULL,NULL); }
#line 4646 "SDCCy.c"
    break;

  case 280:
#line 1746 "SDCC.y"
     {
       if (STACK_EMPTY(swStk))
         (yyval.asts) = createDefault(NULL,(yyvsp[-1].asts),NULL);
       else
         (yyval.asts) = createDefault(STACK_PEEK(swStk),(yyvsp[-1].asts),NULL);
     }
#line 4657 "SDCCy.c"
    break;

  case 281:
#line 1756 "SDCC.y"
        {
          NestLevel++;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
          ignoreTypedefType = 0;
        }
#line 4669 "SDCCy.c"
    break;

  case 282:
#line 1767 "SDCC.y"
        {
          NestLevel--;
          currBlockno = STACK_POP(blockNum);
        }
#line 4678 "SDCCy.c"
    break;

  case 283:
#line 1774 "SDCC.y"
                                              { (yyval.asts) = createBlock(NULL, NULL); }
#line 4684 "SDCCy.c"
    break;

  case 284:
#line 1775 "SDCC.y"
                                              { (yyval.asts) = createBlock(NULL, (yyvsp[-1].asts)); }
#line 4690 "SDCCy.c"
    break;

  case 285:
#line 1777 "SDCC.y"
     {
       (yyval.asts) = createBlock((yyvsp[-1].sym), NULL); 
       cleanUpLevel(StructTab, NestLevel + 1);
     }
#line 4699 "SDCCy.c"
    break;

  case 286:
#line 1784 "SDCC.y"
     {
       (yyval.asts) = createBlock((yyvsp[-2].sym), (yyvsp[-1].asts)); 
       cleanUpLevel(StructTab, NestLevel + 1);
     }
#line 4708 "SDCCy.c"
    break;

  case 287:
#line 1788 "SDCC.y"
                                              { (yyval.asts) = NULL; }
#line 4714 "SDCCy.c"
    break;

  case 288:
#line 1793 "SDCC.y"
     {
       /* if this is typedef declare it immediately */
       if ( (yyvsp[0].sym) && IS_TYPEDEF((yyvsp[0].sym)->etype)) {
         allocVariables ((yyvsp[0].sym));
         (yyval.sym) = NULL;
       }
       else
         (yyval.sym) = (yyvsp[0].sym);
       ignoreTypedefType = 0;
       addSymChain(&(yyvsp[0].sym));
     }
#line 4730 "SDCCy.c"
    break;

  case 289:
#line 1806 "SDCC.y"
     {
       symbol   *sym;

       /* if this is a typedef */
       if ((yyvsp[0].sym) && IS_TYPEDEF((yyvsp[0].sym)->etype)) {
         allocVariables ((yyvsp[0].sym));
         (yyval.sym) = (yyvsp[-1].sym);
       }
       else {
         /* get to the end of the previous decl */
         if ( (yyvsp[-1].sym) ) {
           (yyval.sym) = sym = (yyvsp[-1].sym);
           while (sym->next)
             sym = sym->next;
           sym->next = (yyvsp[0].sym);
         }
         else
           (yyval.sym) = (yyvsp[0].sym);
       }
       ignoreTypedefType = 0;
       addSymChain(&(yyvsp[0].sym));
     }
#line 4757 "SDCCy.c"
    break;

  case 291:
#line 1832 "SDCC.y"
                                       {  (yyval.asts) = newNode(NULLOP,(yyvsp[-1].asts),(yyvsp[0].asts));}
#line 4763 "SDCCy.c"
    break;

  case 292:
#line 1836 "SDCC.y"
                        { (yyval.asts) = NULL;}
#line 4769 "SDCCy.c"
    break;

  case 293:
#line 1837 "SDCC.y"
                        { (yyval.asts) = (yyvsp[-1].asts); seqPointNo++;}
#line 4775 "SDCCy.c"
    break;

  case 294:
#line 1841 "SDCC.y"
                        { (yyval.asts) = (yyvsp[0].asts); }
#line 4781 "SDCCy.c"
    break;

  case 295:
#line 1842 "SDCC.y"
                        { (yyval.asts) = NULL; }
#line 4787 "SDCCy.c"
    break;

  case 296:
#line 1847 "SDCC.y"
                     { seqPointNo++;}
#line 4793 "SDCCy.c"
    break;

  case 297:
#line 1848 "SDCC.y"
                           {
                              noLineno++;
                              (yyval.asts) = createIf ((yyvsp[-4].asts), (yyvsp[-1].asts), (yyvsp[0].asts) );
                              (yyval.asts)->lineno = (yyvsp[-4].asts)->lineno;
                              (yyval.asts)->filename = (yyvsp[-4].asts)->filename;
                              noLineno--;
                           }
#line 4805 "SDCCy.c"
    break;

  case 298:
#line 1855 "SDCC.y"
                           {
                              ast *ex;
                              static   int swLabel = 0;

                              seqPointNo++;
                              /* create a node for expression  */
                              ex = newNode(SWITCH,(yyvsp[-1].asts),NULL);
                              STACK_PUSH(swStk,ex);   /* save it in the stack */
                              ex->values.switchVals.swNum = swLabel;

                              /* now create the label */
                              SNPRINTF(lbuff, sizeof(lbuff),
                                       "_swBrk_%d",swLabel++);
                              (yyval.sym)  =  newSymbol(lbuff,NestLevel);
                              /* put label in the break stack  */
                              STACK_PUSH(breakStack,(yyval.sym));
                           }
#line 4827 "SDCCy.c"
    break;

  case 299:
#line 1872 "SDCC.y"
                           {
                              /* get back the switch form the stack  */
                              (yyval.asts) = STACK_POP(swStk);
                              (yyval.asts)->right = newNode (NULLOP,(yyvsp[0].asts),createLabel((yyvsp[-1].sym),NULL));
                              STACK_POP(breakStack);
                           }
#line 4838 "SDCCy.c"
    break;

  case 300:
#line 1880 "SDCC.y"
               {  /* create and push the continue , break & body labels */
                  static int Lblnum = 0;
                  /* continue */
                  SNPRINTF (lbuff, sizeof(lbuff), "_whilecontinue_%d",Lblnum);
                  STACK_PUSH(continueStack,newSymbol(lbuff,NestLevel));
                  /* break */
                  SNPRINTF (lbuff, sizeof(lbuff), "_whilebreak_%d",Lblnum);
                  STACK_PUSH(breakStack,newSymbol(lbuff,NestLevel));
                  /* body */
                  SNPRINTF (lbuff, sizeof(lbuff), "_whilebody_%d",Lblnum++);
                  (yyval.sym) = newSymbol(lbuff,NestLevel);
               }
#line 4855 "SDCCy.c"
    break;

  case 301:
#line 1894 "SDCC.y"
        {  /* create and push the continue , break & body Labels */
           static int Lblnum = 0;

           /* continue */
           SNPRINTF(lbuff, sizeof(lbuff), "_docontinue_%d",Lblnum);
           STACK_PUSH(continueStack,newSymbol(lbuff,NestLevel));
           /* break */
           SNPRINTF(lbuff, sizeof(lbuff), "_dobreak_%d",Lblnum);
           STACK_PUSH(breakStack,newSymbol(lbuff,NestLevel));
           /* do body */
           SNPRINTF(lbuff, sizeof(lbuff), "_dobody_%d",Lblnum++);
           (yyval.sym) = newSymbol (lbuff,NestLevel);
        }
#line 4873 "SDCCy.c"
    break;

  case 302:
#line 1909 "SDCC.y"
          { /* create & push continue, break & body labels */
            static int Lblnum = 0;

            /* continue */
            SNPRINTF(lbuff, sizeof(lbuff), "_forcontinue_%d",Lblnum);
            STACK_PUSH(continueStack,newSymbol(lbuff,NestLevel));
            /* break    */
            SNPRINTF(lbuff, sizeof(lbuff), "_forbreak_%d",Lblnum);
            STACK_PUSH(breakStack,newSymbol(lbuff,NestLevel));
            /* body */
            SNPRINTF(lbuff, sizeof(lbuff), "_forbody_%d",Lblnum);
            (yyval.sym) = newSymbol(lbuff,NestLevel);
            /* condition */
            SNPRINTF(lbuff, sizeof(lbuff), "_forcond_%d",Lblnum++);
            STACK_PUSH(forStack,newSymbol(lbuff,NestLevel));
          }
#line 4894 "SDCCy.c"
    break;

  case 303:
#line 1928 "SDCC.y"
                        { seqPointNo++;}
#line 4900 "SDCCy.c"
    break;

  case 304:
#line 1929 "SDCC.y"
                         {
                           noLineno++;
                           (yyval.asts) = createWhile ( (yyvsp[-5].sym), STACK_POP(continueStack),
                                              STACK_POP(breakStack), (yyvsp[-3].asts), (yyvsp[0].asts) );
                           (yyval.asts)->lineno = (yyvsp[-5].sym)->lineDef;
                           (yyval.asts)->filename = (yyvsp[-5].sym)->fileDef;
                           noLineno--;
                         }
#line 4913 "SDCCy.c"
    break;

  case 305:
#line 1938 "SDCC.y"
                        {
                          seqPointNo++;
                          noLineno++;
                          (yyval.asts) = createDo ( (yyvsp[-6].sym) , STACK_POP(continueStack),
                                          STACK_POP(breakStack), (yyvsp[-2].asts), (yyvsp[-5].asts));
                          (yyval.asts)->lineno = (yyvsp[-6].sym)->lineDef;
                          (yyval.asts)->filename = (yyvsp[-6].sym)->fileDef;
                          noLineno--;
                        }
#line 4927 "SDCCy.c"
    break;

  case 306:
#line 1948 "SDCC.y"
                        {
                          noLineno++;

                          (yyval.asts) = newNode(FOR,(yyvsp[0].asts),NULL);
                          AST_FOR((yyval.asts),trueLabel) = (yyvsp[-8].sym);
                          AST_FOR((yyval.asts),continueLabel) =  STACK_POP(continueStack);
                          AST_FOR((yyval.asts),falseLabel) = STACK_POP(breakStack);
                          AST_FOR((yyval.asts),condLabel)  = STACK_POP(forStack);
                          AST_FOR((yyval.asts),initExpr)   = (yyvsp[-6].asts);
                          AST_FOR((yyval.asts),condExpr)   = (yyvsp[-4].asts);
                          AST_FOR((yyval.asts),loopExpr)   = (yyvsp[-2].asts);
                          
                          /* This continue label is not at the correct location, */
                          /* but we need to create it now for proper binding. The */
                          /* code that handles the FOR node will move it to the */
                          /* proper location inside the for loop. */
                          if (AST_FOR((yyval.asts),continueLabel)->isref)
                            (yyval.asts)->right = createLabel(AST_FOR((yyval.asts),continueLabel),NULL);
                          (yyval.asts) = newNode(NULLOP,(yyval.asts),createLabel(AST_FOR((yyval.asts),falseLabel),NULL));
                          noLineno--;
                        }
#line 4953 "SDCCy.c"
    break;

  case 307:
#line 1972 "SDCC.y"
                                { (yyval.asts) = NULL; seqPointNo++; }
#line 4959 "SDCCy.c"
    break;

  case 308:
#line 1973 "SDCC.y"
                                { (yyval.asts) = (yyvsp[0].asts); seqPointNo++; }
#line 4965 "SDCCy.c"
    break;

  case 309:
#line 1977 "SDCC.y"
                           {
                              (yyvsp[-1].sym)->islbl = 1;
                              (yyval.asts) = newAst_VALUE(symbolVal((yyvsp[-1].sym)));
                              (yyval.asts) = newNode(GOTO,(yyval.asts),NULL);
                           }
#line 4975 "SDCCy.c"
    break;

  case 310:
#line 1982 "SDCC.y"
                           {
       /* make sure continue is in context */
       if (STACK_EMPTY(continueStack) || STACK_PEEK(continueStack) == NULL) {
           werror(E_BREAK_CONTEXT);
           (yyval.asts) = NULL;
       }
       else {
           (yyval.asts) = newAst_VALUE(symbolVal(STACK_PEEK(continueStack)));
           (yyval.asts) = newNode(GOTO,(yyval.asts),NULL);
           /* mark the continue label as referenced */
           STACK_PEEK(continueStack)->isref = 1;
       }
   }
#line 4993 "SDCCy.c"
    break;

  case 311:
#line 1995 "SDCC.y"
                           {
       if (STACK_EMPTY(breakStack) || STACK_PEEK(breakStack) == NULL) {
           werror(E_BREAK_CONTEXT);
           (yyval.asts) = NULL;
       } else {
           (yyval.asts) = newAst_VALUE(symbolVal(STACK_PEEK(breakStack)));
           (yyval.asts) = newNode(GOTO,(yyval.asts),NULL);
           STACK_PEEK(breakStack)->isref = 1;
       }
   }
#line 5008 "SDCCy.c"
    break;

  case 312:
#line 2005 "SDCC.y"
                           {
       seqPointNo++;
       if (inCritical) {
           werror(E_INVALID_CRITICAL);
           (yyval.asts) = NULL;
       } else {
           (yyval.asts) = newNode(RETURN,NULL,NULL);
       }
   }
#line 5022 "SDCCy.c"
    break;

  case 313:
#line 2014 "SDCC.y"
                           {
       seqPointNo++;
       if (inCritical) {
           werror(E_INVALID_CRITICAL);
           (yyval.asts) = NULL;
       } else {
           (yyval.asts) = newNode(RETURN,NULL,(yyvsp[-1].asts));
       }
   }
#line 5036 "SDCCy.c"
    break;

  case 315:
#line 2031 "SDCC.y"
      {
        ast *ex;

        seqPointNo++;
        ex = newNode(INLINEASM, NULL, NULL);
        ex->values.inlineasm = copyStr ((yyvsp[-2].yystr), NULL);
        seqPointNo++;
        (yyval.asts) = ex;
     }
#line 5050 "SDCCy.c"
    break;

  case 316:
#line 2041 "SDCC.y"
      {
        ast *ex;

        seqPointNo++;
        ex = newNode(INLINEASM, NULL, NULL);
        ex->values.inlineasm = strdup((yyvsp[-1].yystr));
        seqPointNo++;
        (yyval.asts) = ex;
      }
#line 5064 "SDCCy.c"
    break;

  case 317:
#line 2053 "SDCC.y"
                                          {
     symbol *sym;
     if ((sym = findSymWithLevel (AddrspaceTab, (yyvsp[-1].sym))) && sym->level == (yyvsp[-1].sym)->level)
       werrorfl (sym->fileDef, sym->lineDef, E_PREVIOUS_DEF);
     if (!findSymWithLevel (SymbolTab, (yyvsp[-2].sym)))
       werror (E_ID_UNDEF, (yyvsp[-2].sym)->name);
     addSym (AddrspaceTab, (yyvsp[-1].sym), (yyvsp[-1].sym)->name, (yyvsp[-1].sym)->level, (yyvsp[-1].sym)->block, 0);
     sym = findSymWithLevel (AddrspaceTab, (yyvsp[-1].sym));
     sym->addressmod[0] = findSymWithLevel (SymbolTab, (yyvsp[-2].sym));
     sym->addressmod[1] = 0;
   }
#line 5080 "SDCCy.c"
    break;

  case 318:
#line 2064 "SDCC.y"
                                                   {
     symbol *sym;
     sym_link *type;
     if ((sym = findSymWithLevel (AddrspaceTab, (yyvsp[-1].sym))) && sym->level == (yyvsp[-1].sym)->level)
       werrorfl (sym->fileDef, sym->lineDef, E_PREVIOUS_DEF);
     if (!findSymWithLevel (SymbolTab, (yyvsp[-3].sym)))
       werror (E_ID_UNDEF, (yyvsp[-3].sym)->name);
     addSym (AddrspaceTab, (yyvsp[-1].sym), (yyvsp[-1].sym)->name, (yyvsp[-1].sym)->level, (yyvsp[-1].sym)->block, 0);
     sym = findSymWithLevel (AddrspaceTab, (yyvsp[-1].sym));
     sym->addressmod[0] = findSymWithLevel (SymbolTab, (yyvsp[-3].sym));
     sym->addressmod[1] = 0;
     type = newLink (SPECIFIER);
     SPEC_CONST(type) = 1;
     sym->type = sym->etype = type;
   }
#line 5100 "SDCCy.c"
    break;

  case 319:
#line 2082 "SDCC.y"
                  { (yyval.sym) = newSymbol ((yyvsp[0].yychar), NestLevel); }
#line 5106 "SDCCy.c"
    break;


#line 5110 "SDCCy.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = YY_CAST (char *, YYSTACK_ALLOC (YY_CAST (YYSIZE_T, yymsg_alloc)));
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;


#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif


/*-----------------------------------------------------.
| yyreturn -- parsing is finished, return the result.  |
`-----------------------------------------------------*/
yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[+*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 2084 "SDCC.y"

