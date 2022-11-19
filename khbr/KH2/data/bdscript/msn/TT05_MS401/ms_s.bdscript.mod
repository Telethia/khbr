---
WorkSize: 32
StackSize: 512
TempSize: 512
Triggers:
- Key: 10
  Addr: TR10
- Key: 3
  Addr: TR3
Name: ms_struggle

---
; codeLabels: 
; codeRevealer: -l 304
 section .text
TR10:
 popToSp 0
 popToSp 4
 pushFromFSp 4
 dup 
 pushImm 90
 sub 
 jnz L33
 jmp L47
L33:
 pushImm 160
 pushImm 0
 syscall 1, 41 ; trap_signal_call (2 in, 0 out)
 pushFromPWp W0
 gosub 4, L175
 jmp L150
L47:
 dup 
 pushImm 123
 sub 
 jnz L56
 jmp L96
L56:
 pushFromFSp 0
 pushImm 0
 sub 
 eqz 
 jnz L82
 pushImm 159
 pushImm 0
 syscall 1, 41 ; trap_signal_call (2 in, 0 out)
 pushFromPWp W0
 pushImm -1
 gosub 4, L152
 jmp L94
L82:
 pushImm 160
 pushImm 0
 syscall 1, 41 ; trap_signal_call (2 in, 0 out)
 pushFromPWp W0
 gosub 4, L175
L94:
 jmp L150
L96:
 dup 
 pushImm 74
 sub 
 jnz L105
 jmp L150
L105:
 pushImm 0
 syscall 4, 29 ; trap_mission_get_count (1 in, 1 out)
 pushImm 1
 syscall 4, 29 ; trap_mission_get_count (1 in, 1 out)
 sub 
 ipos 
 jnz L136
 pushImm 159
 pushImm 0
 syscall 1, 41 ; trap_signal_call (2 in, 0 out)
 pushFromPWp W0
 pushImm -1
 gosub 4, L152
 jmp L148
L136:
 pushImm 160
 pushImm 0
 syscall 1, 41 ; trap_signal_call (2 in, 0 out)
 pushFromPWp W0
 gosub 4, L175
L148:
 jmp L150
L150:
 drop 
 ret 
L152:
 popToSp 4
 popToSp 0
 syscall 4, 55 ; trap_mission_is_lock (0 in, 1 out)
 eqz 
 jnz L174
 pushImm 1
 popToSpVal 0
 pushFromFSp 4
 popToSpVal 4
 syscall 4, 54 ; trap_mission_lock (0 in, 0 out)
 jmp L174
L174:
 ret 
L175:
 popToSp 0
 syscall 4, 55 ; trap_mission_is_lock (0 in, 1 out)
 eqz 
 jnz L191
 pushImm 3
 popToSpVal 0
 syscall 4, 54 ; trap_mission_lock (0 in, 0 out)
 jmp L191
L191:
 ret 
TR3:
 syscall 1, 317 ; trap_status_no_gameover (0 in, 0 out)

 halt 
 pushFromPWp W16
 pushImm {obj_id}
 syscall 1, 114 ; trap_obj_search_by_entry (2 in, 0 out)
 pushFromPWp W16
 syscall 1, 84 ; trap_obj_sheet (1 in, 1 out)
 pushImm 1
 pushImm 0
 syscall 1, 231 ; trap_sheet_set_min_hp (3 in, 0 out)
 pushFromPWp W0
 gosub 4, L199
 ret 
L199:
 popToSp 0
 pushFromFSp 0
 gosub 4, L278
L205:
 pushFromFSp 0
 gosub 4, L291
 jnz L214
 halt 
 jmp L205
L214:
 pushFromFSpVal 0
 dup 
 pushImm 1
 sub 
 jnz L225
 jmp L231
L225:
 pushFromFSpVal 4
 syscall 4, 3 ; trap_mission_complete (1 in, 0 out)
 jmp L274
L231:
 dup 
 pushImm 2
 sub 
 jnz L240
 jmp L246
L240:
 pushFromFSpVal 4
 syscall 4, 16 ; trap_mission_dead_boss (1 in, 0 out)
 jmp L274
L246:
 dup 
 pushImm 3
 sub 
 jnz L255
 jmp L259
L255:
 syscall 4, 11 ; trap_mission_failed (0 in, 0 out)
 jmp L274
L259:
 dup 
 pushImm 4
 sub 
 jnz L268
 jmp L274
L268:
 pushFromFSpVal 4
 syscall 4, 22 ; trap_mission_exit (1 in, 0 out)
 jmp L274
L274:
 drop 
 gosub 4, L301
 ret 
L278:
 popToSp 0
 pushImm 0
 popToSpVal 0
 pushImm -1
 popToSpVal 4
 ret 
L291:
 popToSp 0
 pushFromFSpVal 0
 pushImm 0
 sub 
 eqz 
 ret 
L301:
 halt 
 jmp L301
D304:
L304:
 ret 
TXT305:
 db 'rvg_long',0,0
TXT310:
 db 'rst_normal',0,0
TXT316:
 db 'jump start',0,0
TXT322:
 db 'mode_battle',0
TXT328:
 db 'rst_hard',0,0
TXT333:
 db 'jump end',0,0
TXT338:
 db 'rst_super_hard',0,0
TXT346:
 db 'btl_normal',0,0
TXT352:
 db 'near',0,0
TXT355:
 db 'btl_hard',0,0
TXT360:
 db 'btl_super_hard',0,0
TXT368:
 db 'btl_attack',0,0
TXT374:
 db 'near_wait',0
TXT379:
 db 'btl_short',0
TXT384:
 db 'rvg_normal',0,0
TXT390:
 db 'leave',0
TXT393:
 db 'btl_long',0,0
TXT398:
 db 'rvg_hard',0,0
TXT403:
 db 'rvg_super_hard',0,0
TXT411:
 db 'rvg_short',0

 section .bss
W0:
 resb 16
W16:
 resb 16