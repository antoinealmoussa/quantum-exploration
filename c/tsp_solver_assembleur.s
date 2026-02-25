
tsp_solver:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 42 2f 00 00    	push   0x2f42(%rip)        # 3f68 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 44 2f 00 00    	jmp    *0x2f44(%rip)        # 3f70 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   %ax,%ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   %ax,%ax
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <_init+0x20>
    105e:	66 90                	xchg   %ax,%ax
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	e9 b2 ff ff ff       	jmp    1020 <_init+0x20>
    106e:	66 90                	xchg   %ax,%ax
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   $0x4
    1079:	e9 a2 ff ff ff       	jmp    1020 <_init+0x20>
    107e:	66 90                	xchg   %ax,%ax
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   $0x5
    1089:	e9 92 ff ff ff       	jmp    1020 <_init+0x20>
    108e:	66 90                	xchg   %ax,%ax
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   $0x6
    1099:	e9 82 ff ff ff       	jmp    1020 <_init+0x20>
    109e:	66 90                	xchg   %ax,%ax
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	e9 72 ff ff ff       	jmp    1020 <_init+0x20>
    10ae:	66 90                	xchg   %ax,%ax
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	e9 62 ff ff ff       	jmp    1020 <_init+0x20>
    10be:	66 90                	xchg   %ax,%ax
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	e9 52 ff ff ff       	jmp    1020 <_init+0x20>
    10ce:	66 90                	xchg   %ax,%ax
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	e9 42 ff ff ff       	jmp    1020 <_init+0x20>
    10de:	66 90                	xchg   %ax,%ax
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	e9 32 ff ff ff       	jmp    1020 <_init+0x20>
    10ee:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.got:

