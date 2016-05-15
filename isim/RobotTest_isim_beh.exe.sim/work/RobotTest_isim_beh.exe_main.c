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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *WORK_P_0167168211;
char *WORK_P_2768241058;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;
char *WORK_P_2068306407;
char *WORK_P_0887401000;
char *WORK_P_2544088234;
char *IEEE_P_0774719531;
char *IEEE_P_3564397177;
char *STD_TEXTIO;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_p_0167168211_init();
    ieee_p_1242562249_init();
    work_p_2068306407_init();
    work_p_2768241058_init();
    work_p_0887401000_init();
    work_p_2544088234_init();
    ieee_p_0774719531_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_a_2901606177_3212880686_init();
    work_a_0763730103_3212880686_init();
    work_a_2096391741_3212880686_init();
    work_a_4067815512_3212880686_init();
    work_a_2664692812_3212880686_init();
    work_a_0502550854_3212880686_init();
    work_a_4038272074_3212880686_init();
    work_a_0632151734_3212880686_init();
    work_a_0694870863_3212880686_init();
    work_a_2166523021_3212880686_init();
    work_a_1955241509_3212880686_init();
    work_a_2606218630_3212880686_init();
    work_a_0495498285_3212880686_init();
    work_a_2621396070_3212880686_init();
    work_a_2633138767_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1215300100_3212880686_init();
    work_a_2750190074_3212880686_init();
    work_a_0431830435_3212880686_init();
    work_a_1809836099_2372691052_init();


    xsi_register_tops("work_a_1809836099_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_0167168211 = xsi_get_engine_memory("work_p_0167168211");
    WORK_P_2768241058 = xsi_get_engine_memory("work_p_2768241058");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    WORK_P_2068306407 = xsi_get_engine_memory("work_p_2068306407");
    WORK_P_0887401000 = xsi_get_engine_memory("work_p_0887401000");
    WORK_P_2544088234 = xsi_get_engine_memory("work_p_2544088234");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}
