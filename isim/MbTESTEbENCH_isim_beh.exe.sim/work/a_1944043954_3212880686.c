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
static const char *ng0 = "C:/Users/Pedro/Desktop/AC/Projeto1AC/Memoria_de_dados_RAM.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1944043954_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t0 + 1512U);
    t6 = *((char **)t1);
    t1 = (t0 + 5672U);
    t10 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t6, t1);
    t11 = (t10 - 0);
    t12 = (t11 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t10);
    t13 = (8U * t12);
    t14 = (0 + t13);
    t7 = (t2 + t14);
    t8 = (t0 + 3352);
    t9 = (t8 + 56U);
    t15 = *((char **)t9);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 8U);
    xsi_driver_first_trans_fast_port(t8);

LAB3:    t1 = (t0 + 3272);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1152U);
    t5 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(22, ng0);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 1968U);
    t8 = *((char **)t6);
    t6 = (t0 + 1512U);
    t9 = *((char **)t6);
    t6 = (t0 + 5672U);
    t10 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t9, t6);
    t11 = (t10 - 0);
    t12 = (t11 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t10);
    t13 = (8U * t12);
    t14 = (0 + t13);
    t15 = (t8 + t14);
    memcpy(t15, t7, 8U);
    goto LAB6;

}


extern void work_a_1944043954_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1944043954_3212880686_p_0};
	xsi_register_didat("work_a_1944043954_3212880686", "isim/MbTESTEbENCH_isim_beh.exe.sim/work/a_1944043954_3212880686.didat");
	xsi_register_executes(pe);
}
