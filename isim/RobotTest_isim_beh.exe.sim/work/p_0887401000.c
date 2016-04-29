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
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


unsigned char work_p_0887401000_sub_751248335_1608429257(char *t1, char *t2, char *t3, char *t4, char *t5)
{
    char t6[128];
    char t7[40];
    char t11[8];
    unsigned char t0;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    int t20;
    char *t21;
    int t22;
    char *t23;
    int t24;
    int t25;
    unsigned int t26;
    char *t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned char t32;
    char *t33;
    char *t34;

LAB0:    t8 = (t6 + 4U);
    t9 = ((IEEE_P_2592010699) + 3320);
    t10 = (t8 + 88U);
    *((char **)t10) = t9;
    t12 = (t8 + 56U);
    *((char **)t12) = t11;
    xsi_type_set_default_value(t9, t11, 0);
    t13 = (t8 + 80U);
    *((unsigned int *)t13) = 1U;
    t14 = (t7 + 4U);
    t15 = (t2 != 0);
    if (t15 == 1)
        goto LAB3;

LAB2:    t16 = (t7 + 12U);
    *((char **)t16) = t3;
    t17 = (t7 + 20U);
    t18 = (t4 != 0);
    if (t18 == 1)
        goto LAB5;

LAB4:    t19 = (t7 + 28U);
    *((char **)t19) = t5;
    t20 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t3);
    t21 = (t5 + 0U);
    t22 = *((int *)t21);
    t23 = (t5 + 8U);
    t24 = *((int *)t23);
    t25 = (t20 - t22);
    t26 = (t25 * t24);
    t27 = (t5 + 4U);
    t28 = *((int *)t27);
    xsi_vhdl_check_range_of_index(t22, t28, t24, t20);
    t29 = (1U * t26);
    t30 = (0 + t29);
    t31 = (t4 + t30);
    t32 = *((unsigned char *)t31);
    t33 = (t8 + 56U);
    t34 = *((char **)t33);
    t33 = (t34 + 0);
    *((unsigned char *)t33) = t32;
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t15 = *((unsigned char *)t10);
    t0 = t15;

LAB1:    return t0;
LAB3:    *((char **)t14) = t2;
    goto LAB2;

LAB5:    *((char **)t17) = t4;
    goto LAB4;

LAB6:;
}

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
	static char *se[] = {(void *)work_p_0887401000_sub_751248335_1608429257,(void *)work_p_0887401000_sub_3678216251_1608429257};
	xsi_register_didat("work_p_0887401000", "isim/RobotTest_isim_beh.exe.sim/work/p_0887401000.didat");
	xsi_register_subprogram_executes(se);
}
