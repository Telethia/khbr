---
WorkSize: 4496
StackSize: 512
TempSize: 512
Triggers:
- Key: 6
  Addr: TR6
- Key: 1
  Addr: TR1
- Key: 0
  Addr: TR0
Name: b_ca000

---
; codeLabels: 
; codeRevealer: -l 100 -l 1208 -l 1289 -l 1290 -l 1307 -l 1312 -l 1327 -l 1435 -l 1501 -l 1567 -l 1626 -l 1659 -l 1669 -l 2423 -l 2455 -l 2469 -l 2550 -l 2747 -l 2754 -l 3290 -l 3305 -l 3402
 section .text
TR6:
 popToSp 0
 pushFromPWp W4
 pushFromFSp 0
 gosub 4, L31
 ret 
L31:
 popToSp 4
 popToSp 0
 pushFromFSp 4
 syscall 2, 8 ; trap_damage_is_reaction (1 in, 1 out)
 jz L49
 pushFromFSp 0
 pushFromPAi L3831 ; ___ai idle (L3831)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 jmp L49
L49:
 ret 
TR1:
 pushFromPWp W4
 gosub 4, L55
 ret 
L55:
 popToSp 0
 pushFromFSp 0
 pushImmf 9999
 pushImmf 9999
 pushImmf 9999
 gosub 4, L101
 pushFromFSp 0
 pushFromPAi L3718 ; ___ai appear (L3718)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 pushFromFSp 0
 pushFromPAi L3806 ; ___ai mode_battle (L3806)
 syscall 1, 9 ; trap_obj_act_push (2 in, 0 out)
L82:
 pushFromFSp 0
 syscall 1, 10 ; trap_obj_is_act_exec (1 in, 1 out)
 eqz 
 jz L97
 pushFromFSp 0
 pushFromPAi L3806 ; ___ai mode_battle (L3806)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 jmp L97
L97:
 halt 
 jmp L82
D100:
L100:
 ret 
L101:
 popToSp 4
 popToSp 8
 popToSp 12
 popToSp 0
 pushFromFSp 4
 popToSp 16
 pushFromPSp 32
 pushImmf 9999
 pushImmf 9999
 pushImmf 9999
 pushImmf 1
 gosub 16, L156
 pushFromFSp 0
 pushFromPSp 32
 pushFromFSp 16
 syscall 1, 58 ; trap_obj_fly (3 in, 0 out)
 pushFromFSp 0
 pushImm 40
 add 
 pushFromFSp 8
 memcpy 0
 pushFromFSp 0
 pushImm 44
 add 
 pushFromFSp 12
 memcpy 0
 ret 
L156:
 popToSp 4
 popToSp 8
 popToSp 12
 popToSp 16
 popToSp 0
 pushFromFSp 16
 popToSpVal 0
 pushFromFSp 12
 popToSpVal 4
 pushFromFSp 8
 popToSpVal 8
 pushFromFSp 4
 popToSpVal 12
 ret 
TR0:
 popToSp 0
 pushFromPWp W4
 pushFromFSp 0
 gosub 4, L192
 ret 
