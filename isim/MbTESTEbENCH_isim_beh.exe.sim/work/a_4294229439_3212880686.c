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
static const char *ng0 = "C:/Users/Pedro/Desktop/AC/Projeto1AC/Mux_PC.vhd";



static void work_a_4294229439_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    int t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 5436);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB9:    t5 = (t0 + 5439);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB10:    t8 = (t0 + 5442);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB11:    t11 = (t0 + 5445);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB12:    t14 = (t0 + 5448);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB13:
LAB8:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 3552);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(42, ng0);
    t17 = (t0 + 1032U);
    t18 = *((char **)t17);
    t19 = *((unsigned char *)t18);
    t17 = (t0 + 3552);
    t20 = (t17 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t19;
    xsi_driver_first_trans_fast_port(t17);
    goto LAB2;

LAB4:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t19 = *((unsigned char *)t2);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = t19;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t19 = *((unsigned char *)t2);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = t19;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t19 = *((unsigned char *)t2);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = t19;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t19 = *((unsigned char *)t2);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = t19;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB14:;
}


extern void work_a_4294229439_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4294229439_3212880686_p_0};
	xsi_register_didat("work_a_4294229439_3212880686", "isim/MbTESTEbENCH_isim_beh.exe.sim/work/a_4294229439_3212880686.didat");
	xsi_register_executes(pe);
}
