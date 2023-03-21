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
static const char *ng0 = "C:/Users/Pedro/Desktop/AC/Projeto1AC/registoFlags.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1348819826_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    char *t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5251);
    t9 = xsi_mem_cmp(t1, t2, 3U);
    if (t9 == 1)
        goto LAB9;

LAB15:    t7 = (t0 + 5254);
    t10 = xsi_mem_cmp(t7, t2, 3U);
    if (t10 == 1)
        goto LAB10;

LAB16:    t11 = (t0 + 5257);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB11;

LAB17:    t14 = (t0 + 5260);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB12;

LAB18:    t17 = (t0 + 5263);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB13;

LAB19:
LAB14:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 3352);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast_port(t1);

LAB8:    t1 = (t0 + 3272);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1152U);
    t5 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(47, ng0);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 1968U);
    t8 = *((char **)t6);
    t6 = (t8 + 0);
    memcpy(t6, t7, 5U);
    goto LAB6;

LAB9:    xsi_set_current_line(51, ng0);
    t20 = (t0 + 1968U);
    t21 = *((char **)t20);
    t22 = (0 - 4);
    t23 = (t22 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t20 = (t21 + t25);
    t3 = *((unsigned char *)t20);
    t26 = (t0 + 3352);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = t3;
    xsi_driver_first_trans_fast_port(t26);
    goto LAB8;

LAB10:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t9 = (1 - 4);
    t23 = (t9 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t1 = (t2 + t25);
    t3 = *((unsigned char *)t1);
    t6 = (t0 + 3352);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t3;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB8;

LAB11:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t9 = (2 - 4);
    t23 = (t9 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t1 = (t2 + t25);
    t3 = *((unsigned char *)t1);
    t6 = (t0 + 3352);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t3;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB8;

LAB12:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t9 = (3 - 4);
    t23 = (t9 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t1 = (t2 + t25);
    t3 = *((unsigned char *)t1);
    t6 = (t0 + 3352);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t3;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB8;

LAB13:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t9 = (4 - 4);
    t23 = (t9 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t1 = (t2 + t25);
    t3 = *((unsigned char *)t1);
    t6 = (t0 + 3352);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t3;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB8;

LAB20:;
}


extern void work_a_1348819826_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1348819826_3212880686_p_0};
	xsi_register_didat("work_a_1348819826_3212880686", "isim/MbTESTEbENCH_isim_beh.exe.sim/work/a_1348819826_3212880686.didat");
	xsi_register_executes(pe);
}
