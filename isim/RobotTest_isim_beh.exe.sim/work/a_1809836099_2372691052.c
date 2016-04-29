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
static const char *ng0 = "C:/Users/nadaa/Desktop/Projects/MainModule/RobotTest.vhd";
extern char *IEEE_P_3620187407;



static void work_a_1809836099_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 3584);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2760);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3584);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2760);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1809836099_2372691052_p_1(char *t0)
{
    char t11[16];
    char t19[16];
    char t27[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;
    unsigned char t9;
    unsigned char t10;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t20;
    char *t21;
    int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t28;
    char *t29;
    int t30;
    unsigned char t31;

LAB0:    t1 = (t0 + 3200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 3648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 * 2);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 3648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 6068);
    xsi_report(t2, 5U, 0);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5900U);
    t4 = (t0 + 6073);
    t6 = (t11 + 0U);
    t12 = (t6 + 0U);
    *((int *)t12) = 0;
    t12 = (t6 + 4U);
    *((int *)t12) = 31;
    t12 = (t6 + 8U);
    *((int *)t12) = 1;
    t13 = (31 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t6 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t4, t11);
    if (t15 == 1)
        goto LAB13;

LAB14:    t10 = (unsigned char)0;

LAB15:    if (t10 == 1)
        goto LAB10;

LAB11:    t9 = (unsigned char)0;

LAB12:    if (t9 == 0)
        goto LAB8;

LAB9:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t7);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t29 = (t0 + 6169);
    xsi_report(t29, 6U, (unsigned char)2);
    goto LAB9;

LAB10:    t21 = (t0 + 1672U);
    t24 = *((char **)t21);
    t21 = (t0 + 5932U);
    t25 = (t0 + 6137);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 31;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t30 = (31 - 0);
    t14 = (t30 * 1);
    t14 = (t14 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t14;
    t31 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t24, t21, t25, t27);
    t9 = t31;
    goto LAB12;

LAB13:    t12 = (t0 + 1512U);
    t16 = *((char **)t12);
    t12 = (t0 + 5916U);
    t17 = (t0 + 6105);
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 31;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t22 = (31 - 0);
    t14 = (t22 * 1);
    t14 = (t14 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t14;
    t23 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t16, t12, t17, t19);
    t10 = t23;
    goto LAB15;

LAB16:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t8);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 6175);
    xsi_report(t2, 5U, 0);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5900U);
    t4 = (t0 + 6180);
    t6 = (t11 + 0U);
    t12 = (t6 + 0U);
    *((int *)t12) = 0;
    t12 = (t6 + 4U);
    *((int *)t12) = 31;
    t12 = (t6 + 8U);
    *((int *)t12) = 1;
    t13 = (31 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t6 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t4, t11);
    if (t15 == 1)
        goto LAB29;

LAB30:    t10 = (unsigned char)0;

LAB31:    if (t10 == 1)
        goto LAB26;

LAB27:    t9 = (unsigned char)0;

LAB28:    if (t9 == 0)
        goto LAB24;

LAB25:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t7);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    t29 = (t0 + 6276);
    xsi_report(t29, 6U, (unsigned char)2);
    goto LAB25;

LAB26:    t21 = (t0 + 1672U);
    t24 = *((char **)t21);
    t21 = (t0 + 5932U);
    t25 = (t0 + 6244);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 31;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t30 = (31 - 0);
    t14 = (t30 * 1);
    t14 = (t14 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t14;
    t31 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t24, t21, t25, t27);
    t9 = t31;
    goto LAB28;

LAB29:    t12 = (t0 + 1512U);
    t16 = *((char **)t12);
    t12 = (t0 + 5916U);
    t17 = (t0 + 6212);
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 31;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t22 = (31 - 0);
    t14 = (t22 * 1);
    t14 = (t14 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t14;
    t23 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t16, t12, t17, t19);
    t10 = t23;
    goto LAB31;

LAB32:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 6282);
    xsi_report(t2, 5U, 0);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5900U);
    t4 = (t0 + 6287);
    t6 = (t11 + 0U);
    t12 = (t6 + 0U);
    *((int *)t12) = 0;
    t12 = (t6 + 4U);
    *((int *)t12) = 31;
    t12 = (t6 + 8U);
    *((int *)t12) = 1;
    t13 = (31 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t6 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t4, t11);
    if (t15 == 1)
        goto LAB41;

LAB42:    t10 = (unsigned char)0;

LAB43:    if (t10 == 1)
        goto LAB38;

LAB39:    t9 = (unsigned char)0;

LAB40:    if (t9 == 0)
        goto LAB36;

LAB37:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 6389);
    xsi_report(t2, 13U, 0);
    xsi_set_current_line(119, ng0);

LAB46:    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    t29 = (t0 + 6383);
    xsi_report(t29, 6U, (unsigned char)2);
    goto LAB37;

LAB38:    t21 = (t0 + 1672U);
    t24 = *((char **)t21);
    t21 = (t0 + 5932U);
    t25 = (t0 + 6351);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 31;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t30 = (31 - 0);
    t14 = (t30 * 1);
    t14 = (t14 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t14;
    t31 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t24, t21, t25, t27);
    t9 = t31;
    goto LAB40;

LAB41:    t12 = (t0 + 1512U);
    t16 = *((char **)t12);
    t12 = (t0 + 5916U);
    t17 = (t0 + 6319);
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 31;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t22 = (31 - 0);
    t14 = (t22 * 1);
    t14 = (t14 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t14;
    t23 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t16, t12, t17, t19);
    t10 = t23;
    goto LAB43;

LAB44:    goto LAB2;

LAB45:    goto LAB44;

LAB47:    goto LAB45;

}


extern void work_a_1809836099_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1809836099_2372691052_p_0,(void *)work_a_1809836099_2372691052_p_1};
	xsi_register_didat("work_a_1809836099_2372691052", "isim/RobotTest_isim_beh.exe.sim/work/a_1809836099_2372691052.didat");
	xsi_register_executes(pe);
}
