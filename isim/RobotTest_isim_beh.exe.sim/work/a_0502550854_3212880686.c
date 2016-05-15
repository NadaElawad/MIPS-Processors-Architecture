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
static const char *ng0 = "C:/Users/nadaa/OneDrive/Documents/MIPS-Processors-Architecture/DEC_5x32.vhd";
extern char *WORK_P_2068306407;

char *work_p_2068306407_sub_202116553_742381235(char *, char *, char *, char *);


static void work_a_0502550854_3212880686_p_0(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t12 = (t0 + 1032U);
    t13 = *((char **)t12);
    t12 = (t0 + 4732U);
    t14 = work_p_2068306407_sub_202116553_742381235(WORK_P_2068306407, t11, t13, t12);
    t15 = (t11 + 12U);
    t16 = *((unsigned int *)t15);
    t16 = (t16 * 1U);
    t17 = (32U != t16);
    if (t17 == 1)
        goto LAB7;

LAB8:    t18 = (t0 + 2912);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t14, 32U);
    xsi_driver_first_trans_fast_port(t18);

LAB2:    t23 = (t0 + 2832);
    *((int *)t23) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 4778);
    t6 = (t0 + 2912);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB6:    goto LAB2;

LAB7:    xsi_size_not_matching(32U, t16, 0);
    goto LAB8;

}


extern void work_a_0502550854_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0502550854_3212880686_p_0};
	xsi_register_didat("work_a_0502550854_3212880686", "isim/RobotTest_isim_beh.exe.sim/work/a_0502550854_3212880686.didat");
	xsi_register_executes(pe);
}
