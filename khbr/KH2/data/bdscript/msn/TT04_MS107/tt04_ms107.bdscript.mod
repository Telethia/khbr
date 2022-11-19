---
WorkSize: 32
StackSize: 512
TempSize: 512
Triggers:
- Key: 10
  Addr: TR10
- Key: 6
  Addr: TR6
- Key: 3
  Addr: TR3
Name: tt04_ms107

---
; codeLabels: 
; codeRevealer: -l 81 -l 334
 section .text
TR10:
 popToSp 0
 popToSp 4
 pushFromFSp 4
 dup 
 pushImm 123
 sub 
 jnz L37
 jmp L54
L37:
 pushImm 0
 pushImm 81
 pushImm 0
 pushImm 0
 syscall 0, 9 ; trap_thread_start (4 in, 1 out)
 drop 
 jmp L79
L54:
 dup 
 pushImm 39
 sub 
 jnz L63
 jmp L79
L63:
 syscall 1, 3 ; trap_sysobj_player (0 in, 1 out)
 memcpyToSp 16, 8
 pushFromPSp 8
 pushImm 1
 pushFromPWp W16
 syscall 1, 321 ; trap_player_lockon (3 in, 0 out)
 jmp L79
L79:
 drop 
 ret 
D81:
L81:
 pushImm 1094713344
 gosub 4, L99
 pushImm 16121
 syscall 1, 284 ; trap_tutorial_pause (1 in, 0 out)
 pushFromPWp W0
 pushImm -1
 gosub 4, L121
 ret 
L99:
 popToSp 0
L101:
 pushFromFSp 0
 pushImm 0
 subf 
 supzf 
 jnz L120
 pushFromFSp 0
 syscall 0, 3 ; trap_frametime (0 in, 1 out)
 subf 
 popToSp 0
 halt 
 jmp L101
L120:
 ret 
L121:
 popToSp 4
 popToSp 0
 syscall 4, 55 ; trap_mission_is_lock (0 in, 1 out)
 eqz 
 jnz L143
 pushImm 4
 popToSpVal 0
 pushFromFSp 4
 popToSpVal 4
 syscall 4, 54 ; trap_mission_lock (0 in, 0 out)
 jmp L143
L143:
 ret 
TR6:
 popToSp 0
 popToSp 4
 pushFromFSp 0
 gosub 4, L171
 memcpyToSp 16, 16
 pushFromPSp 16
 fetchValue 4
 syscall 1, 309 ; trap_sysobj_is_player (1 in, 1 out)
 jnz L170
 pushImm 0
 syscall 4, 6 ; trap_mission_increment_count (1 in, 0 out)
 jmp L170
L170:
 ret 
L171:
 popToSp 0
 pushFromPSp 16
 pushFromFSpVal 16
 gosub 12, L182
 pushFromPSp 16
 ret 
L182:
 popToSp 4
 popToSp 0
 pushFromFSp 4
 popToSpVal 4
 ret 
TR3:
 pushImm 16119
 syscall 1, 296 ; trap_tutorial_open (1 in, 0 out)
 halt 
 pushFromPWp W16
 pushImm {obj_id}
 syscall 1, 114 ; trap_obj_search_by_entry (2 in, 0 out)
 pushFromPWp W16
 fetchValue 4
 syscall 1, 94 ; trap_sysobj_is_exist (1 in, 1 out)
 syscall 0, 60 ; trap_assert (1 in, 0 out)
 pushFromPWp W16
 syscall 1, 84 ; trap_obj_sheet (1 in, 1 out)
 pushImm 1
 pushImm 0
 syscall 1, 231 ; trap_sheet_set_min_hp (3 in, 0 out)
 pushFromPWp W0
 gosub 4, L229
 ret 
L229:
 popToSp 0
 pushFromFSp 0
 gosub 4, L308
L235:
 pushFromFSp 0
 gosub 4, L321
 jnz L244
 halt 
 jmp L235
L244:
 pushFromFSpVal 0
 dup 
 pushImm 1
 sub 
 jnz L255
 jmp L261
L255:
 pushFromFSpVal 4
 syscall 4, 3 ; trap_mission_complete (1 in, 0 out)
 jmp L304
L261:
 dup 
 pushImm 2
 sub 
 jnz L270
 jmp L276
L270:
 pushFromFSpVal 4
 syscall 4, 16 ; trap_mission_dead_boss (1 in, 0 out)
 jmp L304
L276:
 dup 
 pushImm 3
 sub 
 jnz L285
 jmp L289
L285:
 syscall 4, 11 ; trap_mission_failed (0 in, 0 out)
 jmp L304
L289:
 dup 
 pushImm 4
 sub 
 jnz L298
 jmp L304
L298:
 pushFromFSpVal 4
 syscall 4, 22 ; trap_mission_exit (1 in, 0 out)
 jmp L304
L304:
 drop 
 gosub 4, L331
 ret 
L308:
 popToSp 0
 pushImm 0
 popToSpVal 0
 pushImm -1
 popToSpVal 4
 ret 
L321:
 popToSp 0
 pushFromFSpVal 0
 pushImm 0
 sub 
 eqz 
 ret 
L331:
 halt 
 jmp L331
D334:
L334:
 ret 
TXT335:
 db 'jump end',0,0
TXT340:
 db 'rst_super_hard',0,0
TXT348:
 db 'btl_normal',0,0
TXT354:
 db 'near',0,0
TXT357:
 db 'btl_hard',0,0
TXT362:
 db 'btl_super_hard',0,0
TXT370:
 db 'btl_attack',0,0
TXT376:
 db 'near_wait',0
TXT381:
 db 'btl_short',0
TXT386:
 db 'rvg_normal',0,0
TXT392:
 db 'leave',0
TXT395:
 db 'btl_long',0,0
TXT400:
 db 'rvg_hard',0,0
TXT405:
 db 'rvg_super_hard',0,0
TXT413:
 db 'rvg_short',0
TXT418:
 db 'rvg_long',0,0
TXT423:
 db 'rst_normal',0,0
TXT429:
 db 'jump start',0,0
TXT435:
 db 'mode_battle',0
TXT441:
 db 'rst_hard',0,0

 section .bss
W0:
 resb 16
W16:
 resb 16
