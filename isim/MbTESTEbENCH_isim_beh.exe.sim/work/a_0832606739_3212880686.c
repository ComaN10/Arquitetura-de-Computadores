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
static const char *ng0 = "C:/Users/Pedro/Desktop/AC/Projeto1AC/ALU.vhd";
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_2720006528_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_2720042465_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_2720078402_1035706684(char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_303759405_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3273497107_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3273568981_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_342011861_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3696923623_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_4207372771_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t23[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5403);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB11:    t5 = (t0 + 5406);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB12:    t8 = (t0 + 5409);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB13:    t11 = (t0 + 5412);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB14:    t14 = (t0 + 5415);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB15:    t17 = (t0 + 5418);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB8;

LAB16:    t20 = (t0 + 5421);
    t22 = xsi_mem_cmp(t20, t2, 3U);
    if (t22 == 1)
        goto LAB9;

LAB17:
LAB10:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 5424);
    t3 = (t0 + 1968U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    memcpy(t3, t1, 8U);

LAB2:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t0 + 3416);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3272);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(51, ng0);
    t24 = (t0 + 1032U);
    t25 = *((char **)t24);
    t24 = (t0 + 5272U);
    t26 = (t0 + 1192U);
    t27 = *((char **)t26);
    t26 = (t0 + 5288U);
    t28 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t23, t25, t24, t27, t26);
    t29 = (t0 + 1968U);
    t30 = *((char **)t29);
    t29 = (t30 + 0);
    t31 = (t23 + 12U);
    t32 = *((unsigned int *)t31);
    t33 = (1U * t32);
    memcpy(t29, t28, t33);
    goto LAB2;

LAB4:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5272U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5288U);
    t6 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t23, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t23 + 12U);
    t32 = *((unsigned int *)t11);
    t33 = (1U * t32);
    memcpy(t8, t6, t33);
    goto LAB2;

LAB5:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5272U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5288U);
    t6 = ieee_p_1242562249_sub_3696923623_1035706684(IEEE_P_1242562249, t23, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t23 + 12U);
    t32 = *((unsigned int *)t11);
    t33 = (1U * t32);
    memcpy(t8, t6, t33);
    goto LAB2;

LAB6:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5272U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5288U);
    t6 = ieee_p_1242562249_sub_342011861_1035706684(IEEE_P_1242562249, t23, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t23 + 12U);
    t32 = *((unsigned int *)t11);
    t33 = (1U * t32);
    memcpy(t8, t6, t33);
    goto LAB2;

LAB7:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5272U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5288U);
    t6 = ieee_p_1242562249_sub_4207372771_1035706684(IEEE_P_1242562249, t23, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t23 + 12U);
    t32 = *((unsigned int *)t11);
    t33 = (1U * t32);
    memcpy(t8, t6, t33);
    goto LAB2;

LAB8:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5272U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5288U);
    t6 = ieee_p_1242562249_sub_303759405_1035706684(IEEE_P_1242562249, t23, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t23 + 12U);
    t32 = *((unsigned int *)t11);
    t33 = (1U * t32);
    memcpy(t8, t6, t33);
    goto LAB2;

LAB9:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5272U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5288U);
    t34 = ieee_p_1242562249_sub_2720006528_1035706684(IEEE_P_1242562249, t2, t1, t5, t3);
    if (t34 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3352);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 4U, 1, 0LL);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3352);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);

LAB20:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5272U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5288U);
    t34 = ieee_p_1242562249_sub_2720078402_1035706684(IEEE_P_1242562249, t2, t1, t5, t3);
    if (t34 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3352);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 3352);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB23:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5272U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5288U);
    t34 = ieee_p_1242562249_sub_2720042465_1035706684(IEEE_P_1242562249, t2, t1, t5, t3);
    if (t34 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 3352);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);

LAB26:    goto LAB2;

LAB18:;
LAB19:    xsi_set_current_line(58, ng0);
    t6 = (t0 + 3352);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, 4U, 1, 0LL);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3352);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);
    goto LAB20;

LAB22:    xsi_set_current_line(66, ng0);
    t6 = (t0 + 3352);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, 1U, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 3352);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    goto LAB23;

LAB25:    xsi_set_current_line(73, ng0);
    t6 = (t0 + 3352);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, 2U, 1, 0LL);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 3352);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 3352);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);
    goto LAB26;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/MbTESTEbENCH_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