00000000000010f0 <__cxa_finalize@plt>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	ff 25 fe 2e 00 00    	jmp    *0x2efe(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001100 <free@plt>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	ff 25 6e 2e 00 00    	jmp    *0x2e6e(%rip)        # 3f78 <free@GLIBC_2.2.5>
    110a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001110 <puts@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	ff 25 66 2e 00 00    	jmp    *0x2e66(%rip)        # 3f80 <puts@GLIBC_2.2.5>
    111a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001120 <clock@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	ff 25 5e 2e 00 00    	jmp    *0x2e5e(%rip)        # 3f88 <clock@GLIBC_2.2.5>
    112a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001130 <__stack_chk_fail@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	ff 25 56 2e 00 00    	jmp    *0x2e56(%rip)        # 3f90 <__stack_chk_fail@GLIBC_2.4>
    113a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001140 <memset@plt>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	ff 25 4e 2e 00 00    	jmp    *0x2e4e(%rip)        # 3f98 <memset@GLIBC_2.2.5>
    114a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001150 <srand@plt>:
    1150:	f3 0f 1e fa          	endbr64
    1154:	ff 25 46 2e 00 00    	jmp    *0x2e46(%rip)        # 3fa0 <srand@GLIBC_2.2.5>
    115a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001160 <strtol@plt>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	ff 25 3e 2e 00 00    	jmp    *0x2e3e(%rip)        # 3fa8 <strtol@GLIBC_2.2.5>
    116a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001170 <time@plt>:
    1170:	f3 0f 1e fa          	endbr64
    1174:	ff 25 36 2e 00 00    	jmp    *0x2e36(%rip)        # 3fb0 <time@GLIBC_2.2.5>
    117a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001180 <malloc@plt>:
    1180:	f3 0f 1e fa          	endbr64
    1184:	ff 25 2e 2e 00 00    	jmp    *0x2e2e(%rip)        # 3fb8 <malloc@GLIBC_2.2.5>
    118a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001190 <__printf_chk@plt>:
    1190:	f3 0f 1e fa          	endbr64
    1194:	ff 25 26 2e 00 00    	jmp    *0x2e26(%rip)        # 3fc0 <__printf_chk@GLIBC_2.3.4>
    119a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000011a0 <fwrite@plt>:
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	ff 25 1e 2e 00 00    	jmp    *0x2e1e(%rip)        # 3fc8 <fwrite@GLIBC_2.2.5>
    11aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000011b0 <rand@plt>:
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	ff 25 16 2e 00 00    	jmp    *0x2e16(%rip)        # 3fd0 <rand@GLIBC_2.2.5>
    11ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000011c0 <main>:
    11c0:	f3 0f 1e fa          	endbr64
    11c4:	41 55                	push   %r13
    11c6:	41 54                	push   %r12
    11c8:	55                   	push   %rbp
    11c9:	53                   	push   %rbx
    11ca:	bb 0a 00 00 00       	mov    $0xa,%ebx
    11cf:	48 83 ec 38          	sub    $0x38,%rsp
    11d3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11da:	00 00 
    11dc:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    11e1:	31 c0                	xor    %eax,%eax
    11e3:	83 ff 01             	cmp    $0x1,%edi
    11e6:	0f 8f 5c 01 00 00    	jg     1348 <main+0x188>
    11ec:	31 c0                	xor    %eax,%eax
    11ee:	e8 5d 0a 00 00       	call   1c50 <init_rand>
    11f3:	48 8d 3d 66 0e 00 00 	lea    0xe66(%rip),%rdi        # 2060 <_IO_stdin_used+0x60>
    11fa:	e8 11 ff ff ff       	call   1110 <puts@plt>
    11ff:	89 da                	mov    %ebx,%edx
    1201:	48 8d 35 0b 0f 00 00 	lea    0xf0b(%rip),%rsi        # 2113 <_IO_stdin_used+0x113>
    1208:	31 c0                	xor    %eax,%eax
    120a:	bf 02 00 00 00       	mov    $0x2,%edi
    120f:	e8 7c ff ff ff       	call   1190 <__printf_chk@plt>
    1214:	f3 0f 10 0d e8 0d 00 	movss  0xde8(%rip),%xmm1        # 2004 <_IO_stdin_used+0x4>
    121b:	00 
    121c:	89 df                	mov    %ebx,%edi
    121e:	0f 28 c1             	movaps %xmm1,%xmm0
    1221:	e8 5a 02 00 00       	call   1480 <generer_villes_aleatoires>
    1226:	48 89 c5             	mov    %rax,%rbp
    1229:	48 85 c0             	test   %rax,%rax
    122c:	0f 84 52 01 00 00    	je     1384 <main+0x1c4>
    1232:	48 8d 3d 57 0e 00 00 	lea    0xe57(%rip),%rdi        # 2090 <_IO_stdin_used+0x90>
    1239:	e8 d2 fe ff ff       	call   1110 <puts@plt>
    123e:	e8 dd fe ff ff       	call   1120 <clock@plt>
    1243:	89 da                	mov    %ebx,%edx
    1245:	48 89 ee             	mov    %rbp,%rsi
    1248:	48 89 e7             	mov    %rsp,%rdi
    124b:	49 89 c4             	mov    %rax,%r12
    124e:	e8 8d 05 00 00       	call   17e0 <resoudre_held_karp>
    1253:	4c 8b 2c 24          	mov    (%rsp),%r13
    1257:	e8 c4 fe ff ff       	call   1120 <clock@plt>
    125c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1260:	48 8d 3d 51 0e 00 00 	lea    0xe51(%rip),%rdi        # 20b8 <_IO_stdin_used+0xb8>
    1267:	4c 29 e0             	sub    %r12,%rax
    126a:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    126f:	f2 0f 59 05 39 0f 00 	mulsd  0xf39(%rip),%xmm0        # 21b0 <_IO_stdin_used+0x1b0>
    1276:	00 
    1277:	f2 0f 5e 05 39 0f 00 	divsd  0xf39(%rip),%xmm0        # 21b8 <_IO_stdin_used+0x1b8>
    127e:	00 
    127f:	66 48 0f 7e c3       	movq   %xmm0,%rbx
    1284:	e8 87 fe ff ff       	call   1110 <puts@plt>
    1289:	48 8d 3d a1 0e 00 00 	lea    0xea1(%rip),%rdi        # 2131 <_IO_stdin_used+0x131>
    1290:	e8 7b fe ff ff       	call   1110 <puts@plt>
    1295:	48 8d 35 a1 0e 00 00 	lea    0xea1(%rip),%rsi        # 213d <_IO_stdin_used+0x13d>
    129c:	bf 02 00 00 00       	mov    $0x2,%edi
    12a1:	66 0f ef c0          	pxor   %xmm0,%xmm0
    12a5:	b8 01 00 00 00       	mov    $0x1,%eax
    12aa:	f3 0f 5a 44 24 08    	cvtss2sd 0x8(%rsp),%xmm0
    12b0:	e8 db fe ff ff       	call   1190 <__printf_chk@plt>
    12b5:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    12ba:	bf 02 00 00 00       	mov    $0x2,%edi
    12bf:	48 8d 35 91 0e 00 00 	lea    0xe91(%rip),%rsi        # 2157 <_IO_stdin_used+0x157>
    12c6:	b8 01 00 00 00       	mov    $0x1,%eax
    12cb:	e8 c0 fe ff ff       	call   1190 <__printf_chk@plt>
    12d0:	48 8d 35 9d 0e 00 00 	lea    0xe9d(%rip),%rsi        # 2174 <_IO_stdin_used+0x174>
    12d7:	bf 02 00 00 00       	mov    $0x2,%edi
    12dc:	31 c0                	xor    %eax,%eax
    12de:	e8 ad fe ff ff       	call   1190 <__printf_chk@plt>
    12e3:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
    12e8:	48 83 ec 20          	sub    $0x20,%rsp
    12ec:	66 0f 6f 54 24 20    	movdqa 0x20(%rsp),%xmm2
    12f2:	66 0f 6f 5c 24 30    	movdqa 0x30(%rsp),%xmm3
    12f8:	0f 11 14 24          	movups %xmm2,(%rsp)
    12fc:	0f 11 5c 24 10       	movups %xmm3,0x10(%rsp)
    1301:	e8 ba 08 00 00       	call   1bc0 <afficher_solution>
    1306:	48 83 c4 20          	add    $0x20,%rsp
    130a:	48 8d 3d d7 0d 00 00 	lea    0xdd7(%rip),%rdi        # 20e8 <_IO_stdin_used+0xe8>
    1311:	e8 fa fd ff ff       	call   1110 <puts@plt>
    1316:	48 89 ef             	mov    %rbp,%rdi
    1319:	e8 e2 fd ff ff       	call   1100 <free@plt>
    131e:	4d 85 ed             	test   %r13,%r13
    1321:	74 08                	je     132b <main+0x16b>
    1323:	4c 89 ef             	mov    %r13,%rdi
    1326:	e8 d5 fd ff ff       	call   1100 <free@plt>
    132b:	31 c0                	xor    %eax,%eax
    132d:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
    1332:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1339:	00 00 
    133b:	75 4e                	jne    138b <main+0x1cb>
    133d:	48 83 c4 38          	add    $0x38,%rsp
    1341:	5b                   	pop    %rbx
    1342:	5d                   	pop    %rbp
    1343:	41 5c                	pop    %r12
    1345:	41 5d                	pop    %r13
    1347:	c3                   	ret
    1348:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    134c:	ba 0a 00 00 00       	mov    $0xa,%edx
    1351:	31 f6                	xor    %esi,%esi
    1353:	e8 08 fe ff ff       	call   1160 <strtol@plt>
    1358:	48 89 c3             	mov    %rax,%rbx
    135b:	8d 40 fe             	lea    -0x2(%rax),%eax
    135e:	83 f8 1d             	cmp    $0x1d,%eax
    1361:	0f 86 85 fe ff ff    	jbe    11ec <main+0x2c>
    1367:	48 8b 0d b2 2c 00 00 	mov    0x2cb2(%rip),%rcx        # 4020 <stderr@GLIBC_2.2.5>
    136e:	ba 48 00 00 00       	mov    $0x48,%edx
    1373:	be 01 00 00 00       	mov    $0x1,%esi
    1378:	48 8d 3d 91 0c 00 00 	lea    0xc91(%rip),%rdi        # 2010 <_IO_stdin_used+0x10>
    137f:	e8 1c fe ff ff       	call   11a0 <fwrite@plt>
    1384:	b8 01 00 00 00       	mov    $0x1,%eax
    1389:	eb a2                	jmp    132d <main+0x16d>
    138b:	e8 a0 fd ff ff       	call   1130 <__stack_chk_fail@plt>

0000000000001390 <_start>:
    1390:	f3 0f 1e fa          	endbr64
    1394:	31 ed                	xor    %ebp,%ebp
    1396:	49 89 d1             	mov    %rdx,%r9
    1399:	5e                   	pop    %rsi
    139a:	48 89 e2             	mov    %rsp,%rdx
    139d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13a1:	50                   	push   %rax
    13a2:	54                   	push   %rsp
    13a3:	45 31 c0             	xor    %r8d,%r8d
    13a6:	31 c9                	xor    %ecx,%ecx
    13a8:	48 8d 3d 11 fe ff ff 	lea    -0x1ef(%rip),%rdi        # 11c0 <main>
    13af:	ff 15 23 2c 00 00    	call   *0x2c23(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    13b5:	f4                   	hlt
    13b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13bd:	00 00 00 

00000000000013c0 <deregister_tm_clones>:
    13c0:	48 8d 3d 49 2c 00 00 	lea    0x2c49(%rip),%rdi        # 4010 <__TMC_END__>
    13c7:	48 8d 05 42 2c 00 00 	lea    0x2c42(%rip),%rax        # 4010 <__TMC_END__>
    13ce:	48 39 f8             	cmp    %rdi,%rax
    13d1:	74 15                	je     13e8 <deregister_tm_clones+0x28>
    13d3:	48 8b 05 06 2c 00 00 	mov    0x2c06(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    13da:	48 85 c0             	test   %rax,%rax
    13dd:	74 09                	je     13e8 <deregister_tm_clones+0x28>
    13df:	ff e0                	jmp    *%rax
    13e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13e8:	c3                   	ret
    13e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013f0 <register_tm_clones>:
    13f0:	48 8d 3d 19 2c 00 00 	lea    0x2c19(%rip),%rdi        # 4010 <__TMC_END__>
    13f7:	48 8d 35 12 2c 00 00 	lea    0x2c12(%rip),%rsi        # 4010 <__TMC_END__>
    13fe:	48 29 fe             	sub    %rdi,%rsi
    1401:	48 89 f0             	mov    %rsi,%rax
    1404:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1408:	48 c1 f8 03          	sar    $0x3,%rax
    140c:	48 01 c6             	add    %rax,%rsi
    140f:	48 d1 fe             	sar    $1,%rsi
    1412:	74 14                	je     1428 <register_tm_clones+0x38>
    1414:	48 8b 05 d5 2b 00 00 	mov    0x2bd5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    141b:	48 85 c0             	test   %rax,%rax
    141e:	74 08                	je     1428 <register_tm_clones+0x38>
    1420:	ff e0                	jmp    *%rax
    1422:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1428:	c3                   	ret
    1429:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001430 <__do_global_dtors_aux>:
    1430:	f3 0f 1e fa          	endbr64
    1434:	80 3d ed 2b 00 00 00 	cmpb   $0x0,0x2bed(%rip)        # 4028 <completed.0>
    143b:	75 2b                	jne    1468 <__do_global_dtors_aux+0x38>
    143d:	55                   	push   %rbp
    143e:	48 83 3d b2 2b 00 00 	cmpq   $0x0,0x2bb2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1445:	00 
    1446:	48 89 e5             	mov    %rsp,%rbp
    1449:	74 0c                	je     1457 <__do_global_dtors_aux+0x27>
    144b:	48 8b 3d b6 2b 00 00 	mov    0x2bb6(%rip),%rdi        # 4008 <__dso_handle>
    1452:	e8 99 fc ff ff       	call   10f0 <__cxa_finalize@plt>
    1457:	e8 64 ff ff ff       	call   13c0 <deregister_tm_clones>
    145c:	c6 05 c5 2b 00 00 01 	movb   $0x1,0x2bc5(%rip)        # 4028 <completed.0>
    1463:	5d                   	pop    %rbp
    1464:	c3                   	ret
    1465:	0f 1f 00             	nopl   (%rax)
    1468:	c3                   	ret
    1469:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001470 <frame_dummy>:
    1470:	f3 0f 1e fa          	endbr64
    1474:	e9 77 ff ff ff       	jmp    13f0 <register_tm_clones>
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <generer_villes_aleatoires>:
    1480:	f3 0f 1e fa          	endbr64
    1484:	41 55                	push   %r13
    1486:	48 63 c7             	movslq %edi,%rax
    1489:	41 54                	push   %r12
    148b:	48 8d 3c 40          	lea    (%rax,%rax,2),%rdi
    148f:	49 89 c4             	mov    %rax,%r12
    1492:	55                   	push   %rbp
    1493:	48 c1 e7 02          	shl    $0x2,%rdi
    1497:	53                   	push   %rbx
    1498:	48 83 ec 18          	sub    $0x18,%rsp
    149c:	f3 0f 11 44 24 08    	movss  %xmm0,0x8(%rsp)
    14a2:	f3 0f 11 4c 24 0c    	movss  %xmm1,0xc(%rsp)
    14a8:	e8 d3 fc ff ff       	call   1180 <malloc@plt>
    14ad:	49 89 c5             	mov    %rax,%r13
    14b0:	45 85 e4             	test   %r12d,%r12d
    14b3:	7e 61                	jle    1516 <generer_villes_aleatoires+0x96>
    14b5:	48 89 c3             	mov    %rax,%rbx
    14b8:	31 ed                	xor    %ebp,%ebp
    14ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    14c0:	89 2b                	mov    %ebp,(%rbx)
    14c2:	83 c5 01             	add    $0x1,%ebp
    14c5:	48 83 c3 0c          	add    $0xc,%rbx
    14c9:	e8 e2 fc ff ff       	call   11b0 <rand@plt>
    14ce:	66 0f ef c0          	pxor   %xmm0,%xmm0
    14d2:	f3 0f 10 0d 2e 0b 00 	movss  0xb2e(%rip),%xmm1        # 2008 <_IO_stdin_used+0x8>
    14d9:	00 
    14da:	f3 0f 5e 4c 24 08    	divss  0x8(%rsp),%xmm1
    14e0:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    14e4:	f3 0f 5e c1          	divss  %xmm1,%xmm0
    14e8:	f3 0f 11 43 f8       	movss  %xmm0,-0x8(%rbx)
    14ed:	e8 be fc ff ff       	call   11b0 <rand@plt>
    14f2:	66 0f ef c0          	pxor   %xmm0,%xmm0
    14f6:	f3 0f 10 0d 0a 0b 00 	movss  0xb0a(%rip),%xmm1        # 2008 <_IO_stdin_used+0x8>
    14fd:	00 
    14fe:	f3 0f 5e 4c 24 0c    	divss  0xc(%rsp),%xmm1
    1504:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    1508:	f3 0f 5e c1          	divss  %xmm1,%xmm0
    150c:	f3 0f 11 43 fc       	movss  %xmm0,-0x4(%rbx)
    1511:	41 39 ec             	cmp    %ebp,%r12d
    1514:	75 aa                	jne    14c0 <generer_villes_aleatoires+0x40>
    1516:	48 83 c4 18          	add    $0x18,%rsp
    151a:	4c 89 e8             	mov    %r13,%rax
    151d:	5b                   	pop    %rbx
    151e:	5d                   	pop    %rbp
    151f:	41 5c                	pop    %r12
    1521:	41 5d                	pop    %r13
    1523:	c3                   	ret
    1524:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    152b:	00 00 00 00 
    152f:	90                   	nop

0000000000001530 <calculer_distance>:
    1530:	f3 0f 1e fa          	endbr64
    1534:	48 89 7c 24 f0       	mov    %rdi,-0x10(%rsp)
    1539:	f3 0f 5c c8          	subss  %xmm0,%xmm1
    153d:	48 89 74 24 e0       	mov    %rsi,-0x20(%rsp)
    1542:	f3 0f 10 44 24 e4    	movss  -0x1c(%rsp),%xmm0
    1548:	f3 0f 5c 44 24 f4    	subss  -0xc(%rsp),%xmm0
    154e:	f3 0f 59 c9          	mulss  %xmm1,%xmm1
    1552:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    1556:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    155a:	f3 0f 51 c0          	sqrtss %xmm0,%xmm0
    155e:	c3                   	ret
    155f:	90                   	nop

0000000000001560 <calculer_matrice_distance>:
    1560:	f3 0f 1e fa          	endbr64
    1564:	41 57                	push   %r15
    1566:	41 56                	push   %r14
    1568:	41 55                	push   %r13
    156a:	41 54                	push   %r12
    156c:	55                   	push   %rbp
    156d:	89 f5                	mov    %esi,%ebp
    156f:	53                   	push   %rbx
    1570:	48 89 fb             	mov    %rdi,%rbx
    1573:	89 f7                	mov    %esi,%edi
    1575:	0f af fe             	imul   %esi,%edi
    1578:	48 83 ec 28          	sub    $0x28,%rsp
    157c:	48 63 ff             	movslq %edi,%rdi
    157f:	48 c1 e7 02          	shl    $0x2,%rdi
    1583:	e8 f8 fb ff ff       	call   1180 <malloc@plt>
    1588:	49 89 c0             	mov    %rax,%r8
    158b:	48 85 c0             	test   %rax,%rax
    158e:	0f 84 e4 01 00 00    	je     1778 <calculer_matrice_distance+0x218>
    1594:	85 ed                	test   %ebp,%ebp
    1596:	0f 8e dc 01 00 00    	jle    1778 <calculer_matrice_distance+0x218>
    159c:	4c 63 f5             	movslq %ebp,%r14
    159f:	4c 8d 7b 04          	lea    0x4(%rbx),%r15
    15a3:	44 8d 65 ff          	lea    -0x1(%rbp),%r12d
    15a7:	4d 89 c3             	mov    %r8,%r11
    15aa:	45 89 e5             	mov    %r12d,%r13d
    15ad:	4c 89 ff             	mov    %r15,%rdi
    15b0:	45 31 d2             	xor    %r10d,%r10d
    15b3:	45 31 c9             	xor    %r9d,%r9d
    15b6:	4a 8d 04 b5 00 00 00 	lea    0x0(,%r14,4),%rax
    15bd:	00 
    15be:	41 83 e5 fc          	and    $0xfffffffc,%r13d
    15c2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    15c7:	4b 8d 04 76          	lea    (%r14,%r14,2),%rax
    15cb:	49 8d 04 87          	lea    (%r15,%rax,4),%rax
    15cf:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    15d4:	44 89 e0             	mov    %r12d,%eax
    15d7:	c1 e8 02             	shr    $0x2,%eax
    15da:	48 c1 e0 04          	shl    $0x4,%rax
    15de:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    15e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    15e8:	f3 0f 10 0f          	movss  (%rdi),%xmm1
    15ec:	f3 0f 10 67 04       	movss  0x4(%rdi),%xmm4
    15f1:	41 83 fc 03          	cmp    $0x3,%r12d
    15f5:	0f 86 95 01 00 00    	jbe    1790 <calculer_matrice_distance+0x230>
    15fb:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1600:	0f 28 dc             	movaps %xmm4,%xmm3
    1603:	0f 28 d1             	movaps %xmm1,%xmm2
    1606:	4c 89 da             	mov    %r11,%rdx
    1609:	0f c6 db 00          	shufps $0x0,%xmm3,%xmm3
    160d:	0f c6 d2 00          	shufps $0x0,%xmm2,%xmm2
    1611:	49 8d 0c 03          	lea    (%r11,%rax,1),%rcx
    1615:	4c 89 f8             	mov    %r15,%rax
    1618:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    161f:	00 
    1620:	44 0f 10 00          	movups (%rax),%xmm8
    1624:	0f 10 68 20          	movups 0x20(%rax),%xmm5
    1628:	48 83 c2 10          	add    $0x10,%rdx
    162c:	48 83 c0 30          	add    $0x30,%rax
    1630:	0f 10 78 e0          	movups -0x20(%rax),%xmm7
    1634:	0f 28 f5             	movaps %xmm5,%xmm6
    1637:	41 0f 28 c0          	movaps %xmm8,%xmm0
    163b:	0f c6 c7 c1          	shufps $0xc1,%xmm7,%xmm0
    163f:	0f c6 c0 78          	shufps $0x78,%xmm0,%xmm0
    1643:	0f c6 f0 aa          	shufps $0xaa,%xmm0,%xmm6
    1647:	0f c6 c6 24          	shufps $0x24,%xmm6,%xmm0
    164b:	0f 28 f7             	movaps %xmm7,%xmm6
    164e:	41 0f 28 f8          	movaps %xmm8,%xmm7
    1652:	0f 5c c3             	subps  %xmm3,%xmm0
    1655:	41 0f c6 f0 0a       	shufps $0xa,%xmm8,%xmm6
    165a:	0f c6 fe 8c          	shufps $0x8c,%xmm6,%xmm7
    165e:	0f c6 ef a5          	shufps $0xa5,%xmm7,%xmm5
    1662:	0f c6 fd 24          	shufps $0x24,%xmm5,%xmm7
    1666:	0f 5c fa             	subps  %xmm2,%xmm7
    1669:	0f 59 c0             	mulps  %xmm0,%xmm0
    166c:	0f 28 ef             	movaps %xmm7,%xmm5
    166f:	0f 59 ef             	mulps  %xmm7,%xmm5
    1672:	0f 58 c5             	addps  %xmm5,%xmm0
    1675:	0f 51 c0             	sqrtps %xmm0,%xmm0
    1678:	0f 11 42 f0          	movups %xmm0,-0x10(%rdx)
    167c:	48 39 ca             	cmp    %rcx,%rdx
    167f:	75 9f                	jne    1620 <calculer_matrice_distance+0xc0>
    1681:	44 89 e8             	mov    %r13d,%eax
    1684:	44 89 ea             	mov    %r13d,%edx
    1687:	44 89 e1             	mov    %r12d,%ecx
    168a:	29 c1                	sub    %eax,%ecx
    168c:	83 f9 01             	cmp    $0x1,%ecx
    168f:	76 52                	jbe    16e3 <calculer_matrice_distance+0x183>
    1691:	48 8d 34 40          	lea    (%rax,%rax,2),%rsi
    1695:	83 e1 fe             	and    $0xfffffffe,%ecx
    1698:	4c 01 d0             	add    %r10,%rax
    169b:	48 8d 74 b3 04       	lea    0x4(%rbx,%rsi,4),%rsi
    16a0:	01 ca                	add    %ecx,%edx
    16a2:	f3 0f 7e 1e          	movq   (%rsi),%xmm3
    16a6:	f3 0f 7e 56 10       	movq   0x10(%rsi),%xmm2
    16ab:	0f 28 c3             	movaps %xmm3,%xmm0
    16ae:	0f c6 c0 e1          	shufps $0xe1,%xmm0,%xmm0
    16b2:	0f 14 c2             	unpcklps %xmm2,%xmm0
    16b5:	0f 28 d4             	movaps %xmm4,%xmm2
    16b8:	0f c6 d2 e0          	shufps $0xe0,%xmm2,%xmm2
    16bc:	0f 5c c2             	subps  %xmm2,%xmm0
    16bf:	f3 0f 7e 56 08       	movq   0x8(%rsi),%xmm2
    16c4:	f3 0f 10 d3          	movss  %xmm3,%xmm2
    16c8:	0f 28 d9             	movaps %xmm1,%xmm3
    16cb:	0f c6 db e0          	shufps $0xe0,%xmm3,%xmm3
    16cf:	0f 5c d3             	subps  %xmm3,%xmm2
    16d2:	0f 59 c0             	mulps  %xmm0,%xmm0
    16d5:	0f 59 d2             	mulps  %xmm2,%xmm2
    16d8:	0f 58 c2             	addps  %xmm2,%xmm0
    16db:	0f 51 c0             	sqrtps %xmm0,%xmm0
    16de:	41 0f 13 04 80       	movlps %xmm0,(%r8,%rax,4)
    16e3:	48 63 c2             	movslq %edx,%rax
    16e6:	41 8d 0c 11          	lea    (%r9,%rdx,1),%ecx
    16ea:	83 c2 01             	add    $0x1,%edx
    16ed:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
    16f1:	48 63 c9             	movslq %ecx,%rcx
    16f4:	48 c1 e0 02          	shl    $0x2,%rax
    16f8:	48 8d 34 03          	lea    (%rbx,%rax,1),%rsi
    16fc:	f3 0f 10 46 08       	movss  0x8(%rsi),%xmm0
    1701:	f3 0f 10 56 04       	movss  0x4(%rsi),%xmm2
    1706:	f3 0f 5c c4          	subss  %xmm4,%xmm0
    170a:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    170e:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    1712:	f3 0f 59 d2          	mulss  %xmm2,%xmm2
    1716:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    171a:	f3 0f 51 c0          	sqrtss %xmm0,%xmm0
    171e:	f3 41 0f 11 04 88    	movss  %xmm0,(%r8,%rcx,4)
    1724:	39 d5                	cmp    %edx,%ebp
    1726:	7e 33                	jle    175b <calculer_matrice_distance+0x1fb>
    1728:	48 8d 44 03 0c       	lea    0xc(%rbx,%rax,1),%rax
    172d:	44 01 ca             	add    %r9d,%edx
    1730:	f3 0f 10 40 08       	movss  0x8(%rax),%xmm0
    1735:	f3 0f 10 50 04       	movss  0x4(%rax),%xmm2
    173a:	48 63 d2             	movslq %edx,%rdx
    173d:	f3 0f 5c c4          	subss  %xmm4,%xmm0
    1741:	f3 0f 5c d1          	subss  %xmm1,%xmm2
    1745:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    1749:	f3 0f 59 d2          	mulss  %xmm2,%xmm2
    174d:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    1751:	f3 0f 51 c0          	sqrtss %xmm0,%xmm0
    1755:	f3 41 0f 11 04 90    	movss  %xmm0,(%r8,%rdx,4)
    175b:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1760:	48 83 c7 0c          	add    $0xc,%rdi
    1764:	41 01 e9             	add    %ebp,%r9d
    1767:	4d 01 f2             	add    %r14,%r10
    176a:	49 01 c3             	add    %rax,%r11
    176d:	48 39 7c 24 10       	cmp    %rdi,0x10(%rsp)
    1772:	0f 85 70 fe ff ff    	jne    15e8 <calculer_matrice_distance+0x88>
    1778:	48 83 c4 28          	add    $0x28,%rsp
    177c:	4c 89 c0             	mov    %r8,%rax
    177f:	5b                   	pop    %rbx
    1780:	5d                   	pop    %rbp
    1781:	41 5c                	pop    %r12
    1783:	41 5d                	pop    %r13
    1785:	41 5e                	pop    %r14
    1787:	41 5f                	pop    %r15
    1789:	c3                   	ret
    178a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1790:	31 c0                	xor    %eax,%eax
    1792:	31 d2                	xor    %edx,%edx
    1794:	e9 ee fe ff ff       	jmp    1687 <calculer_matrice_distance+0x127>
    1799:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000017a0 <liberer_matrice>:
    17a0:	f3 0f 1e fa          	endbr64
    17a4:	41 54                	push   %r12
    17a6:	49 89 fc             	mov    %rdi,%r12
    17a9:	55                   	push   %rbp
    17aa:	53                   	push   %rbx
    17ab:	85 f6                	test   %esi,%esi
    17ad:	7e 22                	jle    17d1 <liberer_matrice+0x31>
    17af:	48 63 f6             	movslq %esi,%rsi
    17b2:	48 89 fb             	mov    %rdi,%rbx
    17b5:	48 8d 2c f7          	lea    (%rdi,%rsi,8),%rbp
    17b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    17c0:	48 8b 3b             	mov    (%rbx),%rdi
    17c3:	48 83 c3 08          	add    $0x8,%rbx
    17c7:	e8 34 f9 ff ff       	call   1100 <free@plt>
    17cc:	48 39 eb             	cmp    %rbp,%rbx
    17cf:	75 ef                	jne    17c0 <liberer_matrice+0x20>
    17d1:	5b                   	pop    %rbx
    17d2:	4c 89 e7             	mov    %r12,%rdi
    17d5:	5d                   	pop    %rbp
    17d6:	41 5c                	pop    %r12
    17d8:	e9 23 f9 ff ff       	jmp    1100 <free@plt>
    17dd:	0f 1f 00             	nopl   (%rax)

00000000000017e0 <resoudre_held_karp>:
    17e0:	f3 0f 1e fa          	endbr64
    17e4:	41 57                	push   %r15
    17e6:	89 d1                	mov    %edx,%ecx
    17e8:	b8 01 00 00 00       	mov    $0x1,%eax
    17ed:	41 56                	push   %r14
    17ef:	d3 e0                	shl    %cl,%eax
    17f1:	49 89 fe             	mov    %rdi,%r14
    17f4:	41 55                	push   %r13
    17f6:	41 89 d5             	mov    %edx,%r13d
    17f9:	41 54                	push   %r12
    17fb:	41 d3 e5             	shl    %cl,%r13d
    17fe:	55                   	push   %rbp
    17ff:	45 89 ef             	mov    %r13d,%r15d
    1802:	48 89 f5             	mov    %rsi,%rbp
    1805:	53                   	push   %rbx
    1806:	4a 8d 3c bd 00 00 00 	lea    0x0(,%r15,4),%rdi
    180d:	00 
    180e:	89 d3                	mov    %edx,%ebx
    1810:	48 83 ec 38          	sub    $0x38,%rsp
    1814:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    1819:	89 44 24 10          	mov    %eax,0x10(%rsp)
    181d:	e8 5e f9 ff ff       	call   1180 <malloc@plt>
    1822:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    1827:	49 89 c4             	mov    %rax,%r12
    182a:	e8 51 f9 ff ff       	call   1180 <malloc@plt>
    182f:	49 89 c3             	mov    %rax,%r11
    1832:	45 85 ed             	test   %r13d,%r13d
    1835:	0f 84 4b 03 00 00    	je     1b86 <resoudre_held_karp+0x3a6>
    183b:	41 8d 45 ff          	lea    -0x1(%r13),%eax
    183f:	83 f8 02             	cmp    $0x2,%eax
    1842:	0f 86 51 03 00 00    	jbe    1b99 <resoudre_held_karp+0x3b9>
    1848:	44 89 ea             	mov    %r13d,%edx
    184b:	f3 0f 10 05 b9 07 00 	movss  0x7b9(%rip),%xmm0        # 200c <_IO_stdin_used+0xc>
    1852:	00 
    1853:	4c 89 e0             	mov    %r12,%rax
    1856:	c1 ea 02             	shr    $0x2,%edx
    1859:	48 c1 e2 04          	shl    $0x4,%rdx
    185d:	0f c6 c0 00          	shufps $0x0,%xmm0,%xmm0
    1861:	4a 8d 0c 22          	lea    (%rdx,%r12,1),%rcx
    1865:	83 e2 10             	and    $0x10,%edx
    1868:	74 0f                	je     1879 <resoudre_held_karp+0x99>
    186a:	49 8d 44 24 10       	lea    0x10(%r12),%rax
    186f:	41 0f 11 04 24       	movups %xmm0,(%r12)
    1874:	48 39 c1             	cmp    %rax,%rcx
    1877:	74 10                	je     1889 <resoudre_held_karp+0xa9>
    1879:	0f 11 00             	movups %xmm0,(%rax)
    187c:	48 83 c0 20          	add    $0x20,%rax
    1880:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
    1884:	48 39 c1             	cmp    %rax,%rcx
    1887:	75 f0                	jne    1879 <resoudre_held_karp+0x99>
    1889:	44 89 e8             	mov    %r13d,%eax
    188c:	83 e0 fc             	and    $0xfffffffc,%eax
    188f:	41 f6 c5 03          	test   $0x3,%r13b
    1893:	0f 84 b9 02 00 00    	je     1b52 <resoudre_held_karp+0x372>
    1899:	f3 0f 10 1d 6b 07 00 	movss  0x76b(%rip),%xmm3        # 200c <_IO_stdin_used+0xc>
    18a0:	00 
    18a1:	89 c2                	mov    %eax,%edx
    18a3:	f3 41 0f 11 1c 94    	movss  %xmm3,(%r12,%rdx,4)
    18a9:	8d 50 01             	lea    0x1(%rax),%edx
    18ac:	f3 0f 11 5c 24 1c    	movss  %xmm3,0x1c(%rsp)
    18b2:	44 39 ea             	cmp    %r13d,%edx
    18b5:	73 14                	jae    18cb <resoudre_held_karp+0xeb>
    18b7:	83 c0 02             	add    $0x2,%eax
    18ba:	f3 41 0f 11 1c 94    	movss  %xmm3,(%r12,%rdx,4)
    18c0:	44 39 e8             	cmp    %r13d,%eax
    18c3:	73 06                	jae    18cb <resoudre_held_karp+0xeb>
    18c5:	f3 41 0f 11 1c 84    	movss  %xmm3,(%r12,%rax,4)
    18cb:	4c 89 df             	mov    %r11,%rdi
    18ce:	4a 8d 14 bd 00 00 00 	lea    0x0(,%r15,4),%rdx
    18d5:	00 
    18d6:	be ff 00 00 00       	mov    $0xff,%esi
    18db:	e8 60 f8 ff ff       	call   1140 <memset@plt>
    18e0:	49 89 c3             	mov    %rax,%r11
    18e3:	89 de                	mov    %ebx,%esi
    18e5:	48 89 ef             	mov    %rbp,%rdi
    18e8:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
    18ed:	e8 6e fc ff ff       	call   1560 <calculer_matrice_distance>
    18f2:	83 fb 01             	cmp    $0x1,%ebx
    18f5:	4c 8b 5c 24 08       	mov    0x8(%rsp),%r11
    18fa:	89 de                	mov    %ebx,%esi
    18fc:	49 89 c5             	mov    %rax,%r13
    18ff:	b9 01 00 00 00       	mov    $0x1,%ecx
    1904:	ba 01 00 00 00       	mov    $0x1,%edx
    1909:	0f 8e 56 02 00 00    	jle    1b65 <resoudre_held_karp+0x385>
    190f:	90                   	nop
    1910:	89 d0                	mov    %edx,%eax
    1912:	f3 41 0f 10 44 8d 00 	movss  0x0(%r13,%rcx,4),%xmm0
    1919:	d3 e0                	shl    %cl,%eax
    191b:	83 c8 01             	or     $0x1,%eax
    191e:	0f af c3             	imul   %ebx,%eax
    1921:	01 c8                	add    %ecx,%eax
    1923:	48 83 c1 01          	add    $0x1,%rcx
    1927:	89 c0                	mov    %eax,%eax
    1929:	41 c7 04 83 00 00 00 	movl   $0x0,(%r11,%rax,4)
    1930:	00 
    1931:	f3 41 0f 11 04 84    	movss  %xmm0,(%r12,%rax,4)
    1937:	48 39 ce             	cmp    %rcx,%rsi
    193a:	75 d4                	jne    1910 <resoudre_held_karp+0x130>
    193c:	83 fb 02             	cmp    $0x2,%ebx
    193f:	0f 84 0c 01 00 00    	je     1a51 <resoudre_held_karp+0x271>
    1945:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1949:	ba 03 00 00 00       	mov    $0x3,%edx
    194e:	bd 01 00 00 00       	mov    $0x1,%ebp
    1953:	85 c0                	test   %eax,%eax
    1955:	0f 84 f6 00 00 00    	je     1a51 <resoudre_held_karp+0x271>
    195b:	4c 89 5c 24 20       	mov    %r11,0x20(%rsp)
    1960:	4c 89 74 24 28       	mov    %r14,0x28(%rsp)
    1965:	0f 1f 00             	nopl   (%rax)
    1968:	89 54 24 08          	mov    %edx,0x8(%rsp)
    196c:	45 31 f6             	xor    %r14d,%r14d
    196f:	45 31 ff             	xor    %r15d,%r15d
    1972:	eb 16                	jmp    198a <resoudre_held_karp+0x1aa>
    1974:	0f 1f 40 00          	nopl   0x0(%rax)
    1978:	41 83 c6 01          	add    $0x1,%r14d
    197c:	41 01 df             	add    %ebx,%r15d
    197f:	44 39 74 24 10       	cmp    %r14d,0x10(%rsp)
    1984:	0f 84 ae 00 00 00    	je     1a38 <resoudre_held_karp+0x258>
    198a:	44 89 f7             	mov    %r14d,%edi
    198d:	e8 0e 02 00 00       	call   1ba0 <compter_bits_actifs>
    1992:	8b 7c 24 08          	mov    0x8(%rsp),%edi
    1996:	39 f8                	cmp    %edi,%eax
    1998:	75 de                	jne    1978 <resoudre_held_karp+0x198>
    199a:	41 f6 c6 01          	test   $0x1,%r14b
    199e:	74 d8                	je     1978 <resoudre_held_karp+0x198>
    19a0:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
    19a5:	f3 0f 10 54 24 1c    	movss  0x1c(%rsp),%xmm2
    19ab:	41 bb 01 00 00 00    	mov    $0x1,%r11d
    19b1:	eb 0e                	jmp    19c1 <resoudre_held_karp+0x1e1>
    19b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    19b8:	41 83 c3 01          	add    $0x1,%r11d
    19bc:	44 39 db             	cmp    %r11d,%ebx
    19bf:	74 b7                	je     1978 <resoudre_held_karp+0x198>
    19c1:	89 ee                	mov    %ebp,%esi
    19c3:	44 89 d9             	mov    %r11d,%ecx
    19c6:	d3 e6                	shl    %cl,%esi
    19c8:	44 85 f6             	test   %r14d,%esi
    19cb:	74 eb                	je     19b8 <resoudre_held_karp+0x1d8>
    19cd:	44 31 f6             	xor    %r14d,%esi
    19d0:	41 89 d8             	mov    %ebx,%r8d
    19d3:	42 8d 04 1b          	lea    (%rbx,%r11,1),%eax
    19d7:	b9 01 00 00 00       	mov    $0x1,%ecx
    19dc:	44 0f af c6          	imul   %esi,%r8d
    19e0:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    19e5:	0f 28 ca             	movaps %xmm2,%xmm1
    19e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    19ef:	00 
    19f0:	89 ea                	mov    %ebp,%edx
    19f2:	d3 e2                	shl    %cl,%edx
    19f4:	85 f2                	test   %esi,%edx
    19f6:	74 21                	je     1a19 <resoudre_held_karp+0x239>
    19f8:	46 8d 14 01          	lea    (%rcx,%r8,1),%r10d
    19fc:	48 63 d0             	movslq %eax,%rdx
    19ff:	f3 43 0f 10 04 94    	movss  (%r12,%r10,4),%xmm0
    1a05:	f3 41 0f 58 44 95 00 	addss  0x0(%r13,%rdx,4),%xmm0
    1a0c:	0f 2f c8             	comiss %xmm0,%xmm1
    1a0f:	f3 0f 5d c1          	minss  %xmm1,%xmm0
    1a13:	0f 47 f9             	cmova  %ecx,%edi
    1a16:	0f 28 c8             	movaps %xmm0,%xmm1
    1a19:	83 c1 01             	add    $0x1,%ecx
    1a1c:	01 d8                	add    %ebx,%eax
    1a1e:	39 cb                	cmp    %ecx,%ebx
    1a20:	75 ce                	jne    19f0 <resoudre_held_karp+0x210>
    1a22:	43 8d 04 3b          	lea    (%r11,%r15,1),%eax
    1a26:	41 89 3c 81          	mov    %edi,(%r9,%rax,4)
    1a2a:	f3 41 0f 11 0c 84    	movss  %xmm1,(%r12,%rax,4)
    1a30:	eb 86                	jmp    19b8 <resoudre_held_karp+0x1d8>
    1a32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1a38:	8b 54 24 08          	mov    0x8(%rsp),%edx
    1a3c:	83 c2 01             	add    $0x1,%edx
    1a3f:	39 d3                	cmp    %edx,%ebx
    1a41:	0f 8d 21 ff ff ff    	jge    1968 <resoudre_held_karp+0x188>
    1a47:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
    1a4c:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
    1a51:	8b 54 24 10          	mov    0x10(%rsp),%edx
    1a55:	48 63 fb             	movslq %ebx,%rdi
    1a58:	89 de                	mov    %ebx,%esi
    1a5a:	f3 0f 10 44 24 1c    	movss  0x1c(%rsp),%xmm0
    1a60:	48 c1 e7 02          	shl    $0x2,%rdi
    1a64:	bd 01 00 00 00       	mov    $0x1,%ebp
    1a69:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
    1a6f:	83 ea 01             	sub    $0x1,%edx
    1a72:	49 8d 44 3d 00       	lea    0x0(%r13,%rdi,1),%rax
    1a77:	0f af f2             	imul   %edx,%esi
    1a7a:	eb 07                	jmp    1a83 <resoudre_held_karp+0x2a3>
    1a7c:	0f 1f 40 00          	nopl   0x0(%rax)
    1a80:	48 63 e9             	movslq %ecx,%rbp
    1a83:	8d 4c 35 00          	lea    0x0(%rbp,%rsi,1),%ecx
    1a87:	f3 41 0f 10 0c 8c    	movss  (%r12,%rcx,4),%xmm1
    1a8d:	f3 0f 58 08          	addss  (%rax),%xmm1
    1a91:	8d 4d 01             	lea    0x1(%rbp),%ecx
    1a94:	0f 2f c1             	comiss %xmm1,%xmm0
    1a97:	f3 0f 5d c8          	minss  %xmm0,%xmm1
    1a9b:	44 0f 47 fd          	cmova  %ebp,%r15d
    1a9f:	0f 28 c1             	movaps %xmm1,%xmm0
    1aa2:	48 01 f8             	add    %rdi,%rax
    1aa5:	39 cb                	cmp    %ecx,%ebx
    1aa7:	75 d7                	jne    1a80 <resoudre_held_karp+0x2a0>
    1aa9:	89 54 24 10          	mov    %edx,0x10(%rsp)
    1aad:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
    1ab2:	f3 0f 11 4c 24 1c    	movss  %xmm1,0x1c(%rsp)
    1ab8:	e8 c3 f6 ff ff       	call   1180 <malloc@plt>
    1abd:	4c 8b 5c 24 08       	mov    0x8(%rsp),%r11
    1ac2:	8b 54 24 10          	mov    0x10(%rsp),%edx
    1ac6:	f3 0f 10 44 24 1c    	movss  0x1c(%rsp),%xmm0
    1acc:	0f 1f 40 00          	nopl   0x0(%rax)
    1ad0:	89 de                	mov    %ebx,%esi
    1ad2:	44 89 3c a8          	mov    %r15d,(%rax,%rbp,4)
    1ad6:	44 89 f9             	mov    %r15d,%ecx
    1ad9:	48 83 ed 01          	sub    $0x1,%rbp
    1add:	0f af f2             	imul   %edx,%esi
    1ae0:	0f bb ca             	btc    %ecx,%edx
    1ae3:	44 01 fe             	add    %r15d,%esi
    1ae6:	89 f6                	mov    %esi,%esi
    1ae8:	45 8b 3c b3          	mov    (%r11,%rsi,4),%r15d
    1aec:	85 ed                	test   %ebp,%ebp
    1aee:	7f e0                	jg     1ad0 <resoudre_held_karp+0x2f0>
    1af0:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    1af6:	4c 89 e7             	mov    %r12,%rdi
    1af9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1afe:	f3 0f 11 44 24 1c    	movss  %xmm0,0x1c(%rsp)
    1b04:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
    1b09:	e8 f2 f5 ff ff       	call   1100 <free@plt>
    1b0e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1b13:	e8 e8 f5 ff ff       	call   1100 <free@plt>
    1b18:	4c 89 ef             	mov    %r13,%rdi
    1b1b:	e8 e0 f5 ff ff       	call   1100 <free@plt>
    1b20:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1b25:	f3 0f 10 44 24 1c    	movss  0x1c(%rsp),%xmm0
    1b2b:	49 c7 46 10 00 00 00 	movq   $0x0,0x10(%r14)
    1b32:	00 
    1b33:	41 89 5e 18          	mov    %ebx,0x18(%r14)
    1b37:	49 89 06             	mov    %rax,(%r14)
    1b3a:	4c 89 f0             	mov    %r14,%rax
    1b3d:	f3 41 0f 11 46 08    	movss  %xmm0,0x8(%r14)
    1b43:	48 83 c4 38          	add    $0x38,%rsp
    1b47:	5b                   	pop    %rbx
    1b48:	5d                   	pop    %rbp
    1b49:	41 5c                	pop    %r12
    1b4b:	41 5d                	pop    %r13
    1b4d:	41 5e                	pop    %r14
    1b4f:	41 5f                	pop    %r15
    1b51:	c3                   	ret
    1b52:	f3 0f 10 2d b2 04 00 	movss  0x4b2(%rip),%xmm5        # 200c <_IO_stdin_used+0xc>
    1b59:	00 
    1b5a:	f3 0f 11 6c 24 1c    	movss  %xmm5,0x1c(%rsp)
    1b60:	e9 66 fd ff ff       	jmp    18cb <resoudre_held_karp+0xeb>
    1b65:	48 63 fb             	movslq %ebx,%rdi
    1b68:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
    1b6d:	48 c1 e7 02          	shl    $0x2,%rdi
    1b71:	e8 0a f6 ff ff       	call   1180 <malloc@plt>
    1b76:	f3 0f 10 44 24 1c    	movss  0x1c(%rsp),%xmm0
    1b7c:	4c 8b 5c 24 08       	mov    0x8(%rsp),%r11
    1b81:	e9 6a ff ff ff       	jmp    1af0 <resoudre_held_karp+0x310>
    1b86:	f3 0f 10 25 7e 04 00 	movss  0x47e(%rip),%xmm4        # 200c <_IO_stdin_used+0xc>
    1b8d:	00 
    1b8e:	f3 0f 11 64 24 1c    	movss  %xmm4,0x1c(%rsp)
    1b94:	e9 4a fd ff ff       	jmp    18e3 <resoudre_held_karp+0x103>
    1b99:	31 c0                	xor    %eax,%eax
    1b9b:	e9 f9 fc ff ff       	jmp    1899 <resoudre_held_karp+0xb9>

0000000000001ba0 <compter_bits_actifs>:
    1ba0:	f3 0f 1e fa          	endbr64
    1ba4:	31 d2                	xor    %edx,%edx
    1ba6:	85 ff                	test   %edi,%edi
    1ba8:	74 10                	je     1bba <compter_bits_actifs+0x1a>
    1baa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1bb0:	8d 47 ff             	lea    -0x1(%rdi),%eax
    1bb3:	83 c2 01             	add    $0x1,%edx
    1bb6:	21 c7                	and    %eax,%edi
    1bb8:	75 f6                	jne    1bb0 <compter_bits_actifs+0x10>
    1bba:	89 d0                	mov    %edx,%eax
    1bbc:	c3                   	ret
    1bbd:	0f 1f 00             	nopl   (%rax)

0000000000001bc0 <afficher_solution>:
    1bc0:	f3 0f 1e fa          	endbr64
    1bc4:	41 55                	push   %r13
    1bc6:	41 54                	push   %r12
    1bc8:	55                   	push   %rbp
    1bc9:	53                   	push   %rbx
    1bca:	48 83 ec 08          	sub    $0x8,%rsp
    1bce:	44 8b 64 24 48       	mov    0x48(%rsp),%r12d
    1bd3:	48 8b 6c 24 30       	mov    0x30(%rsp),%rbp
    1bd8:	45 85 e4             	test   %r12d,%r12d
    1bdb:	7e 53                	jle    1c30 <afficher_solution+0x70>
    1bdd:	31 db                	xor    %ebx,%ebx
    1bdf:	4c 8d 2d be 05 00 00 	lea    0x5be(%rip),%r13        # 21a4 <_IO_stdin_used+0x1a4>
    1be6:	48 85 ed             	test   %rbp,%rbp
    1be9:	74 45                	je     1c30 <afficher_solution+0x70>
    1beb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1bf0:	8b 54 9d 00          	mov    0x0(%rbp,%rbx,4),%edx
    1bf4:	4c 89 ee             	mov    %r13,%rsi
    1bf7:	bf 02 00 00 00       	mov    $0x2,%edi
    1bfc:	31 c0                	xor    %eax,%eax
    1bfe:	48 83 c3 01          	add    $0x1,%rbx
    1c02:	e8 89 f5 ff ff       	call   1190 <__printf_chk@plt>
    1c07:	41 39 dc             	cmp    %ebx,%r12d
    1c0a:	7f e4                	jg     1bf0 <afficher_solution+0x30>
    1c0c:	8b 55 00             	mov    0x0(%rbp),%edx
    1c0f:	48 83 c4 08          	add    $0x8,%rsp
    1c13:	48 8d 35 91 05 00 00 	lea    0x591(%rip),%rsi        # 21ab <_IO_stdin_used+0x1ab>
    1c1a:	31 c0                	xor    %eax,%eax
    1c1c:	5b                   	pop    %rbx
    1c1d:	bf 02 00 00 00       	mov    $0x2,%edi
    1c22:	5d                   	pop    %rbp
    1c23:	41 5c                	pop    %r12
    1c25:	41 5d                	pop    %r13
    1c27:	e9 64 f5 ff ff       	jmp    1190 <__printf_chk@plt>
    1c2c:	0f 1f 40 00          	nopl   0x0(%rax)
    1c30:	48 83 c4 08          	add    $0x8,%rsp
    1c34:	48 8d 3d 4f 05 00 00 	lea    0x54f(%rip),%rdi        # 218a <_IO_stdin_used+0x18a>
    1c3b:	5b                   	pop    %rbx
    1c3c:	5d                   	pop    %rbp
    1c3d:	41 5c                	pop    %r12
    1c3f:	41 5d                	pop    %r13
    1c41:	e9 ca f4 ff ff       	jmp    1110 <puts@plt>
    1c46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c4d:	00 00 00 

0000000000001c50 <init_rand>:
    1c50:	f3 0f 1e fa          	endbr64
    1c54:	48 83 ec 08          	sub    $0x8,%rsp
    1c58:	31 ff                	xor    %edi,%edi
    1c5a:	e8 11 f5 ff ff       	call   1170 <time@plt>
    1c5f:	48 83 c4 08          	add    $0x8,%rsp
    1c63:	89 c7                	mov    %eax,%edi
    1c65:	e9 e6 f4 ff ff       	jmp    1150 <srand@plt>

Disassembly of section .fini:

0000000000001c6c <_fini>:
    1c6c:	f3 0f 1e fa          	endbr64
    1c70:	48 83 ec 08          	sub    $0x8,%rsp
    1c74:	48 83 c4 08          	add    $0x8,%rsp
    1c78:	c3                   	ret
