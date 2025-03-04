_Z24fiat_25519_addcarryx_u51PmPhhmm:
        push    rbp
        mov     rbp, rsp
        mov     al, dl
        mov     qword ptr [rbp - 8], rdi
        mov     qword ptr [rbp - 16], rsi
        mov     byte ptr [rbp - 17], al
        mov     qword ptr [rbp - 32], rcx
        mov     qword ptr [rbp - 40], r8
        movzx   eax, byte ptr [rbp - 17]
        add     rax, qword ptr [rbp - 32]
        add     rax, qword ptr [rbp - 40]
        mov     qword ptr [rbp - 48], rax
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 48]
        mov     qword ptr [rbp - 56], rax
        mov     rax, qword ptr [rbp - 48]
        shr     rax, 51
        mov     byte ptr [rbp - 57], al
        mov     rcx, qword ptr [rbp - 56]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax], rcx
        mov     cl, byte ptr [rbp - 57]
        mov     rax, qword ptr [rbp - 16]
        mov     byte ptr [rax], cl
        pop     rbp
        ret

_Z25fiat_25519_subborrowx_u51PmPhhmm:
        push    rbp
        mov     rbp, rsp
        mov     al, dl
        mov     qword ptr [rbp - 8], rdi
        mov     qword ptr [rbp - 16], rsi
        mov     byte ptr [rbp - 17], al
        mov     qword ptr [rbp - 32], rcx
        mov     qword ptr [rbp - 40], r8
        mov     rax, qword ptr [rbp - 32]
        movzx   ecx, byte ptr [rbp - 17]
        sub     rax, rcx
        sub     rax, qword ptr [rbp - 40]
        mov     qword ptr [rbp - 48], rax
        mov     rax, qword ptr [rbp - 48]
        sar     rax, 51
        mov     byte ptr [rbp - 49], al
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 48]
        mov     qword ptr [rbp - 64], rax
        mov     rcx, qword ptr [rbp - 64]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax], rcx
        movsx   ecx, byte ptr [rbp - 49]
        xor     eax, eax
        sub     eax, ecx
        mov     cl, al
        mov     rax, qword ptr [rbp - 16]
        mov     byte ptr [rax], cl
        pop     rbp
        ret

_Z22fiat_25519_cmovznz_u64Pmhmm:
        push    rbp
        mov     rbp, rsp
        mov     al, sil
        mov     qword ptr [rbp - 8], rdi
        mov     byte ptr [rbp - 9], al
        mov     qword ptr [rbp - 24], rdx
        mov     qword ptr [rbp - 32], rcx
        cmp     byte ptr [rbp - 9], 0
        setne   al
        xor     al, -1
        xor     al, -1
        and     al, 1
        mov     byte ptr [rbp - 33], al
        movzx   ecx, byte ptr [rbp - 33]
        xor     eax, eax
        sub     eax, ecx
        movsx   rax, al
        and     rax, -1
        mov     qword ptr [rbp - 48], rax
        mov     rax, qword ptr [rbp - 48]
        and     rax, qword ptr [rbp - 32]
        mov     rcx, qword ptr [rbp - 48]
        xor     rcx, -1
        and     rcx, qword ptr [rbp - 24]
        or      rax, rcx
        mov     qword ptr [rbp - 56], rax
        mov     rcx, qword ptr [rbp - 56]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax], rcx
        pop     rbp
        ret

