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
static const char *ng0 = "/home/ise/Xilinx/riscVmonociclo/alu.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_1242562249_sub_1701011461141789389_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439767405979520975_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989833707593767_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(20, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6976U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 6992U);
    t6 = ieee_p_1242562249_sub_1701011461141789389_1035706684(IEEE_P_1242562249, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (32U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 4760);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 4616);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t9, 0);
    goto LAB6;

}

static void work_a_0832606739_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB3;

LAB4:
LAB5:    t16 = (t0 + 7275);
    t18 = (t0 + 4824);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t16, 32U);
    xsi_driver_first_trans_fast(t18);

LAB2:    t23 = (t0 + 4632);
    *((int *)t23) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 7243);
    t11 = (t0 + 4824);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 32U);
    xsi_driver_first_trans_fast(t11);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_2(char *t0)
{
    char t25[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    char *t14;
    int t15;
    char *t16;
    char *t17;
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    t1 = (t0 + 3800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = (2 - 2);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 7307);
    t9 = xsi_mem_cmp(t7, t2, 3U);
    if (t9 == 1)
        goto LAB5;

LAB12:    t10 = (t0 + 7310);
    t12 = xsi_mem_cmp(t10, t2, 3U);
    if (t12 == 1)
        goto LAB6;

LAB13:    t13 = (t0 + 7313);
    t15 = xsi_mem_cmp(t13, t2, 3U);
    if (t15 == 1)
        goto LAB7;

LAB14:    t16 = (t0 + 7316);
    t18 = xsi_mem_cmp(t16, t2, 3U);
    if (t18 == 1)
        goto LAB8;

LAB15:    t19 = (t0 + 7319);
    t21 = xsi_mem_cmp(t19, t2, 3U);
    if (t21 == 1)
        goto LAB9;

LAB16:    t22 = (t0 + 7322);
    t24 = xsi_mem_cmp(t22, t2, 3U);
    if (t24 == 1)
        goto LAB10;

LAB17:
LAB11:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 7325);
    t7 = (t0 + 4888);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_fast(t7);

LAB4:    xsi_set_current_line(22, ng0);

LAB31:    t2 = (t0 + 4648);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB32;

LAB1:    return;
LAB5:    xsi_set_current_line(23, ng0);
    t26 = (t0 + 1032U);
    t27 = *((char **)t26);
    t26 = (t0 + 6976U);
    t28 = (t0 + 1192U);
    t29 = *((char **)t28);
    t28 = (t0 + 6992U);
    t30 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t25, t27, t26, t29, t28);
    t31 = (t25 + 12U);
    t32 = *((unsigned int *)t31);
    t33 = (1U * t32);
    t34 = (32U != t33);
    if (t34 == 1)
        goto LAB19;

LAB20:    t35 = (t0 + 4888);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t30, 32U);
    xsi_driver_first_trans_fast(t35);
    goto LAB4;

LAB6:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6976U);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t7 = (t0 + 6992U);
    t10 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t25, t3, t2, t8, t7);
    t11 = (t25 + 12U);
    t4 = *((unsigned int *)t11);
    t5 = (1U * t4);
    t34 = (32U != t5);
    if (t34 == 1)
        goto LAB21;

LAB22:    t13 = (t0 + 4888);
    t14 = (t13 + 56U);
    t16 = *((char **)t14);
    t17 = (t16 + 56U);
    t19 = *((char **)t17);
    memcpy(t19, t10, 32U);
    xsi_driver_first_trans_fast(t13);
    goto LAB4;

LAB7:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6976U);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t7 = (t0 + 6992U);
    t10 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t25, t3, t2, t8, t7);
    t11 = (t25 + 12U);
    t4 = *((unsigned int *)t11);
    t5 = (1U * t4);
    t34 = (32U != t5);
    if (t34 == 1)
        goto LAB23;

LAB24:    t13 = (t0 + 4888);
    t14 = (t13 + 56U);
    t16 = *((char **)t14);
    t17 = (t16 + 56U);
    t19 = *((char **)t17);
    memcpy(t19, t10, 32U);
    xsi_driver_first_trans_fast(t13);
    goto LAB4;

LAB8:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6976U);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t7 = (t0 + 6992U);
    t10 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t25, t3, t2, t8, t7);
    t11 = (t25 + 12U);
    t4 = *((unsigned int *)t11);
    t5 = (1U * t4);
    t34 = (32U != t5);
    if (t34 == 1)
        goto LAB25;

LAB26:    t13 = (t0 + 4888);
    t14 = (t13 + 56U);
    t16 = *((char **)t14);
    t17 = (t16 + 56U);
    t19 = *((char **)t17);
    memcpy(t19, t10, 32U);
    xsi_driver_first_trans_fast(t13);
    goto LAB4;

LAB9:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6976U);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t7 = (t0 + 6992U);
    t10 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t25, t3, t2, t8, t7);
    t11 = (t25 + 12U);
    t4 = *((unsigned int *)t11);
    t5 = (1U * t4);
    t34 = (32U != t5);
    if (t34 == 1)
        goto LAB27;

LAB28:    t13 = (t0 + 4888);
    t14 = (t13 + 56U);
    t16 = *((char **)t14);
    t17 = (t16 + 56U);
    t19 = *((char **)t17);
    memcpy(t19, t10, 32U);
    xsi_driver_first_trans_fast(t13);
    goto LAB4;

LAB10:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 4888);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 32U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB18:;
LAB19:    xsi_size_not_matching(32U, t33, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(32U, t5, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(32U, t5, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(32U, t5, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(32U, t5, 0);
    goto LAB28;

LAB29:    t3 = (t0 + 4648);
    *((int *)t3) = 0;
    goto LAB2;

LAB30:    goto LAB29;

LAB32:    goto LAB30;

}

static void work_a_0832606739_3212880686_p_3(char *t0)
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
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 7056U);
    t3 = (t0 + 7357);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 31;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (31 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = (t0 + 4952);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t15);

LAB2:    t20 = (t0 + 4664);
    *((int *)t20) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 4952);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(32, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 5016);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4680);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0,(void *)work_a_0832606739_3212880686_p_1,(void *)work_a_0832606739_3212880686_p_2,(void *)work_a_0832606739_3212880686_p_3,(void *)work_a_0832606739_3212880686_p_4};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/Top_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
