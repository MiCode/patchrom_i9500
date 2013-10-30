.class public Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;
.super Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
.source "SimeKProcSpecial.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SpecialInputProcessor"


# instance fields
.field fullSymbolMap:[[I

.field halfSymbolMap:[[I


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 8
    .parameter "ime"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->halfSymbolMap:[[I

    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->fullSymbolMap:[[I

    .line 92
    return-void

    .line 47
    :array_0
    .array-data 0x4
        0x2ct 0x0t 0x0t 0x0t
        0x2t 0x30t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x0t 0x30t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x3at 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x18t 0x20t 0x0t 0x0t
        0x19t 0x20t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x1ct 0x20t 0x0t 0x0t
        0x1dt 0x20t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xat 0xdt 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0x2t 0x25t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x5bt 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x26t 0x20t 0x0t 0x0t
        0xat 0x30t 0x0t 0x0t
        0xbt 0x30t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0xet 0x30t 0x0t 0x0t
        0xft 0x30t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x10t 0x30t 0x0t 0x0t
        0x11t 0x30t 0x0t 0x0t
        0x3bt 0x20t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0xa9t 0x20t 0x0t 0x0t
        0xe5t 0xfft 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0xact 0x20t 0x0t 0x0t
        0xe1t 0xfft 0x0t 0x0t
    .end array-data

    .line 74
    :array_6
    .array-data 0x4
        0x2t 0x30t 0x0t 0x0t
        0xct 0xfft 0x0t 0x0t
        0x1at 0xfft 0x0t 0x0t
        0x1bt 0xfft 0x0t 0x0t
        0x1ft 0xfft 0x0t 0x0t
        0x1t 0xfft 0x0t 0x0t
        0x1ct 0x20t 0x0t 0x0t
        0x1dt 0x20t 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0xat 0xfft 0x0t 0x0t
        0x20t 0xfft 0x0t 0x0t
        0x6t 0xfft 0x0t 0x0t
        0x3t 0xfft 0x0t 0x0t
        0x18t 0x20t 0x0t 0x0t
        0x19t 0x20t 0x0t 0x0t
        0x5ct 0xfft 0x0t 0x0t
        0x5t 0xfft 0x0t 0x0t
        0x3et 0xfft 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x8t 0xfft 0x0t 0x0t
        0x9t 0xfft 0x0t 0x0t
        0x10t 0x30t 0x0t 0x0t
        0xat 0x30t 0x0t 0x0t
        0xbt 0x30t 0x0t 0x0t
        0x11t 0x30t 0x0t 0x0t
        0x26t 0x20t 0x0t 0x0t
        0x14t 0x20t 0x0t 0x0t
        0x5et 0xfft 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0xbt 0xfft 0x0t 0x0t
        0xdt 0xfft 0x0t 0x0t
        0x1dt 0xfft 0x0t 0x0t
        0xd7t 0x0t 0x0t 0x0t
        0xf7t 0x0t 0x0t 0x0t
        0x60t 0x22t 0x0t 0x0t
        0x1ct 0xfft 0x0t 0x0t
        0x1et 0xfft 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0xe5t 0xfft 0x0t 0x0t
        0x4t 0xfft 0x0t 0x0t
        0xe1t 0xfft 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
        0x3t 0x21t 0x0t 0x0t
        0x9t 0x21t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0xaet 0x0t 0x0t 0x0t
        0x22t 0x21t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x5bt 0xfft 0x0t 0x0t
        0x5dt 0xfft 0x0t 0x0t
        0x1et 0x22t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0xcft 0x25t 0x0t 0x0t
        0x1at 0x22t 0x0t 0x0t
        0x11t 0x22t 0x0t 0x0t
        0x40t 0x26t 0x0t 0x0t
    .end array-data
.end method

.method private getPage34Symbol()I
    .locals 3

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 351
    .local v1, page:I
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    new-instance v0, Lcom/samsung/inputmethod/SimeInputModeDef;

    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>(I)V

    .line 353
    .local v0, curInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->symbolNumType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 373
    const/4 v1, 0x0

    .line 377
    .end local v0           #curInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    :cond_0
    :goto_0
    return v1

    .line 355
    .restart local v0       #curInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    :sswitch_0
    const/4 v1, 0x1

    .line 356
    goto :goto_0

    .line 358
    :sswitch_1
    const/4 v1, 0x2

    .line 359
    goto :goto_0

    .line 361
    :sswitch_2
    const/4 v1, 0x3

    .line 362
    goto :goto_0

    .line 364
    :sswitch_3
    const/4 v1, 0x4

    .line 365
    goto :goto_0

    .line 367
    :sswitch_4
    const/4 v1, 0x5

    .line 368
    goto :goto_0

    .line 370
    :sswitch_5
    const/4 v1, 0x6

    .line 371
    goto :goto_0

    .line 353
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x3000 -> :sswitch_2
        0x4000 -> :sswitch_3
        0x5000 -> :sswitch_4
        0x6000 -> :sswitch_5
    .end sparse-switch
.end method

.method private process123Symbol(Landroid/view/KeyEvent;Z)Z
    .locals 7
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 444
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 445
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v4

    .line 448
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 449
    .local v2, keyCode:I
    const/4 v1, 0x0

    .line 451
    .local v1, keyChar:I
    const/4 v6, 0x7

    if-lt v2, v6, :cond_6

    const/16 v6, 0x10

    if-gt v2, v6, :cond_6

    .line 452
    if-nez p2, :cond_2

    move v4, v5

    .line 453
    goto :goto_0

    .line 454
    :cond_2
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbol()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 459
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 460
    invoke-direct {p0, v2, v5, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->process34Symbol(IZZ)Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v5

    .line 461
    goto :goto_0

    .line 463
    :cond_3
    invoke-direct {p0, v2, v4, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->process34Symbol(IZZ)Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v5

    .line 464
    goto :goto_0

    .line 467
    :cond_4
    add-int/lit8 v6, v2, -0x7

    add-int/lit8 v1, v6, 0x30

    .line 485
    :cond_5
    :goto_1
    if-eqz v1, :cond_0

    .line 486
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->commiteText(Ljava/lang/String;)V

    move v4, v5

    .line 488
    goto :goto_0

    .line 468
    .end local v3           #text:Ljava/lang/String;
    :cond_6
    const/16 v6, 0x47

    if-ne v2, v6, :cond_9

    .line 469
    if-nez p2, :cond_7

    move v4, v5

    goto :goto_0

    .line 471
    :cond_7
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseSymbolSkb()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 472
    const v1, 0xff08

    goto :goto_1

    .line 474
    :cond_8
    const/16 v1, 0x28

    goto :goto_1

    .line 476
    :cond_9
    const/16 v6, 0x48

    if-ne v2, v6, :cond_5

    .line 477
    if-nez p2, :cond_a

    move v4, v5

    goto :goto_0

    .line 479
    :cond_a
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseSymbolSkb()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 480
    const v1, 0xff09

    goto :goto_1

    .line 482
    :cond_b
    const/16 v1, 0x29

    goto :goto_1
.end method

.method private process34Symbol(IZZ)Z
    .locals 10
    .parameter "keyCode"
    .parameter "bFullWidth"
    .parameter "realAction"

    .prologue
    const/4 v6, 0x1

    .line 382
    const/4 v0, 0x0

    .line 385
    .local v0, bRet:Z
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 386
    const/4 v3, 0x0

    .line 387
    .local v3, keyChar:I
    const/4 v1, 0x0

    .line 388
    .local v1, currentPage:I
    invoke-direct {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getPage34Symbol()I

    move-result v1

    .line 391
    if-ltz v1, :cond_4

    const/4 v7, 0x6

    if-gt v1, v7, :cond_4

    .line 392
    if-eqz p2, :cond_1

    .line 393
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->fullSymbolMap:[[I

    .line 397
    .local v5, symbolMap:[[I
    :goto_0
    const/4 v7, 0x7

    if-ne p1, v7, :cond_3

    .line 398
    if-nez p3, :cond_2

    .line 439
    .end local v1           #currentPage:I
    .end local v3           #keyChar:I
    .end local v5           #symbolMap:[[I
    :cond_0
    :goto_1
    return v6

    .line 395
    .restart local v1       #currentPage:I
    .restart local v3       #keyChar:I
    :cond_1
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->halfSymbolMap:[[I

    .restart local v5       #symbolMap:[[I
    goto :goto_0

    .line 400
    :cond_2
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/16 v9, -0xb

    invoke-virtual {v8, v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 401
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->UpdateSkbContainer()V

    goto :goto_1

    .line 403
    :cond_3
    const/16 v7, 0x8

    if-lt p1, v7, :cond_6

    const/16 v7, 0x10

    if-gt p1, v7, :cond_6

    .line 404
    if-eqz p3, :cond_0

    .line 405
    add-int/lit8 v2, p1, -0x8

    .line 406
    .local v2, index:I
    add-int/lit8 v6, v1, -0x1

    aget-object v6, v5, v6

    aget v3, v6, v2

    .line 408
    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, result:Ljava/lang/String;
    const/16 v6, 0xd0a

    if-ne v3, v6, :cond_5

    .line 411
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processEnterKey()V

    .line 416
    :goto_2
    const/4 v0, 0x1

    .end local v1           #currentPage:I
    .end local v2           #index:I
    .end local v3           #keyChar:I
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #symbolMap:[[I
    :cond_4
    :goto_3
    move v6, v0

    .line 439
    goto :goto_1

    .line 415
    .restart local v1       #currentPage:I
    .restart local v2       #index:I
    .restart local v3       #keyChar:I
    .restart local v4       #result:Ljava/lang/String;
    .restart local v5       #symbolMap:[[I
    :cond_5
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-interface {v6, v4, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_2

    .line 418
    .end local v2           #index:I
    .end local v4           #result:Ljava/lang/String;
    :cond_6
    const/16 v7, 0x15

    if-ne p1, v7, :cond_7

    .line 419
    if-eqz p3, :cond_0

    .line 421
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/4 v8, -0x7

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 422
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->UpdateSkbContainer()V

    .line 423
    const/4 v0, 0x1

    goto :goto_3

    .line 425
    :cond_7
    const/16 v7, 0x16

    if-ne p1, v7, :cond_8

    .line 426
    if-eqz p3, :cond_0

    .line 428
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/4 v8, -0x8

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 429
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->UpdateSkbContainer()V

    .line 430
    const/4 v0, 0x1

    goto :goto_3

    .line 432
    :cond_8
    const/16 v7, 0x43

    if-ne p1, v7, :cond_4

    .line 433
    if-eqz p3, :cond_0

    .line 434
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v6, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 435
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private processDateTime(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 6
    .parameter "event"
    .parameter "realAction"

    .prologue
    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 678
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 679
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 680
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 683
    .local v2, keyChar:I
    const/4 v5, 0x7

    if-lt v3, v5, :cond_1

    const/16 v5, 0x10

    if-gt v3, v5, :cond_1

    .line 684
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 685
    if-eqz p2, :cond_0

    .line 686
    add-int/lit8 v5, v3, -0x7

    add-int/lit8 v2, v5, 0x30

    .line 687
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 688
    .local v4, text:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->commiteText(Ljava/lang/String;)V

    .line 690
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    .line 696
    .end local v2           #keyChar:I
    .end local v3           #keyCode:I
    :cond_1
    return v0
.end method

.method private processFunctionKeys(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 7
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 207
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 208
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    move v3, v5

    .line 344
    :cond_0
    :goto_0
    return v3

    .line 212
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v2

    .line 213
    .local v2, keyCode:I
    const/4 v1, 0x0

    .line 214
    .local v1, keyChar:I
    const-string v4, ""

    .line 215
    .local v4, text:Ljava/lang/String;
    const/4 v3, 0x0

    .line 217
    .local v3, result:Z
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 246
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 253
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 257
    const/4 v3, 0x1

    goto :goto_0

    .line 222
    :sswitch_1
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolbarSymbol(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    if-eqz p2, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processUpPageKey()V

    .line 227
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 234
    :sswitch_2
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolbarSymbol(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    if-eqz p2, :cond_3

    .line 237
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processDownPageKey()V

    .line 239
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 258
    :cond_4
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 261
    const/4 v3, 0x0

    goto :goto_0

    .line 263
    :cond_5
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_0

    .line 264
    if-eqz p2, :cond_6

    .line 265
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processStarKey()V

    .line 267
    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    .line 276
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 283
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 287
    const/4 v3, 0x1

    goto :goto_0

    .line 288
    :cond_7
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 291
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 293
    :cond_8
    if-eqz p2, :cond_9

    .line 294
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processPoundKey(Lcom/samsung/inputmethod/SimeKeyEvent;)V

    .line 296
    :cond_9
    const/4 v3, 0x1

    .line 301
    goto/16 :goto_0

    .line 303
    :sswitch_4
    if-nez p2, :cond_a

    move v3, v6

    goto/16 :goto_0

    .line 304
    :cond_a
    const/16 v1, 0x20

    .line 305
    int-to-char v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 306
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->commiteText(Ljava/lang/String;)V

    .line 307
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 308
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->autoPeriod()V

    .line 310
    :cond_b
    const/4 v3, 0x1

    .line 311
    goto/16 :goto_0

    .line 313
    :sswitch_5
    if-nez p2, :cond_c

    move v3, v6

    goto/16 :goto_0

    .line 316
    :cond_c
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_d

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v5, :cond_d

    .line 317
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->deleteFast(I)V

    .line 327
    :goto_1
    const/4 v3, 0x1

    .line 328
    goto/16 :goto_0

    .line 319
    :cond_d
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 330
    :sswitch_6
    if-nez p2, :cond_e

    move v3, v6

    goto/16 :goto_0

    .line 332
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processEnterKey()V

    .line 333
    const/4 v3, 0x1

    .line 334
    goto/16 :goto_0

    .line 336
    :sswitch_7
    invoke-static {v5}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardLedState(Z)V

    .line 337
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3e -> :sswitch_4
        0x42 -> :sswitch_6
        0x43 -> :sswitch_5
        0x73 -> :sswitch_7
    .end sparse-switch
.end method

.method private processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 7
    .parameter "event"
    .parameter "isPressedDown"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, bProcessed:Z
    const/4 v3, 0x0

    .line 143
    .local v3, isSoftKey:Z
    const/4 v1, 0x0

    .line 144
    .local v1, bRealAction:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v2

    .line 150
    .local v2, count:I
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 151
    const/4 v3, 0x1

    .line 155
    :cond_0
    if-eqz v3, :cond_4

    .line 157
    if-nez p2, :cond_3

    move v1, v4

    .line 183
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processFunctionKeys(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 184
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v4, v0

    .line 200
    :cond_2
    return v4

    :cond_3
    move v1, v5

    .line 157
    goto :goto_0

    .line 162
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->isKeyProcessedWhenLong(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 166
    if-gtz v2, :cond_2

    .line 171
    if-nez p2, :cond_5

    move v1, v4

    :goto_2
    goto :goto_0

    :cond_5
    move v1, v5

    goto :goto_2

    .line 172
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->isHardKeyProcessedWhenUp(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 175
    if-nez p2, :cond_7

    move v1, v4

    :goto_3
    goto :goto_0

    :cond_7
    move v1, v5

    goto :goto_3

    .line 178
    :cond_8
    move v1, p2

    goto :goto_0

    .line 189
    :cond_9
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 190
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->process123Symbol(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_1

    .line 191
    :cond_a
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 192
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processDateTime(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto :goto_1

    .line 193
    :cond_b
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 194
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processMonth(Landroid/view/KeyEvent;Z)Z

    move-result v0

    goto :goto_1

    .line 195
    :cond_c
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 196
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processPhone(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto :goto_1

    .line 197
    :cond_d
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 198
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processNumOnly(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto :goto_1
.end method

.method private processMonth(Landroid/view/KeyEvent;Z)Z
    .locals 13
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/16 v12, 0x30

    const/4 v11, 0x2

    const/4 v6, 0x0

    const/16 v10, 0x14

    const/4 v7, 0x1

    .line 500
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 501
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 666
    :cond_0
    :goto_0
    return v6

    .line 505
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 509
    .local v3, keyCode:I
    new-instance v8, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v8}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v1, v8, v6}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 511
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 517
    const/4 v5, 0x0

    .line 518
    .local v5, textCharLen:I
    const/4 v2, 0x0

    .line 519
    .local v2, isNumEnv:Z
    const-string v4, ""

    .line 520
    .local v4, label:Ljava/lang/String;
    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 525
    if-lt v5, v11, :cond_2

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-lt v8, v12, :cond_2

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-le v8, v9, :cond_3

    :cond_2
    if-ne v5, v7, :cond_4

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-lt v8, v12, :cond_4

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-gt v8, v9, :cond_4

    .line 528
    :cond_3
    const/4 v2, 0x1

    .line 530
    :cond_4
    packed-switch v3, :pswitch_data_0

    .line 655
    :goto_1
    :pswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 656
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 657
    if-lez v5, :cond_5

    .line 658
    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 659
    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 661
    :cond_5
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->commiteText(Ljava/lang/String;)V

    .line 662
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v6, v7

    .line 663
    goto :goto_0

    .line 533
    :pswitch_1
    if-nez p2, :cond_6

    move v6, v7

    .line 534
    goto :goto_0

    .line 535
    :cond_6
    if-eqz v2, :cond_7

    .line 536
    const-string v4, "01"

    goto :goto_1

    .line 538
    :cond_7
    invoke-static {v6, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 540
    goto :goto_1

    .line 543
    :pswitch_2
    if-nez p2, :cond_8

    move v6, v7

    .line 544
    goto :goto_0

    .line 545
    :cond_8
    if-eqz v2, :cond_9

    .line 546
    const-string v4, "02"

    goto :goto_1

    .line 548
    :cond_9
    invoke-static {v7, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 550
    goto :goto_1

    .line 553
    :pswitch_3
    if-nez p2, :cond_a

    move v6, v7

    .line 554
    goto :goto_0

    .line 555
    :cond_a
    if-eqz v2, :cond_b

    .line 556
    const-string v4, "03"

    goto :goto_1

    .line 558
    :cond_b
    invoke-static {v11, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 560
    goto :goto_1

    .line 563
    :pswitch_4
    if-nez p2, :cond_c

    move v6, v7

    .line 564
    goto/16 :goto_0

    .line 565
    :cond_c
    if-eqz v2, :cond_d

    .line 566
    const-string v4, "04"

    goto :goto_1

    .line 568
    :cond_d
    const/4 v8, 0x3

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 570
    goto :goto_1

    .line 573
    :pswitch_5
    if-nez p2, :cond_e

    move v6, v7

    .line 574
    goto/16 :goto_0

    .line 575
    :cond_e
    if-eqz v2, :cond_f

    .line 576
    const-string v4, "05"

    goto :goto_1

    .line 578
    :cond_f
    const/4 v8, 0x4

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 580
    goto :goto_1

    .line 583
    :pswitch_6
    if-nez p2, :cond_10

    move v6, v7

    .line 584
    goto/16 :goto_0

    .line 585
    :cond_10
    if-eqz v2, :cond_11

    .line 586
    const-string v4, "06"

    goto :goto_1

    .line 588
    :cond_11
    const/4 v8, 0x5

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 590
    goto :goto_1

    .line 593
    :pswitch_7
    if-nez p2, :cond_12

    move v6, v7

    .line 594
    goto/16 :goto_0

    .line 595
    :cond_12
    if-eqz v2, :cond_13

    .line 596
    const-string v4, "07"

    goto :goto_1

    .line 598
    :cond_13
    const/4 v8, 0x6

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 600
    goto/16 :goto_1

    .line 603
    :pswitch_8
    if-nez p2, :cond_14

    move v6, v7

    .line 604
    goto/16 :goto_0

    .line 605
    :cond_14
    if-eqz v2, :cond_15

    .line 606
    const-string v4, "08"

    goto/16 :goto_1

    .line 608
    :cond_15
    const/4 v8, 0x7

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 610
    goto/16 :goto_1

    .line 613
    :pswitch_9
    if-nez p2, :cond_16

    move v6, v7

    .line 614
    goto/16 :goto_0

    .line 615
    :cond_16
    if-eqz v2, :cond_17

    .line 616
    const-string v4, "09"

    goto/16 :goto_1

    .line 618
    :cond_17
    const/16 v8, 0x8

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 620
    goto/16 :goto_1

    .line 623
    :pswitch_a
    if-nez p2, :cond_18

    move v6, v7

    .line 624
    goto/16 :goto_0

    .line 625
    :cond_18
    if-eqz v2, :cond_19

    .line 626
    const-string v4, "10"

    goto/16 :goto_1

    .line 628
    :cond_19
    const/16 v8, 0x9

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 630
    goto/16 :goto_1

    .line 633
    :pswitch_b
    if-nez p2, :cond_1a

    move v6, v7

    .line 634
    goto/16 :goto_0

    .line 635
    :cond_1a
    if-eqz v2, :cond_1b

    .line 636
    const-string v4, "11"

    goto/16 :goto_1

    .line 638
    :cond_1b
    const/16 v8, 0xa

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 640
    goto/16 :goto_1

    .line 643
    :pswitch_c
    if-nez p2, :cond_1c

    move v6, v7

    .line 644
    goto/16 :goto_0

    .line 645
    :cond_1c
    if-eqz v2, :cond_1d

    .line 646
    const-string v4, "12"

    goto/16 :goto_1

    .line 648
    :cond_1d
    const/16 v8, 0xb

    invoke-static {v8, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    .line 650
    goto/16 :goto_1

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private processNumOnly(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 6
    .parameter "event"
    .parameter "realAction"

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 743
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v0, 0x0

    .line 745
    .local v0, bRet:Z
    if-eqz v1, :cond_2

    .line 746
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 747
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 749
    .local v2, keyChar:I
    const/4 v5, 0x7

    if-lt v3, v5, :cond_1

    const/16 v5, 0x10

    if-gt v3, v5, :cond_1

    .line 750
    if-eqz p2, :cond_0

    .line 751
    add-int/lit8 v5, v3, -0x7

    add-int/lit8 v2, v5, 0x30

    .line 753
    :cond_0
    const/4 v0, 0x1

    .line 759
    :cond_1
    if-eqz v2, :cond_2

    .line 762
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 763
    .local v4, result:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->commiteText(Ljava/lang/String;)V

    .line 769
    .end local v2           #keyChar:I
    .end local v3           #keyCode:I
    .end local v4           #result:Ljava/lang/String;
    :cond_2
    return v0
.end method

.method private processPhone(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 6
    .parameter "event"
    .parameter "realAction"

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 703
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v0, 0x0

    .line 705
    .local v0, bRet:Z
    if-eqz v1, :cond_2

    .line 706
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 707
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 709
    .local v2, keyChar:I
    const/4 v5, 0x7

    if-lt v3, v5, :cond_3

    const/16 v5, 0x10

    if-gt v3, v5, :cond_3

    .line 710
    if-eqz p2, :cond_0

    .line 711
    add-int/lit8 v5, v3, -0x7

    add-int/lit8 v2, v5, 0x30

    .line 713
    :cond_0
    const/4 v0, 0x1

    .line 725
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 728
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 729
    .local v4, result:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->commiteText(Ljava/lang/String;)V

    .line 735
    .end local v2           #keyChar:I
    .end local v3           #keyCode:I
    .end local v4           #result:Ljava/lang/String;
    :cond_2
    return v0

    .line 714
    .restart local v2       #keyChar:I
    .restart local v3       #keyCode:I
    :cond_3
    const/16 v5, 0x37

    if-eq v3, v5, :cond_4

    const/16 v5, 0x4a

    if-eq v3, v5, :cond_4

    const/16 v5, 0x11

    if-eq v3, v5, :cond_4

    const/16 v5, 0x12

    if-ne v3, v5, :cond_1

    .line 716
    :cond_4
    if-eqz p2, :cond_5

    .line 717
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getUnicodeChar()I

    move-result v2

    .line 719
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public processKeyDown(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public processKeyUp(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public processLongPressKey(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 112
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v1, 0x0

    .line 113
    .local v1, keyChar:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 115
    .local v2, keyCode:I
    if-nez v0, :cond_0

    .line 116
    const/4 v4, 0x0

    .line 132
    :goto_0
    return v4

    .line 119
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    :cond_1
    const/4 v4, 0x7

    if-ne v2, v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->isKeyProcessedWhenLong(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    const/16 v1, 0x2b

    .line 125
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, result:Ljava/lang/String;
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 127
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 128
    const/4 v4, 0x1

    goto :goto_0

    .line 132
    .end local v3           #result:Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processLongPressKey(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method
