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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/Xilinx/riscVmonociclo/DMem.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_13554554585326073636_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3720894149_0831356973_p_0(char *t0)
{
    char t13[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 2288U);
    t3 = *((char **)t1);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t10 = (31 - 7);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t1 = (t4 + t12);
    t7 = (t13 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 7;
    t8 = (t7 + 4U);
    *((int *)t8) = 2;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t16 = (2 - 7);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t17;
    t18 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t1, t13);
    t19 = (t18 - 63);
    t17 = (t19 * -1);
    xsi_vhdl_check_range_of_index(63, 0, -1, t18);
    t20 = (32U * t17);
    t21 = (0 + t20);
    t8 = (t3 + t21);
    t9 = (t0 + 3664);
    t14 = (t9 + 56U);
    t15 = *((char **)t14);
    t22 = (t15 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 32U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 2288U);
    t3 = *((char **)t1);
    t16 = (0 - 63);
    t10 = (t16 * -1);
    t11 = (32U * t10);
    t12 = (0 + t11);
    t1 = (t3 + t12);
    t4 = (t0 + 3728);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t14 = *((char **)t9);
    memcpy(t14, t1, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t16 = (0 - 31);
    t10 = (t16 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t1 = (t3 + t12);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 3792);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t14 = *((char **)t9);
    *((unsigned char *)t14) = t2;
    xsi_driver_first_trans_fast_port(t4);
    t1 = (t0 + 3584);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(27, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(28, ng0);
    t3 = (t0 + 1512U);
    t7 = *((char **)t3);
    t3 = (t0 + 2288U);
    t8 = *((char **)t3);
    t3 = (t0 + 1352U);
    t9 = *((char **)t3);
    t10 = (31 - 7);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t3 = (t9 + t12);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 7;
    t15 = (t14 + 4U);
    *((int *)t15) = 2;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t16 = (2 - 7);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t18 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t3, t13);
    t19 = (t18 - 63);
    t17 = (t19 * -1);
    xsi_vhdl_check_range_of_index(63, 0, -1, t18);
    t20 = (32U * t17);
    t21 = (0 + t20);
    t15 = (t8 + t21);
    memcpy(t15, t7, 32U);
    goto LAB6;

}


extern void work_a_3720894149_0831356973_init()
{
	static char *pe[] = {(void *)work_a_3720894149_0831356973_p_0};
	xsi_register_didat("work_a_3720894149_0831356973", "isim/Top_isim_beh.exe.sim/work/a_3720894149_0831356973.didat");
	xsi_register_executes(pe);
}
