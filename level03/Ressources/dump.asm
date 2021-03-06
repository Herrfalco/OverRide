Dump of assembler code for function decrypt:
0x08048660 <+0>:	push   %ebp									< new stack frame
0x08048661 <+1>:	mov    %esp,%ebp							|

0x08048663 <+3>:	push   %edi									< save some registers
0x08048664 <+4>:	push   %esi									|

0x08048665 <+5>:	sub    $0x40,%esp							< 64 bytes for new frame

0x08048668 <+8>:	mov    %gs:0x14,%eax						< stack canary saved on stack
0x0804866e <+14>:	mov    %eax,-0xc(%ebp)						|
0x08048671 <+17>:	xor    %eax,%eax							|

0x08048673 <+19>:	movl   $0x757c7d51,-0x1d(%ebp)				< "Q}|u`sfg~sf{}|a3" in str (17 bytes)
0x0804867a <+26>:	movl   $0x67667360,-0x19(%ebp)				|
0x08048681 <+33>:	movl   $0x7b66737e,-0x15(%ebp)				|
0x08048688 <+40>:	movl   $0x33617c7d,-0x11(%ebp)				|
0x0804868f <+47>:	movb   $0x0,-0xd(%ebp)						|

0x08048693 <+51>:	push   %eax									< do nothing
0x08048694 <+52>:	xor    %eax,%eax							|
0x08048696 <+54>:	je     0x804869b <decrypt+59>				|
0x08048698 <+56>:	add    $0x4,%esp							|
0x0804869b <+59>:	pop    %eax									|

0x0804869c <+60>:	lea    -0x1d(%ebp),%eax						< length of str in len (7 bytes)
0x0804869f <+63>:	movl   $0xffffffff,-0x2c(%ebp)				|
0x080486a6 <+70>:	mov    %eax,%edx							|
0x080486a8 <+72>:	mov    $0x0,%eax							|
0x080486ad <+77>:	mov    -0x2c(%ebp),%ecx						|
0x080486b0 <+80>:	mov    %edx,%edi							|
0x080486b2 <+82>:	repnz scas %es:(%edi),%al					|
0x080486b4 <+84>:	mov    %ecx,%eax							|
0x080486b6 <+86>:	not    %eax									|
0x080486b8 <+88>:	sub    $0x1,%eax							|
0x080486bb <+91>:	mov    %eax,-0x24(%ebp)						|

0x080486be <+94>:	movl   $0x0,-0x28(%ebp)						< 0 in i (4 bytes)
0x080486c5 <+101>:	jmp    0x80486e5 <decrypt+133>
																{ do
0x080486c7 <+103>:	lea    -0x1d(%ebp),%eax						< str[i] = input (1 bytes) ^ str[i]
0x080486ca <+106>:	add    -0x28(%ebp),%eax						|
0x080486cd <+109>:	movzbl (%eax),%eax							|
0x080486d0 <+112>:	mov    %eax,%edx							|
0x080486d2 <+114>:	mov    0x8(%ebp),%eax						|
0x080486d5 <+117>:	xor    %edx,%eax							|
0x080486d7 <+119>:	mov    %eax,%edx							|
0x080486d9 <+121>:	lea    -0x1d(%ebp),%eax						|
0x080486dc <+124>:	add    -0x28(%ebp),%eax						|
0x080486df <+127>:	mov    %dl,(%eax)							|
0x080486e1 <+129>:	addl   $0x1,-0x28(%ebp)						< ++i

0x080486e5 <+133>:	mov    -0x28(%ebp),%eax						? while i < len
0x080486e8 <+136>:	cmp    -0x24(%ebp),%eax						|
0x080486eb <+139>:	jb     0x80486c7 <decrypt+103>				}

