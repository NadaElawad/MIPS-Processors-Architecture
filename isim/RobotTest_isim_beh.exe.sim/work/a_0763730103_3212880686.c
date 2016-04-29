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
static const char *ng0 = "C:/Users/nadaa/Desktop/Projects/MainModule/InstructionMemory.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_0774719531;

int ieee_p_0774719531_sub_378705076_2162500114(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0763730103_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    int t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1472U);
    t3 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    t1 = (t0 + 4000);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 9084);
    t6 = (t0 + 2328U);
    t7 = *((char **)t6);
    t8 = (0 - 0);
    t9 = (t8 * 1);
    t10 = (32U * t9);
    t11 = (0 + t10);
    t6 = (t7 + t11);
    memcpy(t6, t1, 32U);
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 9116);
    t5 = (t0 + 2328U);
    t6 = *((char **)t5);
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t10 = (32U * t9);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    memcpy(t5, t1, 32U);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 9148);
    t5 = (t0 + 2328U);
    t6 = *((char **)t5);
    t8 = (2 - 0);
    t9 = (t8 * 1);
    t10 = (32U * t9);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    memcpy(t5, t1, 32U);
    goto LAB3;

LAB5:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t2 = (t0 + 6900U);
    t8 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t5, t2);
    t6 = (t0 + 2448U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    *((int *)t6) = t8;
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2328U);
    t2 = *((char **)t1);
    t1 = (t0 + 2448U);
    t5 = *((char **)t1);
    t8 = *((int *)t5);
    t12 = (t8 - 0);
    t9 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t8);
    t10 = (32U * t9);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t6 = (t0 + 4096);
    t7 = (t6 + 56U);
    t13 = *((char **)t7);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB6;

}

static void work_a_0763730103_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(46, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 4160);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 30U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 4016);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0763730103_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0763730103_3212880686_p_0,(void *)work_a_0763730103_3212880686_p_1};
	xsi_register_didat("work_a_0763730103_3212880686", "isim/RobotTest_isim_beh.exe.sim/work/a_0763730103_3212880686.didat");
	xsi_register_executes(pe);
}
