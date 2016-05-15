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
char *ieee_p_2592010699_sub_3293060193_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);


char *work_p_2068306407_sub_202116553_742381235(char *t1, char *t2, char *t3, char *t4)
{
    char t5[128];
    char t6[24];
    char t7[16];
    char t14[32];
    char t25[16];
    char t26[16];
    char *t0;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t27;
    int t28;
    int t29;
    int t30;

LAB0:    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 31;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (0 - 31);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t5 + 4U);
    t12 = ((IEEE_P_2592010699) + 4024);
    t13 = (t9 + 88U);
    *((char **)t13) = t12;
    t15 = (t9 + 56U);
    *((char **)t15) = t14;
    xsi_type_set_default_value(t12, t14, t7);
    t16 = (t9 + 64U);
    *((char **)t16) = t7;
    t17 = (t9 + 80U);
    *((unsigned int *)t17) = 32U;
    t18 = (t6 + 4U);
    t19 = (t3 != 0);
    if (t19 == 1)
        goto LAB3;

LAB2:    t20 = (t6 + 12U);
    *((char **)t20) = t4;
    t21 = (t1 + 3596);
    t23 = (t9 + 56U);
    t24 = *((char **)t23);
    t23 = (t24 + 0);
    memcpy(t23, t21, 32U);
    t8 = (t9 + 56U);
    t12 = *((char **)t8);
    t8 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t26, t12, t7, (unsigned char)0);
    t13 = (t26 + 12U);
    t11 = *((unsigned int *)t13);
    t11 = (t11 * 1U);
    t10 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t4);
    t15 = xsi_vhdl_bitvec_sll(t15, t8, t11, t10);
    t16 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t25, t15, t26);
    t17 = (t9 + 56U);
    t21 = *((char **)t17);
    t17 = (t21 + 0);
    t22 = (t25 + 12U);
    t27 = *((unsigned int *)t22);
    t27 = (t27 * 1U);
    memcpy(t17, t16, t27);
    t8 = (t9 + 56U);
    t12 = *((char **)t8);
    t8 = (t7 + 12U);
    t11 = *((unsigned int *)t8);
    t11 = (t11 * 1U);
    t0 = xsi_get_transient_memory(t11);
    memcpy(t0, t12, t11);
    t13 = (t7 + 0U);
    t10 = *((int *)t13);
    t15 = (t7 + 4U);
    t28 = *((int *)t15);
    t16 = (t7 + 8U);
    t29 = *((int *)t16);
    t17 = (t2 + 0U);
    t21 = (t17 + 0U);
    *((int *)t21) = t10;
    t21 = (t17 + 4U);
    *((int *)t21) = t28;
    t21 = (t17 + 8U);
    *((int *)t21) = t29;
    t30 = (t28 - t10);
    t27 = (t30 * t29);
    t27 = (t27 + 1);
    t21 = (t17 + 12U);
    *((unsigned int *)t21) = t27;

LAB1:    return t0;
LAB3:    *((char **)t18) = t3;
    goto LAB2;

LAB4:;
}

char *work_p_2068306407_sub_2223697731_742381235(char *t1, char *t2, char *t3, char *t4, char *t5, char *t6)
{
    char t7[128];
    char t8[40];
    char t9[16];
    char t16[32];
    char *t0;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t21;
    char *t22;
    char *t23;
    unsigned char t24;
    char *t25;
    int t26;
    char *t27;
    int t28;
    char *t29;
    int t30;
    int t31;
    char *t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 31;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 31);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t11 = (t7 + 4U);
    t14 = ((IEEE_P_2592010699) + 4024);
    t15 = (t11 + 88U);
    *((char **)t15) = t14;
    t17 = (t11 + 56U);
    *((char **)t17) = t16;
    xsi_type_set_default_value(t14, t16, t9);
    t18 = (t11 + 64U);
    *((char **)t18) = t9;
    t19 = (t11 + 80U);
    *((unsigned int *)t19) = 32U;
    t20 = (t8 + 4U);
    t21 = (t3 != 0);
    if (t21 == 1)
        goto LAB3;

LAB2:    t22 = (t8 + 12U);
    *((char **)t22) = t4;
    t23 = (t8 + 20U);
    t24 = (t5 != 0);
    if (t24 == 1)
        goto LAB5;

LAB4:    t25 = (t8 + 28U);
    *((char **)t25) = t6;
    t26 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t4);
    t27 = (t6 + 0U);
    t28 = *((int *)t27);
    t29 = (t6 + 8U);
    t30 = *((int *)t29);
    t31 = (t26 - t28);
    t13 = (t31 * t30);
    t32 = (t6 + 4U);
    t33 = *((int *)t32);
    xsi_vhdl_check_range_of_index(t28, t33, t30, t26);
    t34 = (32U * t13);
    t35 = (0 + t34);
    t36 = (t5 + t35);
    t37 = (t11 + 56U);
    t38 = *((char **)t37);
    t37 = (t38 + 0);
    memcpy(t37, t36, 32U);
    t10 = (t11 + 56U);
    t14 = *((char **)t10);
    t10 = (t9 + 12U);
    t13 = *((unsigned int *)t10);
    t13 = (t13 * 1U);
    t0 = xsi_get_transient_memory(t13);
    memcpy(t0, t14, t13);
    t15 = (t9 + 0U);
    t12 = *((int *)t15);
    t17 = (t9 + 4U);
    t26 = *((int *)t17);
    t18 = (t9 + 8U);
    t28 = *((int *)t18);
    t19 = (t2 + 0U);
    t27 = (t19 + 0U);
    *((int *)t27) = t12;
    t27 = (t19 + 4U);
    *((int *)t27) = t26;
    t27 = (t19 + 8U);
    *((int *)t27) = t28;
    t30 = (t26 - t12);
    t34 = (t30 * t28);
    t34 = (t34 + 1);
    t27 = (t19 + 12U);
    *((unsigned int *)t27) = t34;

LAB1:    return t0;
LAB3:    *((char **)t20) = t3;
    goto LAB2;

LAB5:    *((char **)t23) = t5;
    goto LAB4;

LAB6:;
}


extern void work_p_2068306407_init()
{
	static char *se[] = {(void *)work_p_2068306407_sub_202116553_742381235,(void *)work_p_2068306407_sub_2223697731_742381235};
	xsi_register_didat("work_p_2068306407", "isim/RobotTest_isim_beh.exe.sim/work/p_2068306407.didat");
	xsi_register_subprogram_executes(se);
}
