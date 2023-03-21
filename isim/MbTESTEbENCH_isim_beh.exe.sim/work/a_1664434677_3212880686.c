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
static const char *ng0 = "C:/Users/Pedro/Desktop/AC/Projeto1AC/ProgramableCounter.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_0774719531;

char *ieee_p_0774719531_sub_436279890_2162500114(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1664434677_3212880686_p_0(char *t0)
{
    char t10[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1968U);
    t3 = *((char **)t1);
    t1 = (t0 + 3352);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 8U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3272);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1968U);
    t3 = *((char **)t1);
    t1 = (t0 + 5312U);
    t4 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t10, t3, t1, 1);
    t7 = (t0 + 1968U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    t9 = (t10 + 12U);
    t11 = *((unsigned int *)t9);
    t12 = (1U * t11);
    memcpy(t7, t4, t12);

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 5355);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    memcpy(t8, t3, 8U);
    goto LAB6;

LAB8:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t1 = (t0 + 1968U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    memcpy(t1, t4, 8U);
    goto LAB9;

}


extern void work_a_1664434677_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1664434677_3212880686_p_0};
	xsi_register_didat("work_a_1664434677_3212880686", "isim/MbTESTEbENCH_isim_beh.exe.sim/work/a_1664434677_3212880686.didat");
	xsi_register_executes(pe);
}