_Z20fiat_25519_carry_mulPmPKmS1_:
        push    rbp
        mov     rbp, rsp
        push    r14
        push    rbx
        sub     rsp, 592
        mov     qword ptr [rbp - 24], rdi
        mov     qword ptr [rbp - 32], rsi
        mov     qword ptr [rbp - 40], rdx
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 32]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 32]
        lea     rdx, [rcx + 8*rcx]
        lea     rcx, [rcx + 2*rdx]
        mul     rcx
        mov     qword ptr [rbp - 56], rdx
        mov     qword ptr [rbp - 64], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 32]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 24]
        lea     rdx, [rcx + 8*rcx]
        lea     rcx, [rcx + 2*rdx]
        mul     rcx
        mov     qword ptr [rbp - 72], rdx
        mov     qword ptr [rbp - 80], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 32]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 16]
        lea     rdx, [rcx + 8*rcx]
        lea     rcx, [rcx + 2*rdx]
        mul     rcx
        mov     qword ptr [rbp - 88], rdx
        mov     qword ptr [rbp - 96], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 32]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 8]
        lea     rdx, [rcx + 8*rcx]
        lea     rcx, [rcx + 2*rdx]
        mul     rcx
        mov     qword ptr [rbp - 104], rdx
        mov     qword ptr [rbp - 112], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 24]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 32]
        lea     rdx, [rcx + 8*rcx]
        lea     rcx, [rcx + 2*rdx]
        mul     rcx
        mov     qword ptr [rbp - 120], rdx
        mov     qword ptr [rbp - 128], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 24]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 24]
        lea     rdx, [rcx + 8*rcx]
        lea     rcx, [rcx + 2*rdx]
        mul     rcx
        mov     qword ptr [rbp - 136], rdx
        mov     qword ptr [rbp - 144], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 24]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 16]
        lea     rdx, [rcx + 8*rcx]
        lea     rcx, [rcx + 2*rdx]
        mul     rcx
        mov     qword ptr [rbp - 152], rdx
        mov     qword ptr [rbp - 160], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 16]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 32]
        lea     rdx, [rcx + 8*rcx]
        lea     rcx, [rcx + 2*rdx]
        mul     rcx
        mov     qword ptr [rbp - 168], rdx
        mov     qword ptr [rbp - 176], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 16]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 24]
        lea     rdx, [rcx + 8*rcx]
        lea     rcx, [rcx + 2*rdx]
        mul     rcx
        mov     qword ptr [rbp - 184], rdx
        mov     qword ptr [rbp - 192], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 8]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 32]
        lea     rdx, [rcx + 8*rcx]
        lea     rcx, [rcx + 2*rdx]
        mul     rcx
        mov     qword ptr [rbp - 200], rdx
        mov     qword ptr [rbp - 208], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 32]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx]
        mul     rcx
        mov     qword ptr [rbp - 216], rdx
        mov     qword ptr [rbp - 224], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 24]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 8]
        mul     rcx
        mov     qword ptr [rbp - 232], rdx
        mov     qword ptr [rbp - 240], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 24]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx]
        mul     rcx
        mov     qword ptr [rbp - 248], rdx
        mov     qword ptr [rbp - 256], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 16]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 16]
        mul     rcx
        mov     qword ptr [rbp - 264], rdx
        mov     qword ptr [rbp - 272], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 16]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 8]
        mul     rcx
        mov     qword ptr [rbp - 280], rdx
        mov     qword ptr [rbp - 288], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 16]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx]
        mul     rcx
        mov     qword ptr [rbp - 296], rdx
        mov     qword ptr [rbp - 304], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 8]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 24]
        mul     rcx
        mov     qword ptr [rbp - 312], rdx
        mov     qword ptr [rbp - 320], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 8]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 16]
        mul     rcx
        mov     qword ptr [rbp - 328], rdx
        mov     qword ptr [rbp - 336], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 8]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 8]
        mul     rcx
        mov     qword ptr [rbp - 344], rdx
        mov     qword ptr [rbp - 352], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax + 8]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx]
        mul     rcx
        mov     qword ptr [rbp - 360], rdx
        mov     qword ptr [rbp - 368], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 32]
        mul     rcx
        mov     qword ptr [rbp - 376], rdx
        mov     qword ptr [rbp - 384], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 24]
        mul     rcx
        mov     qword ptr [rbp - 392], rdx
        mov     qword ptr [rbp - 400], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 16]
        mul     rcx
        mov     qword ptr [rbp - 408], rdx
        mov     qword ptr [rbp - 416], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx + 8]
        mul     rcx
        mov     qword ptr [rbp - 424], rdx
        mov     qword ptr [rbp - 432], rax
        mov     rax, qword ptr [rbp - 32]
        mov     rax, qword ptr [rax]
        mov     rcx, qword ptr [rbp - 40]
        mov     rcx, qword ptr [rcx]
        mul     rcx
        mov     qword ptr [rbp - 440], rdx
        mov     qword ptr [rbp - 448], rax
        mov     rcx, qword ptr [rbp - 448]
        mov     rax, qword ptr [rbp - 440]
        mov     rsi, qword ptr [rbp - 208]
        mov     rdx, qword ptr [rbp - 200]
        mov     r8, qword ptr [rbp - 192]
        mov     rdi, qword ptr [rbp - 184]
        mov     r10, qword ptr [rbp - 160]
        mov     r9, qword ptr [rbp - 152]
        mov     rbx, qword ptr [rbp - 112]
        mov     r11, qword ptr [rbp - 104]
        add     r10, rbx
        adc     r9, r11
        add     r8, r10
        adc     rdi, r9
        add     rsi, r8
        adc     rdx, rdi
        add     rcx, rsi
        adc     rax, rdx
        mov     qword ptr [rbp - 464], rcx
        mov     qword ptr [rbp - 456], rax
        mov     rcx, qword ptr [rbp - 464]
        mov     rax, qword ptr [rbp - 456]
        shld    rax, rcx, 13
        mov     qword ptr [rbp - 472], rax
        mov     rax, qword ptr [rbp - 464]
        movabs  rcx, 2251799813685247
        and     rax, rcx
        mov     qword ptr [rbp - 480], rax
        mov     rdx, qword ptr [rbp - 384]
        mov     rax, qword ptr [rbp - 376]
        mov     rdi, qword ptr [rbp - 320]
        mov     rsi, qword ptr [rbp - 312]
        mov     r9, qword ptr [rbp - 272]
        mov     r8, qword ptr [rbp - 264]
        mov     r11, qword ptr [rbp - 240]
        mov     r10, qword ptr [rbp - 232]
        mov     r14, qword ptr [rbp - 224]
        mov     rbx, qword ptr [rbp - 216]
        add     r11, r14
        adc     r10, rbx
        add     r9, r11
        adc     r8, r10
        add     rdi, r9
        adc     rsi, r8
        add     rdx, rdi
        adc     rax, rsi
        mov     qword ptr [rbp - 496], rdx
        mov     qword ptr [rbp - 488], rax
        mov     rdx, qword ptr [rbp - 400]
        mov     rax, qword ptr [rbp - 392]
        mov     rdi, qword ptr [rbp - 336]
        mov     rsi, qword ptr [rbp - 328]
        mov     r9, qword ptr [rbp - 288]
        mov     r8, qword ptr [rbp - 280]
        mov     r11, qword ptr [rbp - 256]
        mov     r10, qword ptr [rbp - 248]
        mov     r14, qword ptr [rbp - 64]
        mov     rbx, qword ptr [rbp - 56]
        add     r11, r14
        adc     r10, rbx
        add     r9, r11
        adc     r8, r10
        add     rdi, r9
        adc     rsi, r8
        add     rdx, rdi
        adc     rax, rsi
        mov     qword ptr [rbp - 512], rdx
        mov     qword ptr [rbp - 504], rax
        mov     rdx, qword ptr [rbp - 416]
        mov     rax, qword ptr [rbp - 408]
        mov     rdi, qword ptr [rbp - 352]
        mov     rsi, qword ptr [rbp - 344]
        mov     r9, qword ptr [rbp - 304]
        mov     r8, qword ptr [rbp - 296]
        mov     r11, qword ptr [rbp - 128]
        mov     r10, qword ptr [rbp - 120]
        mov     r14, qword ptr [rbp - 80]
        mov     rbx, qword ptr [rbp - 72]
        add     r11, r14
        adc     r10, rbx
        add     r9, r11
        adc     r8, r10
        add     rdi, r9
        adc     rsi, r8
        add     rdx, rdi
        adc     rax, rsi
        mov     qword ptr [rbp - 528], rdx
        mov     qword ptr [rbp - 520], rax
        mov     rdx, qword ptr [rbp - 432]
        mov     rax, qword ptr [rbp - 424]
        mov     rdi, qword ptr [rbp - 368]
        mov     rsi, qword ptr [rbp - 360]
        mov     r9, qword ptr [rbp - 176]
        mov     r8, qword ptr [rbp - 168]
        mov     r11, qword ptr [rbp - 144]
        mov     r10, qword ptr [rbp - 136]
        mov     r14, qword ptr [rbp - 96]
        mov     rbx, qword ptr [rbp - 88]
        add     r11, r14
        adc     r10, rbx
        add     r9, r11
        adc     r8, r10
        add     rdi, r9
        adc     rsi, r8
        add     rdx, rdi
        adc     rax, rsi
        mov     qword ptr [rbp - 544], rdx
        mov     qword ptr [rbp - 536], rax
        mov     rdx, qword ptr [rbp - 472]
        mov     rsi, qword ptr [rbp - 544]
        mov     rax, qword ptr [rbp - 536]
        add     rdx, rsi
        adc     rax, 0
        mov     qword ptr [rbp - 560], rdx
        mov     qword ptr [rbp - 552], rax
        mov     rdx, qword ptr [rbp - 560]
        mov     rax, qword ptr [rbp - 552]
        shld    rax, rdx, 13
        mov     qword ptr [rbp - 568], rax
        mov     rax, qword ptr [rbp - 560]
        and     rax, rcx
        mov     qword ptr [rbp - 576], rax
        mov     rdx, qword ptr [rbp - 568]
        mov     rsi, qword ptr [rbp - 528]
        mov     rax, qword ptr [rbp - 520]
        add     rdx, rsi
        adc     rax, 0
        mov     qword ptr [rbp - 592], rdx
        mov     qword ptr [rbp - 584], rax
        mov     rdx, qword ptr [rbp - 592]
        mov     rax, qword ptr [rbp - 584]
        shld    rax, rdx, 13
        mov     qword ptr [rbp - 600], rax
        mov     rax, qword ptr [rbp - 592]
        and     rax, rcx
        mov     qword ptr [rbp - 608], rax
        mov     rdx, qword ptr [rbp - 600]
        mov     rsi, qword ptr [rbp - 512]
        mov     rax, qword ptr [rbp - 504]
        add     rdx, rsi
        adc     rax, 0
        mov     qword ptr [rbp - 624], rdx
        mov     qword ptr [rbp - 616], rax
        mov     rdx, qword ptr [rbp - 624]
        mov     rax, qword ptr [rbp - 616]
        shld    rax, rdx, 13
        mov     qword ptr [rbp - 632], rax
        mov     rax, qword ptr [rbp - 624]
        and     rax, rcx
        mov     qword ptr [rbp - 640], rax
        mov     rdx, qword ptr [rbp - 632]
        mov     rsi, qword ptr [rbp - 496]
        mov     rax, qword ptr [rbp - 488]
        add     rdx, rsi
        adc     rax, 0
        mov     qword ptr [rbp - 656], rdx
        mov     qword ptr [rbp - 648], rax
        mov     rdx, qword ptr [rbp - 656]
        mov     rax, qword ptr [rbp - 648]
        shld    rax, rdx, 13
        mov     qword ptr [rbp - 664], rax
        mov     rax, qword ptr [rbp - 656]
        and     rax, rcx
        mov     qword ptr [rbp - 672], rax
        imul    rax, qword ptr [rbp - 664], 19
        mov     qword ptr [rbp - 680], rax
        mov     rax, qword ptr [rbp - 480]
        add     rax, qword ptr [rbp - 680]
        mov     qword ptr [rbp - 688], rax
        mov     rax, qword ptr [rbp - 688]
        shr     rax, 51
        mov     qword ptr [rbp - 696], rax
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 688]
        mov     qword ptr [rbp - 704], rax
        mov     rax, qword ptr [rbp - 696]
        add     rax, qword ptr [rbp - 576]
        mov     qword ptr [rbp - 712], rax
        mov     rax, qword ptr [rbp - 712]
        shr     rax, 51
        mov     byte ptr [rbp - 713], al
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 712]
        mov     qword ptr [rbp - 728], rax
        movzx   eax, byte ptr [rbp - 713]
        add     rax, qword ptr [rbp - 608]
        mov     qword ptr [rbp - 736], rax
        mov     rcx, qword ptr [rbp - 704]
        mov     rax, qword ptr [rbp - 24]
        mov     qword ptr [rax], rcx
        mov     rcx, qword ptr [rbp - 728]
        mov     rax, qword ptr [rbp - 24]
        mov     qword ptr [rax + 8], rcx
        mov     rcx, qword ptr [rbp - 736]
        mov     rax, qword ptr [rbp - 24]
        mov     qword ptr [rax + 16], rcx
        mov     rcx, qword ptr [rbp - 640]
        mov     rax, qword ptr [rbp - 24]
        mov     qword ptr [rax + 24], rcx
        mov     rcx, qword ptr [rbp - 672]
        mov     rax, qword ptr [rbp - 24]
        mov     qword ptr [rax + 32], rcx
        add     rsp, 592
        pop     rbx
        pop     r14
        pop     rbp
        ret

