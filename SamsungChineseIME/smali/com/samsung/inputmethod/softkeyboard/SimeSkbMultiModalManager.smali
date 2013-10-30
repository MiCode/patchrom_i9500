.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;
.super Ljava/lang/Object;
.source "SimeSkbMultiModalManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeInputModeSwitcher"


# instance fields
.field private mImeService:Lcom/samsung/inputmethod/SamsungIME;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 0
    .parameter "imeService"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    .line 48
    return-void
.end method


# virtual methods
.method public getMultiModalSoftkeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .locals 17

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 58
    .local v14, r:Landroid/content/res/Resources;
    const/16 v16, 0x0

    .line 59
    .local v16, skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;

    move-result-object v1

    .line 61
    .local v1, skbPool:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;
    const/4 v4, 0x0

    .line 62
    .local v4, miniSkbWidth:I
    const/4 v5, 0x0

    .line 64
    .local v5, miniSkbHeight:I
    const v2, 0x7f0a004c

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v4, v2

    .line 65
    const v2, 0x7f0a004d

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v5, v2

    .line 67
    const/4 v2, 0x4

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ","

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "?"

    aput-object v3, v7, v2

    const/4 v2, 0x2

    const-string v3, "!"

    aput-object v3, v7, v2

    const/4 v2, 0x3

    const-string v3, "\'"

    aput-object v3, v7, v2

    .line 69
    .local v7, cmSymbolValues:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->getValidMMCodes()[I

    move-result-object v13

    .line 70
    .local v13, multiModalKeyCodes:[I
    array-length v2, v13

    array-length v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 72
    .local v15, rowItemMax:I
    mul-int/2addr v4, v15

    .line 73
    mul-int/lit8 v5, v5, 0x2

    .line 78
    packed-switch v15, :pswitch_data_0

    .line 89
    const v2, 0x7f040014

    const v3, 0x7f040014

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v16

    .line 92
    :goto_0
    if-nez v16, :cond_1

    const/16 v16, 0x0

    .line 169
    .end local v16           #skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :cond_0
    :goto_1
    return-object v16

    .line 80
    .restart local v16       #skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :pswitch_0
    const v2, 0x7f040014

    const v3, 0x7f040014

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v16

    .line 81
    goto :goto_0

    .line 83
    :pswitch_1
    const v2, 0x7f040015

    const v3, 0x7f040015

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v16

    .line 84
    goto :goto_0

    .line 86
    :pswitch_2
    const v2, 0x7f040016

    const v3, 0x7f040016

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v16

    .line 87
    goto :goto_0

    .line 94
    :cond_1
    const/4 v8, 0x0

    .line 95
    .local v8, firstKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    const/4 v11, 0x0

    .line 96
    .local v11, keyIcon:Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    .line 97
    .local v10, keyHlIcon:Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .line 100
    .local v12, keyType:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v15, :cond_0

    .line 101
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKey(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v8

    .line 102
    if-nez v8, :cond_2

    .line 104
    const/16 v16, 0x0

    goto :goto_1

    .line 107
    :cond_2
    array-length v2, v13

    if-gt v2, v9, :cond_3

    .line 108
    const/4 v11, 0x0

    .line 109
    const/4 v10, 0x0

    .line 110
    const/4 v12, 0x0

    .line 113
    invoke-virtual {v8, v12, v11, v10}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setMultiModalKeyType(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 100
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 117
    :cond_3
    aget v2, v13, v9

    packed-switch v2, :pswitch_data_1

    .line 154
    const/4 v11, 0x0

    .line 155
    const/4 v10, 0x0

    .line 156
    const/4 v12, 0x0

    .line 162
    :goto_4
    aget v2, v13, v9

    invoke-virtual {v8, v2, v11, v10}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setMultiModalKeyType(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 119
    :pswitch_3
    const v2, 0x7f02017b

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 120
    const v2, 0x7f02017c

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 121
    goto :goto_4

    .line 124
    :pswitch_4
    const v2, 0x7f02016d

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 125
    const v2, 0x7f02016e

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 126
    goto :goto_4

    .line 129
    :pswitch_5
    const v2, 0x7f020171

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 130
    const v2, 0x7f020172

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 131
    goto :goto_4

    .line 134
    :pswitch_6
    const v2, 0x7f020167

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 135
    const v2, 0x7f020168

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 136
    goto :goto_4

    .line 139
    :pswitch_7
    const v2, 0x7f020173

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 140
    const v2, 0x7f020174

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 141
    goto :goto_4

    .line 144
    :pswitch_8
    const v2, 0x7f020179

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 145
    const v2, 0x7f02017a

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 146
    goto :goto_4

    .line 149
    :pswitch_9
    const v2, 0x7f020169

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 150
    const v2, 0x7f02016a

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 151
    goto :goto_4

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 117
    :pswitch_data_1
    .packed-switch -0x7d
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getValidMMCodes()[I
    .locals 13

    .prologue
    .line 175
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isVoiceInstalled()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getVoiceInput()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v10}, Lcom/samsung/inputmethod/SamsungIME;->isVoiceInputEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v4, 0x1

    .line 178
    .local v4, isVoiceValid:Z
    :goto_0
    iget-object v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v10}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isClipboardEnabled()Z

    move-result v1

    .line 180
    .local v1, isClipboardValid:Z
    const/4 v3, 0x0

    .line 181
    .local v3, isOCRValid:Z
    const/4 v7, 0x0

    .line 185
    .local v7, ocrInstalled:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v10}, Lcom/samsung/inputmethod/SamsungIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.android.app.ocr"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 186
    if-eqz v7, :cond_0

    .line 187
    const/4 v3, 0x1

    .line 192
    :cond_0
    :goto_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FLOATING_BY_CMKEY:Z

    .line 194
    .local v2, isFloatingValid:Z
    const/4 v10, 0x7

    new-array v6, v10, [I

    fill-array-data v6, :array_0

    .line 205
    .local v6, multiModalCodes:[I
    iget-object v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v10}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 206
    const/4 v10, 0x1

    const/4 v11, -0x1

    aput v11, v6, v10

    .line 212
    :goto_2
    if-nez v4, :cond_1

    .line 213
    const/4 v10, 0x0

    const/4 v11, -0x1

    aput v11, v6, v10

    .line 216
    :cond_1
    if-nez v1, :cond_2

    .line 217
    const/4 v10, 0x3

    const/4 v11, -0x1

    aput v11, v6, v10

    .line 220
    :cond_2
    if-nez v3, :cond_3

    sget-boolean v10, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_OCR_FEATURE:Z

    if-nez v10, :cond_3

    .line 221
    const/4 v10, 0x4

    const/4 v11, -0x1

    aput v11, v6, v10

    .line 224
    :cond_3
    if-nez v2, :cond_4

    .line 225
    const/4 v10, 0x6

    const/4 v11, -0x1

    aput v11, v6, v10

    .line 227
    :cond_4
    const/4 v8, 0x0

    .line 228
    .local v8, validCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v10, v6

    if-ge v0, v10, :cond_8

    .line 229
    aget v10, v6, v0

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    .line 230
    add-int/lit8 v8, v8, 0x1

    .line 228
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 175
    .end local v0           #i:I
    .end local v1           #isClipboardValid:Z
    .end local v2           #isFloatingValid:Z
    .end local v3           #isOCRValid:Z
    .end local v4           #isVoiceValid:Z
    .end local v6           #multiModalCodes:[I
    .end local v7           #ocrInstalled:Landroid/content/pm/PackageInfo;
    .end local v8           #validCount:I
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 208
    .restart local v1       #isClipboardValid:Z
    .restart local v2       #isFloatingValid:Z
    .restart local v3       #isOCRValid:Z
    .restart local v4       #isVoiceValid:Z
    .restart local v6       #multiModalCodes:[I
    .restart local v7       #ocrInstalled:Landroid/content/pm/PackageInfo;
    :cond_7
    const/4 v10, 0x2

    const/4 v11, -0x1

    aput v11, v6, v10

    goto :goto_2

    .line 234
    .restart local v0       #i:I
    .restart local v8       #validCount:I
    :cond_8
    new-array v9, v8, [I

    .line 235
    .local v9, validMultiModalCodes:[I
    const/4 v0, 0x0

    const/4 v5, 0x0

    .local v5, j:I
    :goto_4
    array-length v10, v6

    if-ge v0, v10, :cond_a

    array-length v10, v9

    if-ge v5, v10, :cond_a

    .line 236
    aget v10, v6, v0

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    .line 237
    aget v10, v6, v0

    aput v10, v9, v5

    .line 238
    add-int/lit8 v5, v5, 0x1

    .line 235
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 242
    :cond_a
    return-object v9

    .line 188
    .end local v0           #i:I
    .end local v2           #isFloatingValid:Z
    .end local v5           #j:I
    .end local v6           #multiModalCodes:[I
    .end local v8           #validCount:I
    .end local v9           #validMultiModalCodes:[I
    :catch_0
    move-exception v10

    goto :goto_1

    .line 194
    :array_0
    .array-data 0x4
        0x88t 0xfft 0xfft 0xfft
        0x89t 0xfft 0xfft 0xfft
        0x84t 0xfft 0xfft 0xfft
        0x83t 0xfft 0xfft 0xfft
        0x86t 0xfft 0xfft 0xfft
        0x87t 0xfft 0xfft 0xfft
        0x85t 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public handleMultiModalKey(I)V
    .locals 4
    .parameter "multiModalKeyCode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 410
    const/4 v0, 0x0

    .line 415
    .local v0, multiModalStatus:I
    const/16 v1, -0x75

    if-eq p1, v1, :cond_0

    .line 416
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->setMultiModalState(I)V

    .line 419
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getMultiModalStatus()I

    move-result v0

    .line 422
    packed-switch v0, :pswitch_data_0

    .line 513
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 425
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 426
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getDialogMgr()Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->ClearAllPopupMenu()V

    .line 427
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->showIMESettingMenu()V

    goto :goto_0

    .line 432
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->handleClipboardKey()V

    goto :goto_0

    .line 437
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 439
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToKeypadModeByToggleKey()I

    goto :goto_0

    .line 442
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToHandwritingModeByToggleKey()I

    goto :goto_0

    .line 448
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->startVoiceListening()V

    goto :goto_0

    .line 458
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getOCRProcessor()Lcom/samsung/inputmethod/SimeOCR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeOCR;->handleOcrKey()V

    goto :goto_0

    .line 463
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 464
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v2, ","

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 469
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 470
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v2, "?"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 475
    :pswitch_8
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 476
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v2, "!"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 481
    :pswitch_9
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 482
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v2, "\'"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 488
    :pswitch_a
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FLOATING_BY_CMKEY:Z

    if-eqz v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->isFloatingKeyboardForMultiWindow()Z

    move-result v1

    if-nez v1, :cond_3

    .line 492
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetFloatingKeyboard(Z)V

    .line 495
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/SamsungIME;->SetFloatingKeyboardForMultiWindow(Z)V

    goto/16 :goto_0

    .line 497
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->isFloatingKeyboardForMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetFloatingKeyboard(Z)V

    .line 503
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 504
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->SetFloatingKeyboardForMultiWindow(Z)V

    goto/16 :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 0
    .parameter "inputModeSwitcher"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 52
    return-void
.end method

.method public setMultiModalState(I)V
    .locals 5
    .parameter "keyCode"

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 334
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isVoiceInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getVoiceInput()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->isVoiceInputEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 337
    .local v0, isVoiceValid:Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 397
    if-eqz v0, :cond_a

    .line 398
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    .line 404
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->updateToggleStates()V

    .line 406
    return-void

    .end local v0           #isVoiceValid:Z
    :cond_0
    move v0, v2

    .line 334
    goto :goto_0

    .line 340
    .restart local v0       #isVoiceValid:Z
    :pswitch_0
    if-eqz v0, :cond_1

    .line 341
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 343
    :cond_1
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 346
    :pswitch_1
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 349
    :pswitch_2
    if-eqz v0, :cond_2

    .line 350
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 352
    :cond_2
    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 355
    :pswitch_3
    if-eqz v0, :cond_3

    .line 356
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 358
    :cond_3
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 361
    :pswitch_4
    if-eqz v0, :cond_4

    .line 362
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 364
    :cond_4
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 367
    :pswitch_5
    if-eqz v0, :cond_5

    .line 368
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 370
    :cond_5
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 373
    :pswitch_6
    if-eqz v0, :cond_6

    .line 374
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 376
    :cond_6
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 379
    :pswitch_7
    if-eqz v0, :cond_7

    .line 380
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 382
    :cond_7
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 385
    :pswitch_8
    if-eqz v0, :cond_8

    .line 386
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 388
    :cond_8
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 391
    :pswitch_9
    if-eqz v0, :cond_9

    .line 392
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 394
    :cond_9
    const/16 v1, 0x13

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 400
    :cond_a
    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto/16 :goto_1

    .line 337
    :pswitch_data_0
    .packed-switch -0x81
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateMultiModalState()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 248
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isVoiceInstalled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getVoiceInput()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isVoiceInputEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 251
    .local v0, isVoiceValid:Z
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getMultiModalStatus()I

    move-result v1

    .line 253
    .local v1, multiModalStatus:I
    packed-switch v1, :pswitch_data_0

    .line 330
    :goto_1
    :pswitch_0
    return-void

    .end local v0           #isVoiceValid:Z
    .end local v1           #multiModalStatus:I
    :cond_0
    move v0, v3

    .line 248
    goto :goto_0

    .line 256
    .restart local v0       #isVoiceValid:Z
    .restart local v1       #multiModalStatus:I
    :pswitch_1
    if-eqz v0, :cond_1

    .line 257
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 259
    :cond_1
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 264
    :pswitch_2
    if-eqz v0, :cond_2

    .line 265
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 267
    :cond_2
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 272
    :pswitch_3
    if-eqz v0, :cond_3

    .line 273
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 275
    :cond_3
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 282
    :pswitch_4
    if-eqz v0, :cond_4

    .line 283
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 285
    :cond_4
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 290
    :pswitch_5
    if-eqz v0, :cond_5

    .line 291
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 293
    :cond_5
    const/16 v2, 0xf

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 298
    :pswitch_6
    if-eqz v0, :cond_6

    .line 299
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 301
    :cond_6
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 306
    :pswitch_7
    if-eqz v0, :cond_7

    .line 307
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 309
    :cond_7
    const/16 v2, 0x11

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 314
    :pswitch_8
    if-eqz v0, :cond_8

    .line 315
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 317
    :cond_8
    const/16 v2, 0x12

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 322
    :pswitch_9
    if-eqz v0, :cond_9

    .line 323
    const/16 v2, 0x9

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 325
    :cond_9
    const/16 v2, 0x13

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setMultiModalStatus(I)V

    goto :goto_1

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