0x080486ed <+141>:	lea    -0x1d(%ebp),%eax						? str == "Congratulations!" (17 bytes)
0x080486f0 <+144>:	mov    %eax,%edx							|
0x080486f2 <+146>:	mov    $0x80489c3,%eax						|
0x080486f7 <+151>:	mov    $0x11,%ecx							|
0x080486fc <+156>:	mov    %edx,%esi							|
0x080486fe <+158>:	mov    %eax,%edi							|
0x08048700 <+160>:	repz cmpsb %es:(%edi),%ds:(%esi)			|
0x08048702 <+162>:	seta   %dl									|
0x08048705 <+165>:	setb   %al									|
0x08048708 <+168>:	mov    %edx,%ecx							|
0x0804870a <+170>:	sub    %al,%cl								|
0x0804870c <+172>:	mov    %ecx,%eax							|
0x0804870e <+174>:	movsbl %al,%eax								|
0x08048711 <+177>:	test   %eax,%eax							|
0x08048713 <+179>:	jne    0x8048723 <decrypt+195>				{

0x08048715 <+181>:	movl   $0x80489d4,(%esp)					< "/bin/sh" as parameter for system
0x0804871c <+188>:	call   0x80484e0 <system@plt>				> system

0x08048721 <+193>:	jmp    0x804872f <decrypt+207>
																} else {
0x08048723 <+195>:	movl   $0x80489dc,(%esp)					< "\nInvalid Password" as parameter for puts
0x0804872a <+202>:	call   0x80484d0 <puts@plt>					> puts
																}
0x0804872f <+207>:	mov    -0xc(%ebp),%esi						? corrupted canary
0x08048732 <+210>:	xor    %gs:0x14,%esi						|
0x08048739 <+217>:	je     0x8048740 <decrypt+224>				{

0x0804873b <+219>:	call   0x80484c0 <__stack_chk_fail@plt>		> stack_chk_fail
																}
0x08048740 <+224>:	add    $0x40,%esp							< free frame memory

0x08048743 <+227>:	pop    %esi									< load saved registers
0x08048744 <+228>:	pop    %edi									|

0x08048745 <+229>:	pop    %ebp									< return from decrypt function
0x08048746 <+230>:	ret											|

Dump of assembler code for function test:
0x08048747 <+0>:	push   %ebp									< new stack frame
0x08048748 <+1>:	mov    %esp,%ebp							|

0x0804874a <+3>:	sub    $0x28,%esp							< 40 bytes for new frame

0x0804874d <+6>:	mov    0x8(%ebp),%eax						< nb2 - nb1 (4 bytes) in result
0x08048750 <+9>:	mov    0xc(%ebp),%edx						|
0x08048753 <+12>:	mov    %edx,%ecx							|
0x08048755 <+14>:	sub    %eax,%ecx							|
0x08048757 <+16>:	mov    %ecx,%eax							|
0x08048759 <+18>:	mov    %eax,-0xc(%ebp)						|