_Z23fiat_25519_carry_squarePmPKm:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 480
        mov     qword ptr [rbp - 8], rdi
        mov     qword ptr [rbp - 16], rsi
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 32]
        lea     rcx, [rax + 8*rax]
        lea     rax, [rax + 2*rcx]
        mov     qword ptr [rbp - 24], rax
        mov     rax, qword ptr [rbp - 24]
        add     rax, rax
        mov     qword ptr [rbp - 32], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 32]
        add     rax, rax
        mov     qword ptr [rbp - 40], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 24]
        lea     rcx, [rax + 8*rax]
        lea     rax, [rax + 2*rcx]
        mov     qword ptr [rbp - 48], rax
        mov     rax, qword ptr [rbp - 48]
        add     rax, rax
        mov     qword ptr [rbp - 56], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 24]
        add     rax, rax
        mov     qword ptr [rbp - 64], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 16]
        add     rax, rax
        mov     qword ptr [rbp - 72], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 8]
        add     rax, rax
        mov     qword ptr [rbp - 80], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 32]
        mov     rcx, qword ptr [rbp - 24]
        mul     rcx
        mov     qword ptr [rbp - 88], rdx
        mov     qword ptr [rbp - 96], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 24]
        mov     rcx, qword ptr [rbp - 32]
        mul     rcx
        mov     qword ptr [rbp - 104], rdx
        mov     qword ptr [rbp - 112], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 24]
        mov     rcx, qword ptr [rbp - 48]
        mul     rcx
        mov     qword ptr [rbp - 120], rdx
        mov     qword ptr [rbp - 128], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 16]
        mov     rcx, qword ptr [rbp - 32]
        mul     rcx
        mov     qword ptr [rbp - 136], rdx
        mov     qword ptr [rbp - 144], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 16]
        mov     rcx, qword ptr [rbp - 56]
        mul     rcx
        mov     qword ptr [rbp - 152], rdx
        mov     qword ptr [rbp - 160], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rcx, qword ptr [rax + 16]
        mov     rax, rcx
        mul     rcx
        mov     qword ptr [rbp - 168], rdx
        mov     qword ptr [rbp - 176], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 8]
        mov     rcx, qword ptr [rbp - 32]
        mul     rcx
        mov     qword ptr [rbp - 184], rdx
        mov     qword ptr [rbp - 192], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 8]
        mov     rcx, qword ptr [rbp - 64]
        mul     rcx
        mov     qword ptr [rbp - 200], rdx
        mov     qword ptr [rbp - 208], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 8]
        mov     rcx, qword ptr [rbp - 72]
        mul     rcx
        mov     qword ptr [rbp - 216], rdx
        mov     qword ptr [rbp - 224], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rcx, qword ptr [rax + 8]
        mov     rax, rcx
        mul     rcx
        mov     qword ptr [rbp - 232], rdx
        mov     qword ptr [rbp - 240], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax]
        mov     rcx, qword ptr [rbp - 40]
        mul     rcx
        mov     qword ptr [rbp - 248], rdx
        mov     qword ptr [rbp - 256], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax]
        mov     rcx, qword ptr [rbp - 64]
        mul     rcx
        mov     qword ptr [rbp - 264], rdx
        mov     qword ptr [rbp - 272], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax]
        mov     rcx, qword ptr [rbp - 72]
        mul     rcx
        mov     qword ptr [rbp - 280], rdx
        mov     qword ptr [rbp - 288], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax]
        mov     rcx, qword ptr [rbp - 80]
        mul     rcx
        mov     qword ptr [rbp - 296], rdx
        mov     qword ptr [rbp - 304], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rcx, qword ptr [rax]
        mov     rax, rcx
        mul     rcx
        mov     qword ptr [rbp - 312], rdx
        mov     qword ptr [rbp - 320], rax
        mov     rcx, qword ptr [rbp - 320]
        mov     rax, qword ptr [rbp - 312]
        mov     rsi, qword ptr [rbp - 192]
        mov     rdx, qword ptr [rbp - 184]
        mov     r8, qword ptr [rbp - 160]
        mov     rdi, qword ptr [rbp - 152]
        add     rsi, r8
        adc     rdx, rdi
        add     rcx, rsi
        adc     rax, rdx
        mov     qword ptr [rbp - 336], rcx
        mov     qword ptr [rbp - 328], rax
        mov     rcx, qword ptr [rbp - 336]
        mov     rax, qword ptr [rbp - 328]
        shld    rax, rcx, 13
        mov     qword ptr [rbp - 344], rax
        mov     rax, qword ptr [rbp - 336]
        movabs  rcx, 2251799813685247
        and     rax, rcx
        mov     qword ptr [rbp - 352], rax
        mov     rdx, qword ptr [rbp - 256]
        mov     rax, qword ptr [rbp - 248]
        mov     rdi, qword ptr [rbp - 208]
        mov     rsi, qword ptr [rbp - 200]
        mov     r9, qword ptr [rbp - 176]
        mov     r8, qword ptr [rbp - 168]
        add     rdi, r9
        adc     rsi, r8
        add     rdx, rdi
        adc     rax, rsi
        mov     qword ptr [rbp - 368], rdx
        mov     qword ptr [rbp - 360], rax
        mov     rdx, qword ptr [rbp - 272]
        mov     rax, qword ptr [rbp - 264]
        mov     rdi, qword ptr [rbp - 224]
        mov     rsi, qword ptr [rbp - 216]
        mov     r9, qword ptr [rbp - 96]
        mov     r8, qword ptr [rbp - 88]
        add     rdi, r9
        adc     rsi, r8
        add     rdx, rdi
        adc     rax, rsi
        mov     qword ptr [rbp - 384], rdx
        mov     qword ptr [rbp - 376], rax
        mov     rdx, qword ptr [rbp - 288]
        mov     rax, qword ptr [rbp - 280]
        mov     rdi, qword ptr [rbp - 240]
        mov     rsi, qword ptr [rbp - 232]
        mov     r9, qword ptr [rbp - 112]
        mov     r8, qword ptr [rbp - 104]
        add     rdi, r9
        adc     rsi, r8
        add     rdx, rdi
        adc     rax, rsi
        mov     qword ptr [rbp - 400], rdx
        mov     qword ptr [rbp - 392], rax
        mov     rdx, qword ptr [rbp - 304]
        mov     rax, qword ptr [rbp - 296]
        mov     rdi, qword ptr [rbp - 144]
        mov     rsi, qword ptr [rbp - 136]
        mov     r9, qword ptr [rbp - 128]
        mov     r8, qword ptr [rbp - 120]
        add     rdi, r9
        adc     rsi, r8
        add     rdx, rdi
        adc     rax, rsi
        mov     qword ptr [rbp - 416], rdx
        mov     qword ptr [rbp - 408], rax
        mov     rdx, qword ptr [rbp - 344]
        mov     rsi, qword ptr [rbp - 416]
        mov     rax, qword ptr [rbp - 408]
        add     rdx, rsi
        adc     rax, 0
        mov     qword ptr [rbp - 432], rdx
        mov     qword ptr [rbp - 424], rax
        mov     rdx, qword ptr [rbp - 432]
        mov     rax, qword ptr [rbp - 424]
        shld    rax, rdx, 13
        mov     qword ptr [rbp - 440], rax
        mov     rax, qword ptr [rbp - 432]
        and     rax, rcx
        mov     qword ptr [rbp - 448], rax
        mov     rdx, qword ptr [rbp - 440]
        mov     rsi, qword ptr [rbp - 400]
        mov     rax, qword ptr [rbp - 392]
        add     rdx, rsi
        adc     rax, 0
        mov     qword ptr [rbp - 464], rdx
        mov     qword ptr [rbp - 456], rax
        mov     rdx, qword ptr [rbp - 464]
        mov     rax, qword ptr [rbp - 456]
        shld    rax, rdx, 13
        mov     qword ptr [rbp - 472], rax
        mov     rax, qword ptr [rbp - 464]
        and     rax, rcx
        mov     qword ptr [rbp - 480], rax
        mov     rdx, qword ptr [rbp - 472]
        mov     rsi, qword ptr [rbp - 384]
        mov     rax, qword ptr [rbp - 376]
        add     rdx, rsi
        adc     rax, 0
        mov     qword ptr [rbp - 496], rdx
        mov     qword ptr [rbp - 488], rax
        mov     rdx, qword ptr [rbp - 496]
        mov     rax, qword ptr [rbp - 488]
        shld    rax, rdx, 13
        mov     qword ptr [rbp - 504], rax
        mov     rax, qword ptr [rbp - 496]
        and     rax, rcx
        mov     qword ptr [rbp - 512], rax
        mov     rdx, qword ptr [rbp - 504]
        mov     rsi, qword ptr [rbp - 368]
        mov     rax, qword ptr [rbp - 360]
        add     rdx, rsi
        adc     rax, 0
        mov     qword ptr [rbp - 528], rdx
        mov     qword ptr [rbp - 520], rax
        mov     rdx, qword ptr [rbp - 528]
        mov     rax, qword ptr [rbp - 520]
        shld    rax, rdx, 13
        mov     qword ptr [rbp - 536], rax
        mov     rax, qword ptr [rbp - 528]
        and     rax, rcx
        mov     qword ptr [rbp - 544], rax
        imul    rax, qword ptr [rbp - 536], 19
        mov     qword ptr [rbp - 552], rax
        mov     rax, qword ptr [rbp - 352]
        add     rax, qword ptr [rbp - 552]
        mov     qword ptr [rbp - 560], rax
        mov     rax, qword ptr [rbp - 560]
        shr     rax, 51
        mov     qword ptr [rbp - 568], rax
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 560]
        mov     qword ptr [rbp - 576], rax
        mov     rax, qword ptr [rbp - 568]
        add     rax, qword ptr [rbp - 448]
        mov     qword ptr [rbp - 584], rax
        mov     rax, qword ptr [rbp - 584]
        shr     rax, 51
        mov     byte ptr [rbp - 585], al
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 584]
        mov     qword ptr [rbp - 600], rax
        movzx   eax, byte ptr [rbp - 585]
        add     rax, qword ptr [rbp - 480]
        mov     qword ptr [rbp - 608], rax
        mov     rcx, qword ptr [rbp - 576]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax], rcx
        mov     rcx, qword ptr [rbp - 600]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 8], rcx
        mov     rcx, qword ptr [rbp - 608]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 16], rcx
        mov     rcx, qword ptr [rbp - 512]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 24], rcx
        mov     rcx, qword ptr [rbp - 544]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 32], rcx
        add     rsp, 480
        pop     rbp
        ret