L192:
 popToSp 4
 popToSp 0
 pushFromFSp 0
 pushFromFSp 4
 gosub 4, L1081
 pushFromFSp 0
 pushFromPWp W116
 gosub 4, L1168
 pushFromFSp 0
 pushFromPWp W116
 syscall 1, 7 ; trap_obj_set_act_table (2 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3774 ; ___ai leave (L3774)
 pushImm 196908
 pushImm L1208
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3704 ; ___ai freeze (L3704)
 pushImm L100
 pushImm L1290
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3708 ; ___ai event (L3708)
 pushImm 196908
 pushImm L1307
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm L1312
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3711 ; ___ai mode_revenge (L3711)
 pushImm L100
 pushImm L1327
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3722 ; ___ai mode_battle_boss (L3722)
 pushImm L100
 pushImm L1435
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3731 ; ___ai mode_revenge_boss (L3731)
 pushImm L100
 pushImm L1501
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3740 ; ___ai revenge (L3740)
 pushImm 65836
 pushImm L1567
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3744 ; ___ai test_light (L3744)
 pushImm L100
 pushImm L1626
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3750 ; ___ai test_light_off (L3750)
 pushImm L100
 pushImm L1659
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3693 ; ___ai move_wall (L3693)
 pushImm 65636
 pushImm L1669
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3831 ; ___ai idle (L3831)
 pushImm 65636
 pushImm L2423
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3788 ; ___ai idle_time (L3788)
 pushImm 65636
 pushImm L2455
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3688 ; ___ai footwork (L3688)
 pushImm 65636
 pushImm L2469
 pushImm L2747
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3718 ; ___ai appear (L3718)
 pushImm 65636
 pushImm L2754
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm L3290
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3806 ; ___ai mode_battle (L3806)
 pushImm 65636
 pushImm L3305
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromPWp W116
 pushFromPAi L3803 ; ___ai dead (L3803)
 pushImm 196908
 pushImm L3402
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 pushImm 0
 syscall 1, 6 ; trap_act_table_add (12 in, 0 out)
 pushFromFSp 0
 pushImmf 8
 gosub 4, L3618
 pushFromFSp 0
 pushImm 98
 pushImm 0
 syscall 2, 9 ; trap_btlobj_set_sheet (3 in, 0 out)
 pushFromFSp 0
 pushImm 5
 syscall 1, 211 ; trap_obj_pattern_enable (2 in, 0 out)
 pushFromFSp 0
 pushImm 11
 syscall 1, 211 ; trap_obj_pattern_enable (2 in, 0 out)
 pushFromFSp 0
 pushImm 2
 syscall 1, 211 ; trap_obj_pattern_enable (2 in, 0 out)
 pushFromFSp 0
 pushImm 24
 add 
 pushImm 0
 memcpy 0
 pushFromPWp W4224
 pushImmf 184
 pushImmf -370
 pushImmf 285
 pushImmf 1
 gosub 4, L156
 pushFromPWp W4240
 pushImmf -570
 pushImmf -110
 pushImmf -765
 pushImmf 1
 gosub 4, L156
 pushFromPWp W4256
 pushImmf -960
 pushImmf -360
 pushImmf 950
 pushImmf 1
 gosub 4, L156
 pushFromPWp W4272
 pushImmf 1365
 pushImmf -120
 pushImmf 280
 pushImmf 1
 gosub 4, L156
 pushFromPWp W4288
 pushImmf 1090
 pushImmf -90
 pushImmf -560
 pushImmf 1
 gosub 4, L156
 pushFromPWp W4304
 pushImmf 370
 pushImmf -140
 pushImmf 1440
 pushImmf 1
 gosub 4, L156
 pushFromPWp W4320
 pushImmf -340
 pushImmf -270
 pushImmf 1520
 pushImmf 1
 gosub 4, L156
 pushFromPWp W4336
 pushImmf 440
 pushImmf -460
 pushImmf -1190
 pushImmf 1
 gosub 4, L156
 pushFromPWp W4352
 pushImmf -80
 pushImmf -670
 pushImmf -1310
 pushImmf 1
 gosub 4, L156
 pushFromPWp W4368
 pushImmf -1240
 pushImmf -570
 pushImmf -160
 pushImmf 1
 gosub 4, L156
 pushFromPWp W4384
 pushImmf 920
 pushImmf -390
 pushImmf 1020
 pushImmf 1
 gosub 4, L156
 pushImmf 0.872665
 popToWp W4400
 pushImmf 2.321288
 popToWp W4404
 pushImmf -1.884956
 popToWp W4408
 pushImmf -0.802851
 popToWp W4412
 pushImmf -2.617994
 popToWp W4416
 pushImmf 2.792527
 popToWp W4420
 pushImmf -0.174533
 popToWp W4424
 pushImmf 0
 popToWp W4428
 pushImmf 1.448623
 popToWp W4432
 pushImmf -2.949606
 popToWp W4436
 pushImm L100
 popToWp W4440
 gosub 4, L3632
 pushFromPSpVal 108
 gosub 4, L3672
 pushImmf 0.3
 syscall 1, 250 ; trap_status_set_lockon_ratio (1 in, 0 out)
 ret 
L1081:
 popToSp 4
 popToSp 0
 pushFromFSp 0
 pushFromFSp 4
 gosub 4, L1116
 pushImm -1
 popToSpVal 28
 pushImmf 30
 popToSpVal 32
 pushFromPSpVal 72
 gosub 4, L1125
 pushImmf 2000
 popToSpVal 56
 pushImmf 1000
 popToSpVal 60
 ret 
L1116:
 popToSp 4
 popToSp 0
 pushFromFSp 4
 popToSpVal 4
 ret 
L1125:
 popToSp 0
 pushImmf 200
 popToSpVal 0
 pushImmf 200
 popToSpVal 4
 pushImmf 0
 popToSpVal 8
 pushImm 2
 popToSpVal 12
 pushImmf 8
 popToSpVal 16
 pushImm 3
 popToSpVal 20
 pushImmf 8
 popToSpVal 24
 pushImm 0
 popToSpVal 32
 ret 
L1168:
 popToSp 4
 popToSp 0
 pushFromFSp 0
 pushFromFSp 4
 gosub 4, L1199
 pushFromFSp 0
 pushImm 16
 add 
 pushImm 0
 memcpy 0
 pushFromFSp 0
 pushImm 20
 add 
 pushImm 0
 memcpy 0
 ret 
L1199:
 popToSp 4
 popToSp 0
 pushFromFSp 4
 syscall 1, 5 ; trap_act_table_init (1 in, 0 out)
 ret 
D1208:
L1208: ;___label for action pushFromPAi L3774 ; ___ai leave
 popToSp 0
 pushFromFSp 0
 fetchValue 4
 pushImm 45
 pushImmf 0
 syscall 1, 11 ; trap_sysobj_motion_start (3 in, 0 out)
 pushFromFSp 0
 pushImm 1
 pushImm 1
 pushImm 0
 syscall 1, 87 ; trap_obj_effect_start_bind (4 in, 1 out)
 drop 
 pushFromFSp 0
 pushImm 3
 syscall 1, 70 ; trap_obj_set_flag (2 in, 0 out)
 pushFromFSp 0
 fetchValue 4
 pushImmf 30
 syscall 1, 19 ; trap_sysobj_fadeout (2 in, 0 out)
 pushImmf 30
 gosub 4, L1264
 pushFromFSp 0
 syscall 1, 28 ; trap_obj_leave (1 in, 0 out)
 gosub 4, L1286
 ret 
L1264:
 popToSp 0
L1266:
 pushFromFSp 0
 pushImmf 0
 subf 
 supzf 
 jz L1285
 pushFromFSp 0
 syscall 0, 3 ; trap_frametime (0 in, 1 out)
 subf 
 popToSp 0
 halt 
 jmp L1266
L1285:
 ret 
L1286:
 halt 
 jmp L1286
L1289:
 ret 
L1290: ;___label for action pushFromPAi L3704 ; ___ai freeze
 popToSp 0
 pushFromFSp 0
 fetchValue 4
 pushImm 0
 pushImmf 0
 syscall 1, 11 ; trap_sysobj_motion_start (3 in, 0 out)
 gosub 4, L1286
 ret 
L1307: ;___label for action pushFromPAi L3708 ; ___ai event
 popToSp 0
 gosub 4, L1286
 ret 
L1312: ;___callback for action pushFromPAi L3708 ; ___ai event
 popToSp 0
 pushFromFSp 0
 fetchValue 4
 pushImm 0
 pushImmf 0
 syscall 1, 11 ; trap_sysobj_motion_start (3 in, 0 out)
 ret 
L1327: ;___label for action pushFromPAi L3711 ; ___ai mode_revenge
 popToSp 0
 pushFromFSp 0
 pushImm 1
 gosub 4, L1369
 pushFromFSp 0
 gosub 4, L1384
 pushFromFSp 0
 fetchValue 52
 subf 
 infzf 
 jz L1356
 pushFromFSp 0
 pushFromPAi L3777 ; ___ai rvg_short (L3777)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 jmp L1362
L1356:
 pushFromFSp 0
 pushFromPAi L3793 ; ___ai rvg_long (L3793)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
L1362:
 pushFromFSp 0
 pushFromPAi L3806 ; ___ai mode_battle (L3806)
 syscall 1, 9 ; trap_obj_act_push (2 in, 0 out)
 ret 
L1369:
 popToSp 4
 popToSp 0
 pushFromFSp 0
 syscall 2, 23 ; trap_btlobj_target (1 in, 1 out)
 pushFromFSp 0
 pushFromFSp 4
 syscall 1, 121 ; trap_target_search (3 in, 0 out)
 ret 
L1384:
 popToSp 0
 pushFromFSp 0
 syscall 2, 23 ; trap_btlobj_target (1 in, 1 out)
 syscall 1, 120 ; trap_target_pos (1 in, 1 out)
 memcpyToSp 16, 48
 pushFromPSp 48
 pushFromFSp 0
 syscall 1, 147 ; trap_obj_pos (1 in, 1 out)
 memcpyToSp 16, 64
 pushFromPSp 64
 syscall 0, 5 ; trap_vector_sub (2 in, 1 out)
 memcpyToSp 16, 80
 pushFromPSp 80
 memcpyToSp 16, 16
 pushFromPSp 16
 pushImm 4
 add 
 pushImmf 0
 memcpy 0
 pushFromPSp 16
 syscall 0, 7 ; trap_vector_normalize (1 in, 1 out)
 popToSp 32
 pushFromFSp 32
 ret 
L1435: ;___label for action pushFromPAi L3722 ; ___ai mode_battle_boss
 popToSp 0
 pushFromFSp 0
 pushImm 2
 gosub 4, L1369
 pushFromFSp 0
 fetchValue 24
 dup 
 pushImm 0
 sub 
 jz L1457
 jmp L1465
L1457:
 pushFromFSp 0
 pushFromPAi L3812 ; ___ai btl_normal (L3812)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 jmp L1499
L1465:
 dup 
 pushImm 1
 sub 
 jz L1474
 jmp L1482
L1474:
 pushFromFSp 0
 pushFromPAi L3818 ; ___ai btl_hard (L3818)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 jmp L1499
L1482:
 dup 
 pushImm 2
 sub 
 jz L1491
 jmp L1499
L1491:
 pushFromFSp 0
 pushFromPAi L3823 ; ___ai btl_super_hard (L3823)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 jmp L1499
L1499:
 drop 
 ret 
L1501: ;___label for action pushFromPAi L3731 ; ___ai mode_revenge_boss
 popToSp 0
 pushFromFSp 0
 pushImm 2
 gosub 4, L1369
 pushFromFSp 0
 fetchValue 24
 dup 
 pushImm 0
 sub 
 jz L1523
 jmp L1531
L1523:
 pushFromFSp 0
 pushFromPAi L3834 ; ___ai rvg_normal (L3834)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 jmp L1565
L1531:
 dup 
 pushImm 1
 sub 
 jz L1540
 jmp L1548
L1540:
 pushFromFSp 0
 pushFromPAi L3846 ; ___ai rvg_hard (L3846)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 jmp L1565
L1548:
 dup 
 pushImm 2
 sub 
 jz L1557
 jmp L1565
L1557:
 pushFromFSp 0
 pushFromPAi L3859 ; ___ai rvg_super_hard (L3859)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 jmp L1565
L1565:
 drop 
 ret 
L1567: ;___label for action pushFromPAi L3740 ; ___ai revenge
 popToSp 0
 pushFromFSp 0
 fetchValue 24
 dup 
 pushImm 0
 sub 
 jz L1582
 jmp L1590
L1582:
 pushFromFSp 0
 pushFromPAi L3867 ; ___ai rst_normal (L3867)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 jmp L1624
L1590:
 dup 
 pushImm 1
 sub 
 jz L1599
 jmp L1607
L1599:
 pushFromFSp 0
 pushFromPAi L3873 ; ___ai rst_hard (L3873)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 jmp L1624
L1607:
 dup 
 pushImm 2
 sub 
 jz L1616
 jmp L1624
L1616:
 pushFromFSp 0
 pushFromPAi L3680 ; ___ai rst_super_hard (L3680)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 jmp L1624
L1624:
 drop 
 ret 
L1626: ;___label for action pushFromPAi L3744 ; ___ai test_light
 popToSp 0
 pushImm 0
 syscall 1, 181 ; trap_light_create (1 in, 1 out)
 popToWp W4476
 pushFromFWp W4476
 pushImm 1
 syscall 1, 182 ; trap_light_set_flag (2 in, 0 out)
 pushFromFWp W4476
 pushImm 16
 pushImm 16
 pushImm 16
 pushImmf 60
 syscall 1, 183 ; trap_light_set_color (5 in, 0 out)
 ret 
L1659: ;___label for action pushFromPAi L3750 ; ___ai test_light_off
 popToSp 0
 pushFromFWp W4476
 pushImmf 10
 syscall 1, 184 ; trap_light_fadeout (2 in, 0 out)
 ret 
L1669: ;___label for action pushFromPAi L3693 ; ___ai move_wall
 popToSp 0
 pushImmf 0.1
 pushImmf 3
 syscall 0, 18 ; trap_random_range (2 in, 1 out)
 popToSp 4
 pushFromFSp 0
 fetchValue 24
 pushImm 1
 sub 
 eqz 
 jz L1704
 pushImmf 0.1
 pushImmf 7
 syscall 0, 18 ; trap_random_range (2 in, 1 out)
 popToSp 4
 jmp L1704
L1704:
 pushFromFSp 4
 pushImmf 0
 subf 
 supzf 
 jz L1764
 pushFromFSp 4
 pushImmf 1
 subf 
 infoezf 
 jz L1731
 pushFromFSp 0
 pushImm 6
 gosub 4, L1765
 jmp L1738
L1731:
 pushFromFSp 0
 pushImm 10
 gosub 4, L1765
L1738:
 pushFromFSp 0
 gosub 4, L2000
 pushFromFSp 0
 pushImmf 10
 gosub 4, L2288
 pushFromFSp 0
 gosub 4, L2328
 pushFromFSp 4
 pushImmf 1
 subf 
 popToSp 4
 halt 
 jmp L1704
L1764:
 ret 
L1765:
 popToSp 4
 popToSp 0
 pushFromFSp 4
 syscall 0, 16 ; trap_random_get (1 in, 1 out)
 popToSp 8
L1775:
 pushFromFSp 8
 pushFromFWp W4440
 sub 
 eqz 
 jz L1792
 pushFromFSp 4
 syscall 0, 16 ; trap_random_get (1 in, 1 out)
 popToSp 8
 halt 
 jmp L1775
L1792:
 pushFromFSp 8
 popToWp W4440
 pushFromFSp 8
 dup 
 pushImm 0
 sub 
 jz L1807
 jmp L1818
L1807:
 pushFromPWp W4240
 memcpyToWp 16, W4448
 pushFromFWp W4400
 popToWp W4464
 jmp L1998
L1818:
 dup 
 pushImm 1
 sub 
 jz L1827
 jmp L1838
L1827:
 pushFromPWp W4256
 memcpyToWp 16, W4448
 pushFromFWp W4404
 popToWp W4464
 jmp L1998
L1838:
 dup 
 pushImm 2
 sub 
 jz L1847
 jmp L1858
L1847:
 pushFromPWp W4272
 memcpyToWp 16, W4448
 pushFromFWp W4408
 popToWp W4464
 jmp L1998
L1858:
 dup 
 pushImm 3
 sub 
 jz L1867
 jmp L1878
L1867:
 pushFromPWp W4288
 memcpyToWp 16, W4448
 pushFromFWp W4412
 popToWp W4464
 jmp L1998
L1878:
 dup 
 pushImm 4
 sub 
 jz L1887
 jmp L1898
L1887:
 pushFromPWp W4304
 memcpyToWp 16, W4448
 pushFromFWp W4416
 popToWp W4464
 jmp L1998
L1898:
 dup 
 pushImm 5
 sub 
 jz L1907
 jmp L1918
L1907:
 pushFromPWp W4320
 memcpyToWp 16, W4448
 pushFromFWp W4420
 popToWp W4464
 jmp L1998
L1918:
 dup 
 pushImm 6
 sub 
 jz L1927
 jmp L1938
L1927:
 pushFromPWp W4336
 memcpyToWp 16, W4448
 pushFromFWp W4424
 popToWp W4464
 jmp L1998
L1938:
 dup 
 pushImm 7
 sub 
 jz L1947
 jmp L1958
L1947:
 pushFromPWp W4352
 memcpyToWp 16, W4448
 pushFromFWp W4428
 popToWp W4464
 jmp L1998
L1958:
 dup 
 pushImm 8
 sub 
 jz L1967
 jmp L1978
L1967:
 pushFromPWp W4368
 memcpyToWp 16, W4448
 pushFromFWp W4432
 popToWp W4464
 jmp L1998
L1978:
 dup 
 pushImm 9
 sub 
 jz L1987
 jmp L1998
L1987:
 pushFromPWp W4384
 memcpyToWp 16, W4448
 pushFromFWp W4436
 popToWp W4464
 jmp L1998
L1998:
 drop 
 ret 
L2000:
 popToSp 0
 pushImmf 30
 popToSp 48
 pushFromFSp 0
 pushImm 0
 syscall 1, 70 ; trap_obj_set_flag (2 in, 0 out)
 pushFromFSp 0
 pushImm 5
 syscall 1, 70 ; trap_obj_set_flag (2 in, 0 out)
 pushFromFSp 0
 pushImm 3
 syscall 1, 70 ; trap_obj_set_flag (2 in, 0 out)
 pushFromFSp 0
 syscall 1, 147 ; trap_obj_pos (1 in, 1 out)
 memcpyToSp 16, 64
 pushFromPSp 64
 pushFromPWp W4224
 syscall 0, 5 ; trap_vector_sub (2 in, 1 out)
 memcpyToSp 16, 80
 pushFromPSp 80
 memcpyToSp 16, 32
 pushFromPSp 32
 pushImm 4
 add 
 pushImmf 0
 memcpy 0
 pushFromPWp W4448
 pushFromPWp W4224
 syscall 0, 5 ; trap_vector_sub (2 in, 1 out)
 memcpyToSp 16, 64
 pushFromPSp 64
 memcpyToSp 16, 16
 pushFromPSp 16
 pushImm 4
 add 
 pushImmf 0
 memcpy 0
 pushFromPSp 32
 pushFromPSp 16
 syscall 0, 82 ; trap_vector_outer_product (2 in, 1 out)
 memcpyToSp 16, 64
 pushFromPSp 64
 memcpyToSp 16, 32
 pushFromFSp 0
 gosub 16, L2197
 pushFromPSp 32
 fetchValue 4
 pushImmf 0
 subf 
 infzf 
 jz L2126
 pushFromFSp 0
 fetchValue 4
 pushImm 153
 pushImmf 0
 syscall 1, 12 ; trap_sysobj_motion_change (3 in, 0 out)
 jmp L2138
L2126:
 pushFromFSp 0
 fetchValue 4
 pushImm 152
 pushImmf 0
 syscall 1, 12 ; trap_sysobj_motion_change (3 in, 0 out)
L2138:
 pushFromFSp 0
 pushImm 1
 syscall 1, 151 ; trap_obj_motion_check_trigger (2 in, 1 out)
 eqz 
 jz L2151
 halt 
 jmp L2138
L2151:
 pushFromFSp 0
 gosub 16, L2245
 pushFromFSp 0
 fetchValue 4
 pushImmf 5
 syscall 1, 19 ; trap_sysobj_fadeout (2 in, 0 out)
 pushFromFSp 0
 fetchValue 4
 gosub 16, L2275
 pushFromFSp 0
 pushImm 1
 syscall 1, 70 ; trap_obj_set_flag (2 in, 0 out)
L2177:
 pushFromFSp 48
 pushImmf 0
 subf 
 supzf 
 jz L2196
 pushFromFSp 48
 syscall 0, 3 ; trap_frametime (0 in, 1 out)
 subf 
 popToSp 48
 halt 
 jmp L2177
L2196:
 ret 
L2197:
 popToSp 0
 pushFromPSpVal 108
 pushFromFSp 0
 pushImm 5
 pushImm 0
 gosub 4, L2212
 ret 
L2212:
 popToSp 4
 popToSp 8
 popToSp 12
 popToSp 0
 pushFromFSpVal 0
 pushImm 0
 sub 
 eqz 
 jz L2244
 pushFromFSp 12
 pushFromFSp 8
 pushImm 0
 pushFromFSp 4
 syscall 1, 87 ; trap_obj_effect_start_bind (4 in, 1 out)
 popToSpVal 0
 jmp L2244
L2244:
 ret 
L2245:
 popToSp 0
 pushFromPSpVal 108
 gosub 4, L2252
 ret 
L2252:
 popToSp 0
 pushFromFSpVal 0
 pushImm 0
 sub 
 neqz 
 jz L2274
 pushFromFSpVal 0
 syscall 0, 85 ; trap_effect_loop_end_kill (1 in, 0 out)
 pushImm 0
 popToSpVal 0
 jmp L2274
L2274:
 ret 
L2275:
 popToSp 0
L2277:
 pushFromFSp 0
 syscall 1, 14 ; trap_sysobj_motion_is_end (1 in, 1 out)
 eqz 
 jz L2287
 halt 
 jmp L2277
L2287:
 ret 
L2288:
 popToSp 4
 popToSp 0
 pushFromFSp 4
 popToSp 8
L2296:
 pushFromFSp 8
 pushImmf 0
 subf 
 supzf 
 jz L2327
 pushFromFSp 0
 fetchValue 4
 pushImm 0
 pushImmf 0
 syscall 1, 12 ; trap_sysobj_motion_change (3 in, 0 out)
 pushFromFSp 8
 syscall 0, 3 ; trap_frametime (0 in, 1 out)
 subf 
 popToSp 8
 halt 
 jmp L2296
L2327:
 ret 
L2328:
 popToSp 0
 pushFromFSp 0
 pushFromPWp W4448
 pushFromFSp 0
 pushFromFWp W4464
 syscall 1, 1 ; trap_obj_set_rot (2 in, 0 out)
 pushFromFSp 0
 gosub 4, L2197
 pushFromFSp 0
 fetchValue 4
 pushImm 154
 pushImmf 0
 syscall 1, 12 ; trap_sysobj_motion_change (3 in, 0 out)
 pushFromFSp 0
 fetchValue 4
 pushImmf 5
 syscall 1, 20 ; trap_sysobj_fadein (2 in, 0 out)
 pushImmf 5
 gosub 4, L1264
 pushFromFSp 0
 pushImm 0
 syscall 1, 71 ; trap_obj_reset_flag (2 in, 0 out)
 pushFromFSp 0
 pushImm 5
 syscall 1, 71 ; trap_obj_reset_flag (2 in, 0 out)
 pushFromFSp 0
 pushImm 3
 syscall 1, 71 ; trap_obj_reset_flag (2 in, 0 out)
 pushFromFSp 0
 pushImm 1
 syscall 1, 71 ; trap_obj_reset_flag (2 in, 0 out)
 pushFromFSp 0
 fetchValue 4
 gosub 4, L2275
 pushFromFSp 0
 fetchValue 4
 pushImm 0
 pushImmf 0
 syscall 1, 12 ; trap_sysobj_motion_change (3 in, 0 out)
 pushFromFSp 0
 gosub 4, L2245
 ret 
L2423: ;___label for action pushFromPAi L3831 ; ___ai idle
 popToSp 0
 pushImmf 300
 popToSp 4
 pushFromFSp 0
 fetchValue 24
 pushImm 1
 sub 
 eqz 
 jz L2448
 pushImmf 240
 popToSp 4
 jmp L2448
L2448:
 pushFromFSp 0
 pushFromFSp 4
 gosub 4, L2288
 ret 
L2455: ;___label for action pushFromPAi L3788 ; ___ai idle_time
 popToSp 0
 pushImmf 10
 popToSp 4
 pushFromFSp 0
 pushFromFSp 4
 gosub 4, L2288
 ret 
L2469: ;___label for action pushFromPAi L3688 ; ___ai footwork
 popToSp 0
 pushFromFSp 0
 gosub 4, L2197
 pushFromFSp 0
 pushImm 47
 pushImm 3
 pushImm -1
 gosub 4, L2489
 ret 
L2489:
 popToSp 4
 popToSp 8
 popToSp 12
 popToSp 0
 pushFromFSp 0
 gosub 8, L2586
 pushFromFSp 8
 pushImm 3
 sub 
 neqz 
 jz L2516
 pushFromFSp 0
 gosub 8, L2615
 jmp L2516
L2516:
 pushFromFSp 0
 fetchValue 4
 pushFromFSp 12
 pushFromFSp 0
 pushFromFSp 12
 gosub 8, L2654
 syscall 1, 12 ; trap_sysobj_motion_change (3 in, 0 out)
L2530:
 pushFromFSp 0
 fetchValue 4
 syscall 1, 14 ; trap_sysobj_motion_is_end (1 in, 1 out)
 eqz 
 jz L2563
 halt 
 pushFromFSp 0
 pushFromFSp 12
 gosub 8, L2716
 jz L2552
 jmp L2563
L2550:
 jmp L2552
L2552:
 pushFromFSp 0
 syscall 2, 5 ; trap_enemy_is_no_control (1 in, 1 out)
 jz L2561
 halt 
 jmp L2552
L2561:
 jmp L2530
L2563:
 pushFromFSp 4
 pushImm 0
 sub 
 msbi 
 jz L2585
 pushFromFSp 0
 fetchValue 4
 pushFromFSp 4
 pushImmf 0
 syscall 1, 12 ; trap_sysobj_motion_change (3 in, 0 out)
 jmp L2585
L2585:
 ret 
L2586:
 popToSp 0
L2588:
 pushFromFSp 0
 syscall 1, 124 ; trap_obj_is_entry_fly (1 in, 1 out)
 eqz 
 dup 
 jz L2601
 pushFromFSp 0
 syscall 1, 60 ; trap_obj_is_air (1 in, 1 out)
 eqzv 
L2601:
 dup 
 jnz L2609
 pushFromFSp 0
 syscall 2, 5 ; trap_enemy_is_no_control (1 in, 1 out)
 neqzv 
L2609:
 jz L2614
 halt 
 jmp L2588
L2614:
 ret 
L2615:
 popToSp 0
 pushFromFSp 0
 syscall 2, 23 ; trap_btlobj_target (1 in, 1 out)
 syscall 1, 120 ; trap_target_pos (1 in, 1 out)
 memcpyToSp 16, 32
 pushFromPSp 32
 pushFromFSp 0
 syscall 1, 147 ; trap_obj_pos (1 in, 1 out)
 memcpyToSp 16, 48
 pushFromPSp 48
 syscall 0, 5 ; trap_vector_sub (2 in, 1 out)
 memcpyToSp 16, 64
 pushFromPSp 64
 memcpyToSp 16, 16
 pushFromFSp 0
 pushFromPSp 16
 syscall 1, 4 ; trap_obj_wish_dir (2 in, 0 out)
 ret 
L2654:
 popToSp 4
 popToSp 0
 pushFromFSp 0
 fetchValue 36
 popToSp 8
 pushFromFSp 4
 dup 
 pushImm 0
 sub 
 jz L2675
 jmp L2712
L2675:
 pushFromFSp 0
 fetchValue 4
 syscall 1, 15 ; trap_sysobj_motion_id (1 in, 1 out)
 pushImm 2
 sub 
 neqz 
 dup 
 jz L2701
 pushFromFSp 0
 fetchValue 4
 syscall 1, 15 ; trap_sysobj_motion_id (1 in, 1 out)
 pushImm 1
 sub 
 neqz 
 eqzv 
L2701:
 jz L2710
 pushImmf 0
 popToSp 8
 jmp L2710
L2710:
 jmp L2712
L2712:
 drop 
 pushFromFSp 8
 ret 
L2716:
 popToSp 4
 popToSp 0
 pushImm 0
 popToSp 8
 pushFromFSp 0
 fetchValue 4
 syscall 1, 15 ; trap_sysobj_motion_id (1 in, 1 out)
 pushFromFSp 4
 sub 
 neqz 
 jz L2744
 pushImm 1
 popToSp 8
 jmp L2744
L2744:
 pushFromFSp 8
 ret 
L2747: ;___callback for action pushFromPAi L3688 ; ___ai footwork
 popToSp 0
 pushFromFSp 0
 gosub 4, L2245
 ret 
L2754: ;___label for action pushFromPAi L3718 ; ___ai appear
 popToSp 0
 pushFromFSp 0
 pushFromPWp W4224
 syscall 1, 148 ; trap_obj_set_pos (2 in, 0 out)
 pushFromFSp 0
 fetchValue 4
 pushImm 44
 pushImmf 0
 syscall 1, 11 ; trap_sysobj_motion_start (3 in, 0 out)
 pushImm 232
 popToSp 4
 pushFromFSp 0
 fetchValue 4
 pushFromFSpVal 32
 syscall 1, 20 ; trap_sysobj_fadein (2 in, 0 out)
L2787:
 pushFromFSp 0
 fetchValue 4
 syscall 1, 14 ; trap_sysobj_motion_is_end (1 in, 1 out)
 eqz 
 dup 
 jz L2809
 pushFromFSp 0
 fetchValue 4
 syscall 1, 15 ; trap_sysobj_motion_id (1 in, 1 out)
 pushImm 44
 sub 
 eqz 
 eqzv 
L2809:
 jz L2818
 pushFromFSp 0
 gosub 8, L2615
 halt 
 jmp L2787
L2818:
 pushFromFSp 0
 fetchValue 4
 pushFromFSp 4
 pushImmf 0
 syscall 1, 12 ; trap_sysobj_motion_change (3 in, 0 out)
 pushImmf 80
 popToSp 8
L2834:
 pushFromFSp 8
 pushImmf 0
 subf 
 supzf 
 jz L2882
 pushFromFSp 8
 syscall 0, 3 ; trap_frametime (0 in, 1 out)
 subf 
 popToSp 8
 pushFromFSp 0
 pushImm 1
 syscall 1, 151 ; trap_obj_motion_check_trigger (2 in, 1 out)
 dup 
 jz L2871
 pushFromFSp 0
 fetchValue 4
 syscall 1, 15 ; trap_sysobj_motion_id (1 in, 1 out)
 pushFromFSp 4
 sub 
 eqz 
 eqzv 
L2871:
 jz L2879
 pushFromFSp 0
 gosub 8, L3183
 jmp L2879
L2879:
 halt 
 jmp L2834
L2882:
 pushFromFSp 0
 gosub 8, L3044
 pushImmf 60
 popToSp 8
L2891:
 pushFromFSp 8
 pushImmf 0
 subf 
 supzf 
 jz L2939
 pushFromFSp 8
 syscall 0, 3 ; trap_frametime (0 in, 1 out)
 subf 
 popToSp 8
 pushFromFSp 0
 pushImm 1
 syscall 1, 151 ; trap_obj_motion_check_trigger (2 in, 1 out)
 dup 
 jz L2928
 pushFromFSp 0
 fetchValue 4
 syscall 1, 15 ; trap_sysobj_motion_id (1 in, 1 out)
 pushFromFSp 4
 sub 
 eqz 
 eqzv 
L2928:
 jz L2936
 pushFromFSp 0
 gosub 8, L3183
 jmp L2936
L2936:
 halt 
 jmp L2891
L2939:
 pushFromFSp 0
 gosub 8, L3061
 pushFromFSp 0
 gosub 8, L3150
 pushImmf 40
 popToSp 8
L2952:
 pushFromFSp 8
 pushImmf 0
 subf 
 supzf 
 jz L3000
 pushFromFSp 8
 syscall 0, 3 ; trap_frametime (0 in, 1 out)
 subf 
 popToSp 8
 pushFromFSp 0
 pushImm 1
 syscall 1, 151 ; trap_obj_motion_check_trigger (2 in, 1 out)
 dup 
 jz L2989
 pushFromFSp 0
 fetchValue 4
 syscall 1, 15 ; trap_sysobj_motion_id (1 in, 1 out)
 pushFromFSp 4
 sub 
 eqz 
 eqzv 
L2989:
 jz L2997
 pushFromFSp 0
 gosub 8, L3183
 jmp L2997
L2997:
 halt 
 jmp L2952
L3000:
 pushFromFSp 0
 gosub 8, L3183
 pushFromFSp 0
 gosub 8, L3239
 pushImm 1
 gosub 8, L3262
 pushFromFWp W4476
 pushImmf 40
 syscall 1, 184 ; trap_light_fadeout (2 in, 0 out)
 pushImmf 40
 gosub 8, L1264
 pushFromFSp 0
 pushImmf 60
 gosub 8, L2288
 pushFromFSp 0
 pushImm 6
 gosub 8, L1765
 pushFromFSp 0
 gosub 8, L2328
 ret 
L3044:
 popToSp 0
 pushFromFSp 0
 pushImm 4
 pushImm 1
 pushImm 0
 syscall 1, 21 ; trap_obj_effect_start (4 in, 1 out)
 drop 
 ret 
L3061:
 popToSp 0
 pushFromFSp 0
 gosub 4, L3072
 pushFromFSp 0
 gosub 4, L3105
 ret 
L3072:
 popToSp 0
 pushImm 1
 syscall 1, 181 ; trap_light_create (1 in, 1 out)
 popToWp W4472
 pushFromFWp W4472
 pushImm 1
 syscall 1, 182 ; trap_light_set_flag (2 in, 0 out)
 pushFromFWp W4472
 pushImm 0
 pushImm 0
 pushImm 0
 pushImmf 40
 syscall 1, 183 ; trap_light_set_color (5 in, 0 out)
 ret 
L3105:
 popToSp 0
 pushImm 1
 syscall 1, 181 ; trap_light_create (1 in, 1 out)
 popToWp W4468
 pushFromFWp W4468
 pushImmf 0
 syscall 1, 259 ; trap_light_set_fog_min (2 in, 0 out)
 pushFromFWp W4468
 pushImmf 255
 syscall 1, 260 ; trap_light_set_fog_max (2 in, 0 out)
 pushFromFWp W4468
 pushImmf 700
 syscall 1, 257 ; trap_light_set_fog_near (2 in, 0 out)
 pushFromFWp W4468
 pushImmf 1000
 syscall 1, 258 ; trap_light_set_fog_far (2 in, 0 out)
 pushFromFWp W4468
 pushImmf 40
 syscall 1, 251 ; trap_light_fadein (2 in, 0 out)
 ret 
L3150:
 popToSp 0
 pushImm 0
 syscall 1, 181 ; trap_light_create (1 in, 1 out)
 popToWp W4476
 pushFromFWp W4476
 pushImm 1
 syscall 1, 182 ; trap_light_set_flag (2 in, 0 out)
 pushFromFWp W4476
 pushImm 0
 pushImm 0
 pushImm 0
 pushImmf 60
 syscall 1, 183 ; trap_light_set_color (5 in, 0 out)
 ret 
L3183:
 popToSp 0
 pushFromFSp 0
 pushImm 0
 syscall 1, 70 ; trap_obj_set_flag (2 in, 0 out)
 pushFromFSp 0
 pushImm 3
 syscall 1, 70 ; trap_obj_set_flag (2 in, 0 out)
 pushFromFSp 0
 pushImm 5
 syscall 1, 70 ; trap_obj_set_flag (2 in, 0 out)
 pushFromFSp 0
 pushImm 1
 syscall 1, 70 ; trap_obj_set_flag (2 in, 0 out)
 pushFromFSp 0
 gosub 4, L2245
 pushFromFSp 0
 fetchValue 4
 pushImmf 5
 syscall 1, 19 ; trap_sysobj_fadeout (2 in, 0 out)
 pushFromFSp 0
 syscall 1, 84 ; trap_obj_sheet (1 in, 1 out)
 pushImm 6
 pushImm L100
 syscall 1, 311 ; trap_sheet_set_element_rate (3 in, 0 out)
 ret 
L3239:
 popToSp 0
 pushImm 3
 syscall 1, 36 ; trap_bg_hide (1 in, 0 out)
 pushImm 5
 syscall 1, 36 ; trap_bg_hide (1 in, 0 out)
 pushImm 8
 syscall 1, 36 ; trap_bg_hide (1 in, 0 out)
 pushImm 6
 syscall 1, 37 ; trap_bg_show (1 in, 0 out)
 ret 
L3262:
 popToSp 0
 pushFromFWp W0
 pushImm 4
 add 
 pushFromFSp 0
 memcpy 0
 pushFromFWp W0
 fetchValue 4
 jz L3285
 pushFromPAi L3840 ; ___ai hless_exist (L3840)
 syscall 0, 2 ; trap_puts (1 in, 0 out)
 jmp L3289
L3285:
 pushFromPAi L3851 ; ___ai hless_not_exist (L3851)
 syscall 0, 2 ; trap_puts (1 in, 0 out)
L3289:
 ret 
L3290: ;___callback for action pushFromPAi L3718 ; ___ai appear
 popToSp 0
 pushFromFSp 0
 syscall 1, 84 ; trap_obj_sheet (1 in, 1 out)
 pushImm 6
 pushImm 0
 syscall 1, 311 ; trap_sheet_set_element_rate (3 in, 0 out)
 ret 
L3305: ;___label for action pushFromPAi L3806 ; ___ai mode_battle
 popToSp 0
 gosub 4, L3394
 jz L3325
 pushFromFSp 0
 pushFromPAi L3788 ; ___ai idle_time (L3788)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 pushFromFSp 0
 pushFromPAi L3688 ; ___ai footwork (L3688)
 syscall 1, 9 ; trap_obj_act_push (2 in, 0 out)
 jmp L3393
L3325:
 pushFromFSp 0
 fetchValue 24
 pushImm 0
 sub 
 eqz 
 jz L3380
 pushFromFSp 0
 pushFromPAi L3788 ; ___ai idle_time (L3788)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 pushFromFSp 0
 pushFromPAi L3693 ; ___ai move_wall (L3693)
 syscall 1, 9 ; trap_obj_act_push (2 in, 0 out)
 pushFromFSp 0
 pushFromPAi L3788 ; ___ai idle_time (L3788)
 syscall 1, 9 ; trap_obj_act_push (2 in, 0 out)
 pushFromFSp 0
 pushFromPAi L3688 ; ___ai footwork (L3688)
 syscall 1, 9 ; trap_obj_act_push (2 in, 0 out)
 pushFromFSp 0
 pushFromPAi L3788 ; ___ai idle_time (L3788)
 syscall 1, 9 ; trap_obj_act_push (2 in, 0 out)
 pushFromFSp 0
 pushFromPAi L3688 ; ___ai footwork (L3688)
 syscall 1, 9 ; trap_obj_act_push (2 in, 0 out)
 pushFromFSp 0
 pushFromPAi L3788 ; ___ai idle_time (L3788)
 syscall 1, 9 ; trap_obj_act_push (2 in, 0 out)
 jmp L3393
L3380:
 pushFromFSp 0
 fetchValue 24
 pushImm 1
 sub 
 eqz 
 jz L3393
 jmp L3393
L3393:
 ret 
L3394:
 gosub 4, L3399
 fetchValue 8
 ret 
L3399:
 pushFromFWp W0
 ret 
L3402: ;___label for action pushFromPAi L3803 ; ___ai dead
 popToSp 0
 gosub 12, L3394
 jz L3415
 pushImm 0
 gosub 12, L3566
 jmp L3415
L3415:
 pushFromFSp 0
 pushImmf 0
 pushImmf 0
 pushImmf 0
 gosub 12, L101
 pushFromFSp 0
 pushFromFWp W4464
 syscall 1, 1 ; trap_obj_set_rot (2 in, 0 out)
 pushImmf 24
 syscall 0, 32 ; func_screen_whitein (1 in, 0 out)
 pushImm 0
 gosub 12, L3262
 pushFromPSp 16
 pushImm 1015
 syscall 1, 114 ; trap_obj_search_by_entry (2 in, 0 out)
 pushFromPSp 16
 fetchValue 4
 syscall 1, 94 ; trap_sysobj_is_exist (1 in, 1 out)
 jz L3467
 pushFromPSp 16
 pushFromPAi L3698 ; ___ai hless_dead (L3698)
 syscall 1, 8 ; trap_obj_act_start (2 in, 0 out)
 jmp L3467
L3467:
 pushFromFSp 0
 gosub 12, L3578
 pushFromFSp 0
 gosub 12, L2245
 pushFromFSp 0
 gosub 12, L3595
 pushFromFSp 0
 fetchValue 4
 pushImm 191
 pushImmf 0
 syscall 1, 11 ; trap_sysobj_motion_start (3 in, 0 out)
 pushFromFSp 0
 pushImm 82
 syscall 1, 92 ; trap_obj_scatter_prize (2 in, 0 out)
 pushFromFSp 0
 pushImm 2
 pushImm 1
 pushImm 0
 syscall 1, 87 ; trap_obj_effect_start_bind (4 in, 1 out)
 popToSp 32
 pushFromFSp 32
 syscall 0, 79 ; trap_effect_add_dead_block (1 in, 0 out)
 pushFromFSp 0
 pushImm 3
 syscall 1, 70 ; trap_obj_set_flag (2 in, 0 out)
 pushFromFSp 0
 pushImm 6
 syscall 1, 70 ; trap_obj_set_flag (2 in, 0 out)
 pushFromFSpVal 32
 pushImmf 0.5
 mulf 
 gosub 12, L1264
 pushFromFSp 0
 fetchValue 4
 pushFromFSpVal 32
 pushImmf 0.5
 mulf 
 syscall 1, 19 ; trap_sysobj_fadeout (2 in, 0 out)
 pushFromFSpVal 32
 pushImmf 0.5
 mulf 
 gosub 12, L1264
 pushFromFSp 0
 syscall 1, 28 ; trap_obj_leave (1 in, 0 out)
 gosub 12, L1286
 ret 
L3566:
 popToSp 0
 pushFromFWp W0
 pushImm 8
 add 
 pushFromFSp 0
 memcpy 0
 ret 
L3578:
 popToSp 0
 pushFromFWp W4468
 pushImmf 10
 syscall 1, 184 ; trap_light_fadeout (2 in, 0 out)
 pushFromFWp W4472
 pushImmf 10
 syscall 1, 184 ; trap_light_fadeout (2 in, 0 out)
 ret 
L3595:
 popToSp 0
 pushImm 6
 syscall 1, 36 ; trap_bg_hide (1 in, 0 out)
 pushImm 3
 syscall 1, 37 ; trap_bg_show (1 in, 0 out)
 pushImm 5
 syscall 1, 37 ; trap_bg_show (1 in, 0 out)
 pushImm 8
 syscall 1, 37 ; trap_bg_show (1 in, 0 out)
 ret 
L3618:
 popToSp 4
 popToSp 0
 pushFromFSp 0
 pushImm 36
 add 
 pushFromFSp 4
 memcpy 0
 ret 
L3632:
 pushImm 29
 pushImm 12
 syscall 2, 21 ; trap_teamwork_alloc (2 in, 1 out)
 popToWp W0
 pushFromFWp W0
 fetchValue 0
 eqz 
 jz L3671
 pushFromFWp W0
 pushImm 4
 add 
 pushImm 1
 memcpy 0
 pushFromFWp W0
 pushImm 8
 add 
 pushImm 1
 memcpy 0
 jmp L3671
L3671:
 ret 
L3672:
 popToSp 0
 pushImm 0
 popToSpVal 0
 ret 
D3680:
TXT3680:
L3680:
 db 'rst_super_hard',0,0
L3688:
TXT3688:
 db 'footwork',0,0
L3693:
TXT3693:
 db 'move_wall',0
TXT3698:
L3698:
 db 'hless_dead',0,0
L3704:
TXT3704:
 db 'freeze',0,0
L3708:
TXT3708:
 db 'event',0
L3711:
TXT3711:
 db 'mode_revenge',0,0
L3718:
TXT3718:
 db 'appear',0,0
L3722:
TXT3722:
 db 'mode_battle_boss',0,0
L3731:
TXT3731:
 db 'mode_revenge_boss',0
L3740:
TXT3740:
 db 'revenge',0
L3744:
TXT3744:
 db 'test_light',0,0
L3750:
TXT3750:
 db 'test_light_off',0,0
TXT3758:
 db 'btl_attack',0,0
TXT3764:
 db 'btl_short',0
TXT3769:
 db 'btl_long',0,0
L3774:
TXT3774:
 db 'leave',0
TXT3777:
L3777:
 db 'rvg_short',0
TXT3782:
 db 'jump start',0,0
L3788:
TXT3788:
 db 'idle_time',0
TXT3793:
L3793:
 db 'rvg_long',0,0
TXT3798:
 db 'jump end',0,0
L3803:
TXT3803:
 db 'dead',0,0
L3806:
TXT3806:
 db 'mode_battle',0
TXT3812:
L3812:
 db 'btl_normal',0,0
TXT3818:
L3818:
 db 'btl_hard',0,0
TXT3823:
L3823:
 db 'btl_super_hard',0,0
L3831:
TXT3831:
 db 'idle',0,0
TXT3834:
L3834:
 db 'rvg_normal',0,0
TXT3840:
L3840:
 db 'hless_exist',0
TXT3846:
L3846:
 db 'rvg_hard',0,0
TXT3851:
L3851:
 db 'hless_not_exist',0
TXT3859:
L3859:
 db 'rvg_super_hard',0,0
TXT3867:
L3867:
 db 'rst_normal',0,0
TXT3873:
L3873:
 db 'rst_hard',0,0

 section .bss
W0:
 resb 4
W4:
 resb 112
W116:
 resb 4108
W4224:
 resb 16
W4240:
 resb 16
W4256:
 resb 16
W4272:
 resb 16
W4288:
 resb 16
W4304:
 resb 16
W4320:
 resb 16
W4336:
 resb 16
W4352:
 resb 16
W4368:
 resb 16
W4384:
 resb 16
W4400:
 resb 4
W4404:
 resb 4
W4408:
 resb 4
W4412:
 resb 4
W4416:
 resb 4
W4420:
 resb 4
W4424:
 resb 4
W4428:
 resb 4
W4432:
 resb 4
W4436:
 resb 4
W4440:
 resb 8
W4448:
 resb 16
W4464:
 resb 4
W4468:
 resb 4
W4472:
 resb 4
W4476:
 resb 20