0x0804875c <+21>:	cmpl   $0x15,-0xc(%ebp)						? result <= 21
0x08048760 <+25>:	ja     0x804884a <test+259>					{

0x08048766 <+31>:	mov    -0xc(%ebp),%eax						> jmp to *(*(0x80489f0) + result * 4)
0x08048769 <+34>:	shl    $0x2,%eax							|
0x0804876c <+37>:	add    $0x80489f0,%eax						|
0x08048771 <+42>:	mov    (%eax),%eax							|
0x08048773 <+44>:	jmp    *%eax								|

0x08048775 <+46>:	mov    -0xc(%ebp),%eax						< result as parameter for decrypt
0x08048778 <+49>:	mov    %eax,(%esp)							|
0x0804877b <+52>:	call   0x8048660 <decrypt>					> decrypt

0x08048780 <+57>:	jmp    0x8048858 <test+273>					< return

0x08048785 <+62>:	mov    -0xc(%ebp),%eax						< result as parameter for decrypt
0x08048788 <+65>:	mov    %eax,(%esp)                          |
0x0804878b <+68>:	call   0x8048660 <decrypt>					> decrypt

0x08048790 <+73>:	jmp    0x8048858 <test+273>					< return

0x08048795 <+78>:	mov    -0xc(%ebp),%eax						< result as parameter for decrypt
0x08048798 <+81>:	mov    %eax,(%esp)                          |
0x0804879b <+84>:	call   0x8048660 <decrypt>                  > decrypt

0x080487a0 <+89>:	jmp    0x8048858 <test+273>					< return

0x080487a5 <+94>:	mov    -0xc(%ebp),%eax						< result as parameter for decrypt
0x080487a8 <+97>:	mov    %eax,(%esp)                          |
0x080487ab <+100>:	call   0x8048660 <decrypt>                  > decrypt

0x080487b0 <+105>:	jmp    0x8048858 <test+273>					< return

0x080487b5 <+110>:	mov    -0xc(%ebp),%eax						< result as parameter for decrypt
0x080487b8 <+113>:	mov    %eax,(%esp)                          |
0x080487bb <+116>:	call   0x8048660 <decrypt>                  > decrypt

0x080487c0 <+121>:	jmp    0x8048858 <test+273>					< return

0x080487c5 <+126>:	mov    -0xc(%ebp),%eax						< result as parameter for decrypt
0x080487c8 <+129>:	mov    %eax,(%esp)                          |
0x080487cb <+132>:	call   0x8048660 <decrypt>                  > decrypt

0x080487d0 <+137>:	jmp    0x8048858 <test+273>					< return

0x080487d5 <+142>:	mov    -0xc(%ebp),%eax						< result as parameter for decrypt
0x080487d8 <+145>:	mov    %eax,(%esp)                          |
0x080487db <+148>:	call   0x8048660 <decrypt>                  > decrypt

0x080487e0 <+153>:	jmp    0x8048858 <test+273>					< return

0x080487e2 <+155>:	mov    -0xc(%ebp),%eax						< result as parameter for decrypt
0x080487e5 <+158>:	mov    %eax,(%esp)                          |
0x080487e8 <+161>:	call   0x8048660 <decrypt>                  > decrypt

0x080487ed <+166>:	jmp    0x8048858 <test+273>					< return

0x080487ef <+168>:	mov    -0xc(%ebp),%eax						< result as parameter for decrypt
0x080487f2 <+171>:	mov    %eax,(%esp)                          |
0x080487f5 <+174>:	call   0x8048660 <decrypt>                  > decrypt

0x080487fa <+179>:	jmp    0x8048858 <test+273>					< return

0x080487fc <+181>:	mov    -0xc(%ebp),%eax						< result as parameter for decrypt
0x080487ff <+184>:	mov    %eax,(%esp)                          |
0x08048802 <+187>:	call   0x8048660 <decrypt>                  > decrypt

0x08048807 <+192>:	jmp    0x8048858 <test+273>					< return

0x08048809 <+194>:	mov    -0xc(%ebp),%eax						< result as parameter for decrypt
0x0804880c <+197>:	mov    %eax,(%esp)                          |
0x0804880f <+200>:	call   0x8048660 <decrypt>                  > decrypt

0x08048814 <+205>:	jmp    0x8048858 <test+273>					< return

0x08048816 <+207>:	mov    -0xc(%ebp),%eax						< result as parameter for decrypt
0x08048819 <+210>:	mov    %eax,(%esp)                          |
0x0804881c <+213>:	call   0x8048660 <decrypt>                  > decrypt

0x08048821 <+218>:	jmp    0x8048858 <test+273>					< return

0x08048823 <+220>:	mov    -0xc(%ebp),%eax						< result as parameter for decrypt
0x08048826 <+223>:	mov    %eax,(%esp)                          |
0x08048829 <+226>:	call   0x8048660 <decrypt>                  > decrypt

0x0804882e <+231>:	jmp    0x8048858 <test+273>					< return

0x08048830 <+233>:	mov    -0xc(%ebp),%eax						< result as parameter for decrypt
0x08048833 <+236>:	mov    %eax,(%esp)                          |
0x08048836 <+239>:	call   0x8048660 <decrypt>                  > decrypt

0x0804883b <+244>:	jmp    0x8048858 <test+273>					< return

0x0804883d <+246>:	mov    -0xc(%ebp),%eax						< result as parameter for decrypt
0x08048840 <+249>:	mov    %eax,(%esp)                          |
0x08048843 <+252>:	call   0x8048660 <decrypt>                  > decrypt

0x08048848 <+257>:	jmp    0x8048858 <test+273>					< return
																}