_Z29fiat_25519_carry_scmul_121666PmPKm:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 176
        mov     qword ptr [rbp - 8], rdi
        mov     qword ptr [rbp - 16], rsi
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 32]
        mov     ecx, 121666
        mul     rcx
        mov     qword ptr [rbp - 24], rdx
        mov     qword ptr [rbp - 32], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 24]
        mul     rcx
        mov     qword ptr [rbp - 40], rdx
        mov     qword ptr [rbp - 48], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 16]
        mul     rcx
        mov     qword ptr [rbp - 56], rdx
        mov     qword ptr [rbp - 64], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 8]
        mul     rcx
        mov     qword ptr [rbp - 72], rdx
        mov     qword ptr [rbp - 80], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax]
        mul     rcx
        mov     qword ptr [rbp - 88], rdx
        mov     qword ptr [rbp - 96], rax
        mov     rcx, qword ptr [rbp - 96]
        mov     rax, qword ptr [rbp - 88]
        shld    rax, rcx, 13
        mov     qword ptr [rbp - 104], rax
        mov     rax, qword ptr [rbp - 96]
        movabs  rcx, 2251799813685247
        and     rax, rcx
        mov     qword ptr [rbp - 112], rax
        mov     rdx, qword ptr [rbp - 104]
        mov     rsi, qword ptr [rbp - 80]
        mov     rax, qword ptr [rbp - 72]
        add     rdx, rsi
        adc     rax, 0
        mov     qword ptr [rbp - 128], rdx
        mov     qword ptr [rbp - 120], rax
        mov     rdx, qword ptr [rbp - 128]
        mov     rax, qword ptr [rbp - 120]
        shld    rax, rdx, 13
        mov     qword ptr [rbp - 136], rax
        mov     rax, qword ptr [rbp - 128]
        and     rax, rcx
        mov     qword ptr [rbp - 144], rax
        mov     rdx, qword ptr [rbp - 136]
        mov     rsi, qword ptr [rbp - 64]
        mov     rax, qword ptr [rbp - 56]
        add     rdx, rsi
        adc     rax, 0
        mov     qword ptr [rbp - 160], rdx
        mov     qword ptr [rbp - 152], rax
        mov     rdx, qword ptr [rbp - 160]
        mov     rax, qword ptr [rbp - 152]
        shld    rax, rdx, 13
        mov     qword ptr [rbp - 168], rax
        mov     rax, qword ptr [rbp - 160]
        and     rax, rcx
        mov     qword ptr [rbp - 176], rax
        mov     rdx, qword ptr [rbp - 168]
        mov     rsi, qword ptr [rbp - 48]
        mov     rax, qword ptr [rbp - 40]
        add     rdx, rsi
        adc     rax, 0
        mov     qword ptr [rbp - 192], rdx
        mov     qword ptr [rbp - 184], rax
        mov     rdx, qword ptr [rbp - 192]
        mov     rax, qword ptr [rbp - 184]
        shld    rax, rdx, 13
        mov     qword ptr [rbp - 200], rax
        mov     rax, qword ptr [rbp - 192]
        and     rax, rcx
        mov     qword ptr [rbp - 208], rax
        mov     rdx, qword ptr [rbp - 200]
        mov     rsi, qword ptr [rbp - 32]
        mov     rax, qword ptr [rbp - 24]
        add     rdx, rsi
        adc     rax, 0
        mov     qword ptr [rbp - 224], rdx
        mov     qword ptr [rbp - 216], rax
        mov     rdx, qword ptr [rbp - 224]
        mov     rax, qword ptr [rbp - 216]
        shld    rax, rdx, 13
        mov     qword ptr [rbp - 232], rax
        mov     rax, qword ptr [rbp - 224]
        and     rax, rcx
        mov     qword ptr [rbp - 240], rax
        imul    rax, qword ptr [rbp - 232], 19
        mov     qword ptr [rbp - 248], rax
        mov     rax, qword ptr [rbp - 112]
        add     rax, qword ptr [rbp - 248]
        mov     qword ptr [rbp - 256], rax
        mov     rax, qword ptr [rbp - 256]
        shr     rax, 51
        mov     byte ptr [rbp - 257], al
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 256]
        mov     qword ptr [rbp - 272], rax
        movzx   eax, byte ptr [rbp - 257]
        add     rax, qword ptr [rbp - 144]
        mov     qword ptr [rbp - 280], rax
        mov     rax, qword ptr [rbp - 280]
        shr     rax, 51
        mov     byte ptr [rbp - 281], al
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 280]
        mov     qword ptr [rbp - 296], rax
        movzx   eax, byte ptr [rbp - 281]
        add     rax, qword ptr [rbp - 176]
        mov     qword ptr [rbp - 304], rax
        mov     rcx, qword ptr [rbp - 272]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax], rcx
        mov     rcx, qword ptr [rbp - 296]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 8], rcx
        mov     rcx, qword ptr [rbp - 304]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 16], rcx
        mov     rcx, qword ptr [rbp - 208]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 24], rcx
        mov     rcx, qword ptr [rbp - 240]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 32], rcx
        add     rsp, 176
        pop     rbp
        ret

