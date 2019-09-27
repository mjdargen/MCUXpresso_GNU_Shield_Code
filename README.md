# MCUXpresso_GNU_Shield_Code
ECE560/561 KL25Z shield code ported to GNU for MCUXpresso IDE

*	Create new project  
    * KL25Z source  
    * Include nothing  
    * Newlibnano(none)  
    * enable printf/scanf float  
*	Need to update board source files, import from Keil projects  
    * MKL25Z4.h 
    * system_MKL25Z4.c  
    * system_MKL25Z4.h  
*	Changed pragmas in I2C.c  
    * #pragma noline -->  __attribute__ ((noinline))  
* Properties->C/C++ Build ->Settings ->MCU Linker -> Managed Linker Script  
    * Newlibnano(none)  
* Properties->C/C++ Build ->Settings ->MCU Linker -> Managed Linker Script  
    * enable printf/scanf float  
* Properties->C/C++ Build ->Settings ->MCU Linker -> General  
    * no startup or standard libraries  
* Got it to build from library -> as is from github CMSIS5  
    * https://github.com/ARM-software/CMSIS_5  
    * libRTX_CM0.a  
        * add library RTX_CM0  
        * add library path
    * cmsis_gcc.h -> replace
        * one included in MCUXpresso doesn't work
        * use one I added to CMSIS5
    * cmsis_compiler
    * cmsis_os2.h
    * RTX_Config.c
    * RTX_Config.h
    * rtx_evr.h
    * rtx_os.h
    * rtx_lib.c
    * rtx_lib.h
*	Add libRTX_CM0.a library
    * Properties -> C/C++ General -> Paths and Symbols -> Libraries
        * Add "RTX_CM0"
    * Properties -> C/C++ General -> Paths and Symbols -> Library Paths
        * Add "/${ProjName}/CMSIS/RTX5"
        * Check "Is a workplace path"
*	Update Includes for all new directories  
    * Properties -> C/C++ General -> Paths and Symbols -> Includes  
    * Add all new paths just like already existing paths  
*	Change port A clock in LCD_GPIO_Init() ST7789.c
    * // Enable clock to ports
    * SIM->SCGC5 |= SIM_SCGC5_PORTA_MASK | SIM_SCGC5_PORTC_MASK | SIM_SCGC5_PORTE_MASK;	
