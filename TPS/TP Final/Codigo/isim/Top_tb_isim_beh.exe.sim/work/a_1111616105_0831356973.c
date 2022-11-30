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
static const char *ng0 = "/home/ise/Xilinx/riscVmonociclo/regfile.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_1306455576380142462_3965413181(char *, char *, char *, char *, char *);
int ieee_p_3620187407_sub_5109402382352621412_3965413181(char *, char *, char *);


static void work_a_1111616105_0831356973_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4280);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(60, ng0);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(61, ng0);
    t11 = (t0 + 1832U);
    t12 = *((char **)t11);
    t11 = (t0 + 1672U);
    t13 = *((char **)t11);
    t11 = (t0 + 6832U);
    t14 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t13, t11);
    t15 = (t14 - 31);
    t16 = (t15 * -1);
    t17 = (32U * t16);
    t18 = (0U + t17);
    t19 = (t0 + 4392);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t12, 32U);
    xsi_driver_first_trans_delta(t19, t18, 32U, 0LL);
    goto LAB6;

LAB8:    t4 = (t0 + 1672U);
    t8 = *((char **)t4);
    t4 = (t0 + 6832U);
    t9 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t8, t4);
    t10 = (t9 != 0);
    t3 = t10;
    goto LAB10;

}

static void work_a_1111616105_0831356973_p_1(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6800U);
    t3 = (t0 + 8009);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 4;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (4 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_p_3620187407_sub_1306455576380142462_3965413181(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t23 = (t0 + 8014);
    t25 = (t0 + 4456);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t23, 32U);
    xsi_driver_first_trans_fast_port(t25);

LAB2:    t30 = (t0 + 4296);
    *((int *)t30) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 2312U);
    t11 = *((char **)t7);
    t7 = (t0 + 1352U);
    t12 = *((char **)t7);
    t7 = (t0 + 6800U);
    t13 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t12, t7);
    t14 = (t13 - 31);
    t9 = (t14 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t13);
    t15 = (32U * t9);
    t16 = (0 + t15);
    t17 = (t11 + t16);
    t18 = (t0 + 4456);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t17, 32U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_1111616105_0831356973_p_2(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6816U);
    t3 = (t0 + 8046);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 4;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (4 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_p_3620187407_sub_1306455576380142462_3965413181(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t23 = (t0 + 8051);
    t25 = (t0 + 4520);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t23, 32U);
    xsi_driver_first_trans_fast_port(t25);

LAB2:    t30 = (t0 + 4312);
    *((int *)t30) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 2312U);
    t11 = *((char **)t7);
    t7 = (t0 + 1512U);
    t12 = *((char **)t7);
    t7 = (t0 + 6816U);
    t13 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t12, t7);
    t14 = (t13 - 31);
    t9 = (t14 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t13);
    t15 = (32U * t9);
    t16 = (0 + t15);
    t17 = (t11 + t16);
    t18 = (t0 + 4520);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t17, 32U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_1111616105_0831356973_init()
{
	static char *pe[] = {(void *)work_a_1111616105_0831356973_p_0,(void *)work_a_1111616105_0831356973_p_1,(void *)work_a_1111616105_0831356973_p_2};
	xsi_register_didat("work_a_1111616105_0831356973", "isim/Top_tb_isim_beh.exe.sim/work/a_1111616105_0831356973.didat");
	xsi_register_executes(pe);
}