_Z16fiat_25519_carryPmPKm:
        push    rbp
        mov     rbp, rsp
        mov     qword ptr [rbp - 8], rdi
        mov     qword ptr [rbp - 16], rsi
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax]
        mov     qword ptr [rbp - 24], rax
        mov     rax, qword ptr [rbp - 24]
        shr     rax, 51
        mov     rcx, qword ptr [rbp - 16]
        add     rax, qword ptr [rcx + 8]
        mov     qword ptr [rbp - 32], rax
        mov     rax, qword ptr [rbp - 32]
        shr     rax, 51
        mov     rcx, qword ptr [rbp - 16]
        add     rax, qword ptr [rcx + 16]
        mov     qword ptr [rbp - 40], rax
        mov     rax, qword ptr [rbp - 40]
        shr     rax, 51
        mov     rcx, qword ptr [rbp - 16]
        add     rax, qword ptr [rcx + 24]
        mov     qword ptr [rbp - 48], rax
        mov     rax, qword ptr [rbp - 48]
        shr     rax, 51
        mov     rcx, qword ptr [rbp - 16]
        add     rax, qword ptr [rcx + 32]
        mov     qword ptr [rbp - 56], rax
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 24]
        mov     rcx, qword ptr [rbp - 56]
        shr     rcx, 51
        imul    rcx, rcx, 19
        add     rax, rcx
        mov     qword ptr [rbp - 64], rax
        mov     rax, qword ptr [rbp - 64]
        shr     rax, 51
        movzx   eax, al
        movabs  rcx, 2251799813685247
        and     rcx, qword ptr [rbp - 32]
        add     rax, rcx
        mov     qword ptr [rbp - 72], rax
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 64]
        mov     qword ptr [rbp - 80], rax
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 72]
        mov     qword ptr [rbp - 88], rax
        mov     rax, qword ptr [rbp - 72]
        shr     rax, 51
        movzx   eax, al
        movabs  rcx, 2251799813685247
        and     rcx, qword ptr [rbp - 40]
        add     rax, rcx
        mov     qword ptr [rbp - 96], rax
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 48]
        mov     qword ptr [rbp - 104], rax
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 56]
        mov     qword ptr [rbp - 112], rax
        mov     rcx, qword ptr [rbp - 80]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax], rcx
        mov     rcx, qword ptr [rbp - 88]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 8], rcx
        mov     rcx, qword ptr [rbp - 96]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 16], rcx
        mov     rcx, qword ptr [rbp - 104]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 24], rcx
        mov     rcx, qword ptr [rbp - 112]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 32], rcx
        pop     rbp
        ret

_Z14fiat_25519_addPmPKmS1_:
        push    rbp
        mov     rbp, rsp
        mov     qword ptr [rbp - 8], rdi
        mov     qword ptr [rbp - 16], rsi
        mov     qword ptr [rbp - 24], rdx
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax]
        mov     rcx, qword ptr [rbp - 24]
        add     rax, qword ptr [rcx]
        mov     qword ptr [rbp - 32], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 8]
        mov     rcx, qword ptr [rbp - 24]
        add     rax, qword ptr [rcx + 8]
        mov     qword ptr [rbp - 40], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 16]
        mov     rcx, qword ptr [rbp - 24]
        add     rax, qword ptr [rcx + 16]
        mov     qword ptr [rbp - 48], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 24]
        mov     rcx, qword ptr [rbp - 24]
        add     rax, qword ptr [rcx + 24]
        mov     qword ptr [rbp - 56], rax
        mov     rax, qword ptr [rbp - 16]
        mov     rax, qword ptr [rax + 32]
        mov     rcx, qword ptr [rbp - 24]
        add     rax, qword ptr [rcx + 32]
        mov     qword ptr [rbp - 64], rax
        mov     rcx, qword ptr [rbp - 32]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax], rcx
        mov     rcx, qword ptr [rbp - 40]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 8], rcx
        mov     rcx, qword ptr [rbp - 48]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 16], rcx
        mov     rcx, qword ptr [rbp - 56]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 24], rcx
        mov     rcx, qword ptr [rbp - 64]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 32], rcx
        pop     rbp
        ret

_Z14fiat_25519_subPmPKmS1_:
        push    rbp
        mov     rbp, rsp
        mov     qword ptr [rbp - 8], rdi
        mov     qword ptr [rbp - 16], rsi
        mov     qword ptr [rbp - 24], rdx
        mov     rcx, qword ptr [rbp - 16]
        movabs  rax, 4503599627370458
        add     rax, qword ptr [rcx]
        mov     rcx, qword ptr [rbp - 24]
        sub     rax, qword ptr [rcx]
        mov     qword ptr [rbp - 32], rax
        mov     rcx, qword ptr [rbp - 16]
        movabs  rax, 4503599627370494
        add     rax, qword ptr [rcx + 8]
        mov     rcx, qword ptr [rbp - 24]
        sub     rax, qword ptr [rcx + 8]
        mov     qword ptr [rbp - 40], rax
        mov     rcx, qword ptr [rbp - 16]
        movabs  rax, 4503599627370494
        add     rax, qword ptr [rcx + 16]
        mov     rcx, qword ptr [rbp - 24]
        sub     rax, qword ptr [rcx + 16]
        mov     qword ptr [rbp - 48], rax
        mov     rcx, qword ptr [rbp - 16]
        movabs  rax, 4503599627370494
        add     rax, qword ptr [rcx + 24]
        mov     rcx, qword ptr [rbp - 24]
        sub     rax, qword ptr [rcx + 24]
        mov     qword ptr [rbp - 56], rax
        mov     rcx, qword ptr [rbp - 16]
        movabs  rax, 4503599627370494
        add     rax, qword ptr [rcx + 32]
        mov     rcx, qword ptr [rbp - 24]
        sub     rax, qword ptr [rcx + 32]
        mov     qword ptr [rbp - 64], rax
        mov     rcx, qword ptr [rbp - 32]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax], rcx
        mov     rcx, qword ptr [rbp - 40]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 8], rcx
        mov     rcx, qword ptr [rbp - 48]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 16], rcx
        mov     rcx, qword ptr [rbp - 56]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 24], rcx
        mov     rcx, qword ptr [rbp - 64]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 32], rcx
        pop     rbp
        ret

_Z14fiat_25519_oppPmPKm:
        push    rbp
        mov     rbp, rsp
        mov     qword ptr [rbp - 8], rdi
        mov     qword ptr [rbp - 16], rsi
        mov     rcx, qword ptr [rbp - 16]
        movabs  rax, 4503599627370458
        sub     rax, qword ptr [rcx]
        mov     qword ptr [rbp - 24], rax
        mov     rcx, qword ptr [rbp - 16]
        movabs  rax, 4503599627370494
        sub     rax, qword ptr [rcx + 8]
        mov     qword ptr [rbp - 32], rax
        mov     rcx, qword ptr [rbp - 16]
        movabs  rax, 4503599627370494
        sub     rax, qword ptr [rcx + 16]
        mov     qword ptr [rbp - 40], rax
        mov     rcx, qword ptr [rbp - 16]
        movabs  rax, 4503599627370494
        sub     rax, qword ptr [rcx + 24]
        mov     qword ptr [rbp - 48], rax
        mov     rcx, qword ptr [rbp - 16]
        movabs  rax, 4503599627370494
        sub     rax, qword ptr [rcx + 32]
        mov     qword ptr [rbp - 56], rax
        mov     rcx, qword ptr [rbp - 24]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax], rcx
        mov     rcx, qword ptr [rbp - 32]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 8], rcx
        mov     rcx, qword ptr [rbp - 40]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 16], rcx
        mov     rcx, qword ptr [rbp - 48]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 24], rcx
        mov     rcx, qword ptr [rbp - 56]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 32], rcx
        pop     rbp
        ret

_Z20fiat_25519_selectznzPmhPKmS1_:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 80
        mov     al, sil
        mov     qword ptr [rbp - 8], rdi
        mov     byte ptr [rbp - 9], al
        mov     qword ptr [rbp - 24], rdx
        mov     qword ptr [rbp - 32], rcx
        mov     al, byte ptr [rbp - 9]
        mov     rcx, qword ptr [rbp - 24]
        mov     rdx, qword ptr [rcx]
        mov     rcx, qword ptr [rbp - 32]
        mov     rcx, qword ptr [rcx]
        lea     rdi, [rbp - 40]
        movzx   esi, al
        call    _Z22fiat_25519_cmovznz_u64Pmhmm
        mov     al, byte ptr [rbp - 9]
        mov     rcx, qword ptr [rbp - 24]
        mov     rdx, qword ptr [rcx + 8]
        mov     rcx, qword ptr [rbp - 32]
        mov     rcx, qword ptr [rcx + 8]
        lea     rdi, [rbp - 48]
        movzx   esi, al
        call    _Z22fiat_25519_cmovznz_u64Pmhmm
        mov     al, byte ptr [rbp - 9]
        mov     rcx, qword ptr [rbp - 24]
        mov     rdx, qword ptr [rcx + 16]
        mov     rcx, qword ptr [rbp - 32]
        mov     rcx, qword ptr [rcx + 16]
        lea     rdi, [rbp - 56]
        movzx   esi, al
        call    _Z22fiat_25519_cmovznz_u64Pmhmm
        mov     al, byte ptr [rbp - 9]
        mov     rcx, qword ptr [rbp - 24]
        mov     rdx, qword ptr [rcx + 24]
        mov     rcx, qword ptr [rbp - 32]
        mov     rcx, qword ptr [rcx + 24]
        lea     rdi, [rbp - 64]
        movzx   esi, al
        call    _Z22fiat_25519_cmovznz_u64Pmhmm
        mov     al, byte ptr [rbp - 9]
        mov     rcx, qword ptr [rbp - 24]
        mov     rdx, qword ptr [rcx + 32]
        mov     rcx, qword ptr [rbp - 32]
        mov     rcx, qword ptr [rcx + 32]
        lea     rdi, [rbp - 72]
        movzx   esi, al
        call    _Z22fiat_25519_cmovznz_u64Pmhmm
        mov     rcx, qword ptr [rbp - 40]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax], rcx
        mov     rcx, qword ptr [rbp - 48]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 8], rcx
        mov     rcx, qword ptr [rbp - 56]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 16], rcx
        mov     rcx, qword ptr [rbp - 64]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 24], rcx
        mov     rcx, qword ptr [rbp - 72]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 32], rcx
        add     rsp, 80
        pop     rbp
        ret

