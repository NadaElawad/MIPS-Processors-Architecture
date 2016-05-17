/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


unsigned char work_p_0887401000_sub_3678216251_1608429257(char *t1, char *t2, char *t3)
{
    char t4[128];
    char t5[24];
    char t9[8];
    unsigned char t0;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    int t19;
    int t20;
    int t21;
    unsigned int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned char t26;
    unsigned char t27;
    char *t28;

LAB0:    t6 = (t4 + 4U);
    t7 = ((IEEE_P_2592010699) + 3320);
    t8 = (t6 + 88U);
    *((char **)t8) = t7;
    t10 = (t6 + 56U);
    *((char **)t10) = t9;
    xsi_type_set_default_value(t7, t9, 0);
    t11 = (t6 + 80U);
    *((unsigned int *)t11) = 1U;
    t12 = (t5 + 4U);
    t13 = (t2 != 0);
    if (t13 == 1)
        goto LAB3;

LAB2:    t14 = (t5 + 12U);
    *((char **)t14) = t3;
    t15 = (t6 + 56U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    *((unsigned char *)t15) = (unsigned char)2;
    t17 = 0;
    t18 = 31;

LAB4:    if (t17 <= t18)
        goto LAB5;

LAB7:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t13 = *((unsigned char *)t8);
    t26 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t13);
    t0 = t26;

LAB1:    return t0;
LAB3:    *((char **)t12) = t2;
    goto LAB2;

LAB5:    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t13 = *((unsigned char *)t8);
    t7 = (t3 + 0U);
    t19 = *((int *)t7);
    t10 = (t3 + 8U);
    t20 = *((int *)t10);
    t21 = (t17 - t19);
    t22 = (t21 * t20);
    t11 = (t3 + 4U);
    t23 = *((int *)t11);
    xsi_vhdl_check_range_of_index(t19, t23, t20, t17);
    t24 = (1U * t22);
    t25 = (0 + t24);
    t15 = (t2 + t25);
    t26 = *((unsigned char *)t15);
    t27 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t13, t26);
    t16 = (t6 + 56U);
    t28 = *((char **)t16);
    t16 = (t28 + 0);
    *((unsigned char *)t16) = t27;

LAB6:    if (t17 == t18)
        goto LAB7;

LAB8:    t19 = (t17 + 1);
    t17 = t19;
    goto LAB4;

LAB9:;
}


extern void work_p_0887401000_init()
{
	static char *se[] = {(void *)work_p_0887401000_sub_3678216251_1608429257};
	xsi_register_didat("work_p_0887401000", "isim/RobotTest_isim_beh.exe.sim/work/p_0887401000.didat");
	xsi_register_subprogram_executes(se);
}