0x0804884a <+259>:	call   0x8048520 <rand@plt>					> rand

0x0804884f <+264>:	mov    %eax,(%esp)							< rand result as parameter for decrypt
0x08048852 <+267>:	call   0x8048660 <decrypt>					> decrypt

0x08048857 <+272>:	nop											< return from function test
0x08048858 <+273>:	leave										|
0x08048859 <+274>:	ret											|

Dump of assembler code for function main:
0x0804885a <+0>:	push   %ebp									< new stack frame
0x0804885b <+1>:	mov    %esp,%ebp							|

0x0804885d <+3>:	and    $0xfffffff0,%esp						< 16 bytes stack alignment

0x08048860 <+6>:	sub    $0x20,%esp							< 32 bytes for new frame

0x08048863 <+9>:	push   %eax									< do nothing
0x08048864 <+10>:	xor    %eax,%eax							|
0x08048866 <+12>:	je     0x804886b <main+17>					|
0x08048868 <+14>:	add    $0x4,%esp							|
0x0804886b <+17>:	pop    %eax									|

0x0804886c <+18>:	movl   $0x0,(%esp)							< 0 as parameter for time
0x08048873 <+25>:	call   0x80484b0 <time@plt>					> time

0x08048878 <+30>:	mov    %eax,(%esp)							< time result as parameter for srand
0x0804887b <+33>:	call   0x8048500 <srand@plt>				> srand

0x08048880 <+38>:	movl   $0x8048a48,(%esp)					< "***********************************" as parameter for puts
0x08048887 <+45>:	call   0x80484d0 <puts@plt>					> puts

0x0804888c <+50>:	movl   $0x8048a6c,(%esp)					< "*\t\tlevel03\t\t**" as parameter for puts
0x08048893 <+57>:	call   0x80484d0 <puts@plt>					> puts

0x08048898 <+62>:	movl   $0x8048a48,(%esp)					< "***********************************" as parameter for puts
0x0804889f <+69>:	call   0x80484d0 <puts@plt>					> puts

0x080488a4 <+74>:	mov    $0x8048a7b,%eax						< "Password:" as parameter for printf
0x080488a9 <+79>:	mov    %eax,(%esp)							|
0x080488ac <+82>:	call   0x8048480 <printf@plt>				> printf

0x080488b1 <+87>:	mov    $0x8048a85,%eax						< "%d" and nb (4 bytes) in registers
0x080488b6 <+92>:	lea    0x1c(%esp),%edx						|
0x080488ba <+96>:	mov    %edx,0x4(%esp)						< nb as 2nd parameter for scanf
0x080488be <+100>:	mov    %eax,(%esp)							< "%d" as 1st parameter
0x080488c1 <+103>:	call   0x8048530 <__isoc99_scanf@plt>		> scanf

0x080488c6 <+108>:	mov    0x1c(%esp),%eax						< nb in register
0x080488ca <+112>:	movl   $0x1337d00d,0x4(%esp)				< 322424845 as 2nd parameter for test
0x080488d2 <+120>:	mov    %eax,(%esp)							< nb as 1st parameter
0x080488d5 <+123>:	call   0x8048747 <test>						> test

0x080488da <+128>:	mov    $0x0,%eax							< return 0
0x080488df <+133>:	leave										|
0x080488e0 <+134>:	ret											|