_Z19fiat_25519_to_bytesPhPKm:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 704
        mov     qword ptr [rbp - 8], rdi
        mov     qword ptr [rbp - 16], rsi
        mov     rax, qword ptr [rbp - 16]
        mov     rcx, qword ptr [rax]
        lea     rdi, [rbp - 24]
        lea     rsi, [rbp - 25]
        xor     edx, edx
        movabs  r8, 2251799813685229
        call    _Z25fiat_25519_subborrowx_u51PmPhhmm
        mov     al, byte ptr [rbp - 25]
        mov     rcx, qword ptr [rbp - 16]
        mov     rcx, qword ptr [rcx + 8]
        lea     rdi, [rbp - 40]
        lea     rsi, [rbp - 41]
        movabs  r8, 2251799813685247
        movzx   edx, al
        call    _Z25fiat_25519_subborrowx_u51PmPhhmm
        mov     al, byte ptr [rbp - 41]
        mov     rcx, qword ptr [rbp - 16]
        mov     rcx, qword ptr [rcx + 16]
        lea     rdi, [rbp - 56]
        lea     rsi, [rbp - 57]
        movabs  r8, 2251799813685247
        movzx   edx, al
        call    _Z25fiat_25519_subborrowx_u51PmPhhmm
        mov     al, byte ptr [rbp - 57]
        mov     rcx, qword ptr [rbp - 16]
        mov     rcx, qword ptr [rcx + 24]
        lea     rdi, [rbp - 72]
        lea     rsi, [rbp - 73]
        movabs  r8, 2251799813685247
        movzx   edx, al
        call    _Z25fiat_25519_subborrowx_u51PmPhhmm
        mov     al, byte ptr [rbp - 73]
        mov     rcx, qword ptr [rbp - 16]
        mov     rcx, qword ptr [rcx + 32]
        lea     rdi, [rbp - 88]
        lea     rsi, [rbp - 89]
        movabs  r8, 2251799813685247
        movzx   edx, al
        call    _Z25fiat_25519_subborrowx_u51PmPhhmm
        lea     rdi, [rbp - 104]
        xor     eax, eax
        mov     edx, eax
        mov     rcx, -1
        movzx   esi, byte ptr [rbp - 89]
        call    _Z22fiat_25519_cmovznz_u64Pmhmm
        mov     rcx, qword ptr [rbp - 24]
        movabs  r8, 2251799813685229
        and     r8, qword ptr [rbp - 104]
        lea     rdi, [rbp - 112]
        lea     rsi, [rbp - 113]
        xor     edx, edx
        call    _Z24fiat_25519_addcarryx_u51PmPhhmm
        mov     al, byte ptr [rbp - 113]
        mov     rcx, qword ptr [rbp - 40]
        movabs  r8, 2251799813685247
        and     r8, qword ptr [rbp - 104]
        lea     rdi, [rbp - 128]
        lea     rsi, [rbp - 129]
        movzx   edx, al
        call    _Z24fiat_25519_addcarryx_u51PmPhhmm
        mov     al, byte ptr [rbp - 129]
        mov     rcx, qword ptr [rbp - 56]
        movabs  r8, 2251799813685247
        and     r8, qword ptr [rbp - 104]
        lea     rdi, [rbp - 144]
        lea     rsi, [rbp - 145]
        movzx   edx, al
        call    _Z24fiat_25519_addcarryx_u51PmPhhmm
        mov     al, byte ptr [rbp - 145]
        mov     rcx, qword ptr [rbp - 72]
        movabs  r8, 2251799813685247
        and     r8, qword ptr [rbp - 104]
        lea     rdi, [rbp - 160]
        lea     rsi, [rbp - 161]
        movzx   edx, al
        call    _Z24fiat_25519_addcarryx_u51PmPhhmm
        mov     al, byte ptr [rbp - 161]
        mov     rcx, qword ptr [rbp - 88]
        movabs  r8, 2251799813685247
        and     r8, qword ptr [rbp - 104]
        lea     rdi, [rbp - 176]
        lea     rsi, [rbp - 177]
        movzx   edx, al
        call    _Z24fiat_25519_addcarryx_u51PmPhhmm
        mov     rax, qword ptr [rbp - 176]
        shl     rax, 4
        mov     qword ptr [rbp - 192], rax
        mov     rax, qword ptr [rbp - 160]
        shl     rax
        mov     qword ptr [rbp - 200], rax
        mov     rax, qword ptr [rbp - 144]
        shl     rax, 6
        mov     qword ptr [rbp - 208], rax
        mov     rax, qword ptr [rbp - 128]
        shl     rax, 3
        mov     qword ptr [rbp - 216], rax
        mov     rax, qword ptr [rbp - 112]
        and     rax, 255
        mov     byte ptr [rbp - 217], al
        mov     rax, qword ptr [rbp - 112]
        shr     rax, 8
        mov     qword ptr [rbp - 232], rax
        mov     rax, qword ptr [rbp - 232]
        and     rax, 255
        mov     byte ptr [rbp - 233], al
        mov     rax, qword ptr [rbp - 232]
        shr     rax, 8
        mov     qword ptr [rbp - 248], rax
        mov     rax, qword ptr [rbp - 248]
        and     rax, 255
        mov     byte ptr [rbp - 249], al
        mov     rax, qword ptr [rbp - 248]
        shr     rax, 8
        mov     qword ptr [rbp - 264], rax
        mov     rax, qword ptr [rbp - 264]
        and     rax, 255
        mov     byte ptr [rbp - 265], al
        mov     rax, qword ptr [rbp - 264]
        shr     rax, 8
        mov     qword ptr [rbp - 280], rax
        mov     rax, qword ptr [rbp - 280]
        and     rax, 255
        mov     byte ptr [rbp - 281], al
        mov     rax, qword ptr [rbp - 280]
        shr     rax, 8
        mov     qword ptr [rbp - 296], rax
        mov     rax, qword ptr [rbp - 296]
        and     rax, 255
        mov     byte ptr [rbp - 297], al
        mov     rax, qword ptr [rbp - 296]
        shr     rax, 8
        mov     byte ptr [rbp - 298], al
        mov     rax, qword ptr [rbp - 216]
        movzx   ecx, byte ptr [rbp - 298]
        add     rax, rcx
        mov     qword ptr [rbp - 312], rax
        mov     rax, qword ptr [rbp - 312]
        and     rax, 255
        mov     byte ptr [rbp - 313], al
        mov     rax, qword ptr [rbp - 312]
        shr     rax, 8
        mov     qword ptr [rbp - 328], rax
        mov     rax, qword ptr [rbp - 328]
        and     rax, 255
        mov     byte ptr [rbp - 329], al
        mov     rax, qword ptr [rbp - 328]
        shr     rax, 8
        mov     qword ptr [rbp - 344], rax
        mov     rax, qword ptr [rbp - 344]
        and     rax, 255
        mov     byte ptr [rbp - 345], al
        mov     rax, qword ptr [rbp - 344]
        shr     rax, 8
        mov     qword ptr [rbp - 360], rax
        mov     rax, qword ptr [rbp - 360]
        and     rax, 255
        mov     byte ptr [rbp - 361], al
        mov     rax, qword ptr [rbp - 360]
        shr     rax, 8
        mov     qword ptr [rbp - 376], rax
        mov     rax, qword ptr [rbp - 376]
        and     rax, 255
        mov     byte ptr [rbp - 377], al
        mov     rax, qword ptr [rbp - 376]
        shr     rax, 8
        mov     qword ptr [rbp - 392], rax
        mov     rax, qword ptr [rbp - 392]
        and     rax, 255
        mov     byte ptr [rbp - 393], al
        mov     rax, qword ptr [rbp - 392]
        shr     rax, 8
        mov     byte ptr [rbp - 394], al
        mov     rax, qword ptr [rbp - 208]
        movzx   ecx, byte ptr [rbp - 394]
        add     rax, rcx
        mov     qword ptr [rbp - 408], rax
        mov     rax, qword ptr [rbp - 408]
        and     rax, 255
        mov     byte ptr [rbp - 409], al
        mov     rax, qword ptr [rbp - 408]
        shr     rax, 8
        mov     qword ptr [rbp - 424], rax
        mov     rax, qword ptr [rbp - 424]
        and     rax, 255
        mov     byte ptr [rbp - 425], al
        mov     rax, qword ptr [rbp - 424]
        shr     rax, 8
        mov     qword ptr [rbp - 440], rax
        mov     rax, qword ptr [rbp - 440]
        and     rax, 255
        mov     byte ptr [rbp - 441], al
        mov     rax, qword ptr [rbp - 440]
        shr     rax, 8
        mov     qword ptr [rbp - 456], rax
        mov     rax, qword ptr [rbp - 456]
        and     rax, 255
        mov     byte ptr [rbp - 457], al
        mov     rax, qword ptr [rbp - 456]
        shr     rax, 8
        mov     qword ptr [rbp - 472], rax
        mov     rax, qword ptr [rbp - 472]
        and     rax, 255
        mov     byte ptr [rbp - 473], al
        mov     rax, qword ptr [rbp - 472]
        shr     rax, 8
        mov     qword ptr [rbp - 488], rax
        mov     rax, qword ptr [rbp - 488]
        and     rax, 255
        mov     byte ptr [rbp - 489], al
        mov     rax, qword ptr [rbp - 488]
        shr     rax, 8
        mov     qword ptr [rbp - 504], rax
        mov     rax, qword ptr [rbp - 504]
        and     rax, 255
        mov     byte ptr [rbp - 505], al
        mov     rax, qword ptr [rbp - 504]
        shr     rax, 8
        mov     byte ptr [rbp - 506], al
        mov     rax, qword ptr [rbp - 200]
        movzx   ecx, byte ptr [rbp - 506]
        add     rax, rcx
        mov     qword ptr [rbp - 520], rax
        mov     rax, qword ptr [rbp - 520]
        and     rax, 255
        mov     byte ptr [rbp - 521], al
        mov     rax, qword ptr [rbp - 520]
        shr     rax, 8
        mov     qword ptr [rbp - 536], rax
        mov     rax, qword ptr [rbp - 536]
        and     rax, 255
        mov     byte ptr [rbp - 537], al
        mov     rax, qword ptr [rbp - 536]
        shr     rax, 8
        mov     qword ptr [rbp - 552], rax
        mov     rax, qword ptr [rbp - 552]
        and     rax, 255
        mov     byte ptr [rbp - 553], al
        mov     rax, qword ptr [rbp - 552]
        shr     rax, 8
        mov     qword ptr [rbp - 568], rax
        mov     rax, qword ptr [rbp - 568]
        and     rax, 255
        mov     byte ptr [rbp - 569], al
        mov     rax, qword ptr [rbp - 568]
        shr     rax, 8
        mov     qword ptr [rbp - 584], rax
        mov     rax, qword ptr [rbp - 584]
        and     rax, 255
        mov     byte ptr [rbp - 585], al
        mov     rax, qword ptr [rbp - 584]
        shr     rax, 8
        mov     qword ptr [rbp - 600], rax
        mov     rax, qword ptr [rbp - 600]
        and     rax, 255
        mov     byte ptr [rbp - 601], al
        mov     rax, qword ptr [rbp - 600]
        shr     rax, 8
        mov     byte ptr [rbp - 602], al
        mov     rax, qword ptr [rbp - 192]
        movzx   ecx, byte ptr [rbp - 602]
        add     rax, rcx
        mov     qword ptr [rbp - 616], rax
        mov     rax, qword ptr [rbp - 616]
        and     rax, 255
        mov     byte ptr [rbp - 617], al
        mov     rax, qword ptr [rbp - 616]
        shr     rax, 8
        mov     qword ptr [rbp - 632], rax
        mov     rax, qword ptr [rbp - 632]
        and     rax, 255
        mov     byte ptr [rbp - 633], al
        mov     rax, qword ptr [rbp - 632]
        shr     rax, 8
        mov     qword ptr [rbp - 648], rax
        mov     rax, qword ptr [rbp - 648]
        and     rax, 255
        mov     byte ptr [rbp - 649], al
        mov     rax, qword ptr [rbp - 648]
        shr     rax, 8
        mov     qword ptr [rbp - 664], rax
        mov     rax, qword ptr [rbp - 664]
        and     rax, 255
        mov     byte ptr [rbp - 665], al
        mov     rax, qword ptr [rbp - 664]
        shr     rax, 8
        mov     qword ptr [rbp - 680], rax
        mov     rax, qword ptr [rbp - 680]
        and     rax, 255
        mov     byte ptr [rbp - 681], al
        mov     rax, qword ptr [rbp - 680]
        shr     rax, 8
        mov     qword ptr [rbp - 696], rax
        mov     rax, qword ptr [rbp - 696]
        and     rax, 255
        mov     byte ptr [rbp - 697], al
        mov     rax, qword ptr [rbp - 696]
        shr     rax, 8
        mov     byte ptr [rbp - 698], al
        mov     cl, byte ptr [rbp - 217]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax], cl
        mov     cl, byte ptr [rbp - 233]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 1], cl
        mov     cl, byte ptr [rbp - 249]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 2], cl
        mov     cl, byte ptr [rbp - 265]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 3], cl
        mov     cl, byte ptr [rbp - 281]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 4], cl
        mov     cl, byte ptr [rbp - 297]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 5], cl
        mov     cl, byte ptr [rbp - 313]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 6], cl
        mov     cl, byte ptr [rbp - 329]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 7], cl
        mov     cl, byte ptr [rbp - 345]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 8], cl
        mov     cl, byte ptr [rbp - 361]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 9], cl
        mov     cl, byte ptr [rbp - 377]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 10], cl
        mov     cl, byte ptr [rbp - 393]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 11], cl
        mov     cl, byte ptr [rbp - 409]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 12], cl
        mov     cl, byte ptr [rbp - 425]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 13], cl
        mov     cl, byte ptr [rbp - 441]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 14], cl
        mov     cl, byte ptr [rbp - 457]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 15], cl
        mov     cl, byte ptr [rbp - 473]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 16], cl
        mov     cl, byte ptr [rbp - 489]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 17], cl
        mov     cl, byte ptr [rbp - 505]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 18], cl
        mov     cl, byte ptr [rbp - 521]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 19], cl
        mov     cl, byte ptr [rbp - 537]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 20], cl
        mov     cl, byte ptr [rbp - 553]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 21], cl
        mov     cl, byte ptr [rbp - 569]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 22], cl
        mov     cl, byte ptr [rbp - 585]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 23], cl
        mov     cl, byte ptr [rbp - 601]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 24], cl
        mov     cl, byte ptr [rbp - 617]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 25], cl
        mov     cl, byte ptr [rbp - 633]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 26], cl
        mov     cl, byte ptr [rbp - 649]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 27], cl
        mov     cl, byte ptr [rbp - 665]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 28], cl
        mov     cl, byte ptr [rbp - 681]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 29], cl
        mov     cl, byte ptr [rbp - 697]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 30], cl
        mov     cl, byte ptr [rbp - 698]
        mov     rax, qword ptr [rbp - 8]
        mov     byte ptr [rax + 31], cl
        add     rsp, 704
        pop     rbp
        ret

