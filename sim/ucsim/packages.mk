EXEEXT		= 

enable_mcs51_port   = yes
enable_ds390_port   = yes
enable_avr_port     = no
enable_z80_port     = yes
enable_z180_port    = yes
enable_gbz80_port   = yes
enable_r2k_port     = yes
enable_r3ka_port    = yes
enable_xa_port      = no
enable_hc08_port    = yes
enable_s08_port     = yes
enable_stm8_port    = yes
enable_st7_port     = no

ifeq ($(enable_mcs51_port),yes)
S51		= s51.src
else
S51		=
endif

ifeq ($(enable_ds390_port),yes)
S390		= s51.src
else
S51		=
endif

ifeq ($(enable_avr_port),yes)
SAVR		= avr.src
else
SAVR		=
endif

ifeq ($(enable_z80_port),yes)
SZ80		= z80.src
else
SZ80		=
endif

ifeq ($(enable_z180_port),yes)
SZ180		= z80.src
else
SZ80		=
endif

ifeq ($(enable_gbz80_port),yes)
SGBZ80		= z80.src
else
SZ80		=
endif

ifeq ($(enable_r2k_port),yes)
SR2K		= z80.src
else
SZ80		=
endif

ifeq ($(enable_r3ka_port),yes)
SR3KA		= z80.src
else
SZ80		=
endif

ifeq ($(enable_hc08_port),yes)
SHC08		= hc08.src
else
SHC08		=
endif

ifeq ($(enable_s08_port),yes)
SS08		= hc08.src
else
SHC08		=
endif

ifeq ($(enable_xa_port),yes)
XA		= xa.src
else
XA		=
endif

ifeq ($(enable_stm8_port),yes)
STM8		= stm8.src
else
STM8		=
endif

ifeq ($(enable_st7_port),yes)
ST7      	= st7.src
else
ST7      =
endif

PKGS		= cmd.src sim.src gui.src $(S51) $(S390) $(SAVR) $(SZ80) $(SZ180) \
		  $(SGBZ80) $(SR2K) $(SR3KA) $(SHC08) $(SS08) $(XA) $(STM8) $(ST7) doc

PKGS_ALL	= cmd.src sim.src gui.src s51.src avr.src z80.src xa.src \
		  hc08.src stm8.src st7.src doc