_Z21fiat_25519_from_bytesPmPKh:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 456
        mov     qword ptr [rbp - 8], rdi
        mov     qword ptr [rbp - 16], rsi
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 31]
        shl     rax, 44
        mov     qword ptr [rbp - 24], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 30]
        shl     rax, 36
        mov     qword ptr [rbp - 32], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 29]
        shl     rax, 28
        mov     qword ptr [rbp - 40], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 28]
        shl     rax, 20
        mov     qword ptr [rbp - 48], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 27]
        shl     rax, 12
        mov     qword ptr [rbp - 56], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 26]
        shl     rax, 4
        mov     qword ptr [rbp - 64], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 25]
        shl     rax, 47
        mov     qword ptr [rbp - 72], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 24]
        shl     rax, 39
        mov     qword ptr [rbp - 80], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 23]
        shl     rax, 31
        mov     qword ptr [rbp - 88], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 22]
        shl     rax, 23
        mov     qword ptr [rbp - 96], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 21]
        shl     rax, 15
        mov     qword ptr [rbp - 104], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 20]
        shl     rax, 7
        mov     qword ptr [rbp - 112], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 19]
        shl     rax, 50
        mov     qword ptr [rbp - 120], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 18]
        shl     rax, 42
        mov     qword ptr [rbp - 128], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 17]
        shl     rax, 34
        mov     qword ptr [rbp - 136], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 16]
        shl     rax, 26
        mov     qword ptr [rbp - 144], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 15]
        shl     rax, 18
        mov     qword ptr [rbp - 152], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 14]
        shl     rax, 10
        mov     qword ptr [rbp - 160], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 13]
        shl     rax, 2
        mov     qword ptr [rbp - 168], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 12]
        shl     rax, 45
        mov     qword ptr [rbp - 176], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 11]
        shl     rax, 37
        mov     qword ptr [rbp - 184], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 10]
        shl     rax, 29
        mov     qword ptr [rbp - 192], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 9]
        shl     rax, 21
        mov     qword ptr [rbp - 200], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 8]
        shl     rax, 13
        mov     qword ptr [rbp - 208], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 7]
        shl     rax, 5
        mov     qword ptr [rbp - 216], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 6]
        shl     rax, 48
        mov     qword ptr [rbp - 224], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 5]
        shl     rax, 40
        mov     qword ptr [rbp - 232], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 4]
        shl     rax, 32
        mov     qword ptr [rbp - 240], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 3]
        shl     rax, 24
        mov     qword ptr [rbp - 248], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 2]
        shl     rax, 16
        mov     qword ptr [rbp - 256], rax
        mov     rax, qword ptr [rbp - 16]
        movzx   eax, byte ptr [rax + 1]
        shl     rax, 8
        mov     qword ptr [rbp - 264], rax
        mov     rax, qword ptr [rbp - 16]
        mov     al, byte ptr [rax]
        mov     byte ptr [rbp - 265], al
        mov     rax, qword ptr [rbp - 264]
        movzx   ecx, byte ptr [rbp - 265]
        add     rax, rcx
        mov     qword ptr [rbp - 280], rax
        mov     rax, qword ptr [rbp - 256]
        add     rax, qword ptr [rbp - 280]
        mov     qword ptr [rbp - 288], rax
        mov     rax, qword ptr [rbp - 248]
        add     rax, qword ptr [rbp - 288]
        mov     qword ptr [rbp - 296], rax
        mov     rax, qword ptr [rbp - 240]
        add     rax, qword ptr [rbp - 296]
        mov     qword ptr [rbp - 304], rax
        mov     rax, qword ptr [rbp - 232]
        add     rax, qword ptr [rbp - 304]
        mov     qword ptr [rbp - 312], rax
        mov     rax, qword ptr [rbp - 224]
        add     rax, qword ptr [rbp - 312]
        mov     qword ptr [rbp - 320], rax
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 320]
        mov     qword ptr [rbp - 328], rax
        mov     rax, qword ptr [rbp - 320]
        shr     rax, 51
        mov     byte ptr [rbp - 329], al
        mov     rax, qword ptr [rbp - 216]
        movzx   ecx, byte ptr [rbp - 329]
        add     rax, rcx
        mov     qword ptr [rbp - 344], rax
        mov     rax, qword ptr [rbp - 208]
        add     rax, qword ptr [rbp - 344]
        mov     qword ptr [rbp - 352], rax
        mov     rax, qword ptr [rbp - 200]
        add     rax, qword ptr [rbp - 352]
        mov     qword ptr [rbp - 360], rax
        mov     rax, qword ptr [rbp - 192]
        add     rax, qword ptr [rbp - 360]
        mov     qword ptr [rbp - 368], rax
        mov     rax, qword ptr [rbp - 184]
        add     rax, qword ptr [rbp - 368]
        mov     qword ptr [rbp - 376], rax
        mov     rax, qword ptr [rbp - 176]
        add     rax, qword ptr [rbp - 376]
        mov     qword ptr [rbp - 384], rax
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 384]
        mov     qword ptr [rbp - 392], rax
        mov     rax, qword ptr [rbp - 384]
        shr     rax, 51
        mov     byte ptr [rbp - 393], al
        mov     rax, qword ptr [rbp - 168]
        movzx   ecx, byte ptr [rbp - 393]
        add     rax, rcx
        mov     qword ptr [rbp - 408], rax
        mov     rax, qword ptr [rbp - 160]
        add     rax, qword ptr [rbp - 408]
        mov     qword ptr [rbp - 416], rax
        mov     rax, qword ptr [rbp - 152]
        add     rax, qword ptr [rbp - 416]
        mov     qword ptr [rbp - 424], rax
        mov     rax, qword ptr [rbp - 144]
        add     rax, qword ptr [rbp - 424]
        mov     qword ptr [rbp - 432], rax
        mov     rax, qword ptr [rbp - 136]
        add     rax, qword ptr [rbp - 432]
        mov     qword ptr [rbp - 440], rax
        mov     rax, qword ptr [rbp - 128]
        add     rax, qword ptr [rbp - 440]
        mov     qword ptr [rbp - 448], rax
        mov     rax, qword ptr [rbp - 120]
        add     rax, qword ptr [rbp - 448]
        mov     qword ptr [rbp - 456], rax
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 456]
        mov     qword ptr [rbp - 464], rax
        mov     rax, qword ptr [rbp - 456]
        shr     rax, 51
        mov     byte ptr [rbp - 465], al
        mov     rax, qword ptr [rbp - 112]
        movzx   ecx, byte ptr [rbp - 465]
        add     rax, rcx
        mov     qword ptr [rbp - 480], rax
        mov     rax, qword ptr [rbp - 104]
        add     rax, qword ptr [rbp - 480]
        mov     qword ptr [rbp - 488], rax
        mov     rax, qword ptr [rbp - 96]
        add     rax, qword ptr [rbp - 488]
        mov     qword ptr [rbp - 496], rax
        mov     rax, qword ptr [rbp - 88]
        add     rax, qword ptr [rbp - 496]
        mov     qword ptr [rbp - 504], rax
        mov     rax, qword ptr [rbp - 80]
        add     rax, qword ptr [rbp - 504]
        mov     qword ptr [rbp - 512], rax
        mov     rax, qword ptr [rbp - 72]
        add     rax, qword ptr [rbp - 512]
        mov     qword ptr [rbp - 520], rax
        movabs  rax, 2251799813685247
        and     rax, qword ptr [rbp - 520]
        mov     qword ptr [rbp - 528], rax
        mov     rax, qword ptr [rbp - 520]
        shr     rax, 51
        mov     byte ptr [rbp - 529], al
        mov     rax, qword ptr [rbp - 64]
        movzx   ecx, byte ptr [rbp - 529]
        add     rax, rcx
        mov     qword ptr [rbp - 544], rax
        mov     rax, qword ptr [rbp - 56]
        add     rax, qword ptr [rbp - 544]
        mov     qword ptr [rbp - 552], rax
        mov     rax, qword ptr [rbp - 48]
        add     rax, qword ptr [rbp - 552]
        mov     qword ptr [rbp - 560], rax
        mov     rax, qword ptr [rbp - 40]
        add     rax, qword ptr [rbp - 560]
        mov     qword ptr [rbp - 568], rax
        mov     rax, qword ptr [rbp - 32]
        add     rax, qword ptr [rbp - 568]
        mov     qword ptr [rbp - 576], rax
        mov     rax, qword ptr [rbp - 24]
        add     rax, qword ptr [rbp - 576]
        mov     qword ptr [rbp - 584], rax
        mov     rcx, qword ptr [rbp - 328]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax], rcx
        mov     rcx, qword ptr [rbp - 392]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 8], rcx
        mov     rcx, qword ptr [rbp - 464]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 16], rcx
        mov     rcx, qword ptr [rbp - 528]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 24], rcx
        mov     rcx, qword ptr [rbp - 584]
        mov     rax, qword ptr [rbp - 8]
        mov     qword ptr [rax + 32], rcx
        add     rsp, 456
        pop     rbp
        ret