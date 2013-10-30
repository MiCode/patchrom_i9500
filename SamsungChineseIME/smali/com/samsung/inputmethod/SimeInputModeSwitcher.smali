.class public Lcom/samsung/inputmethod/SimeInputModeSwitcher;
.super Ljava/lang/Object;
.source "SimeInputModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/SimeInputModeSwitcher$1;,
        Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;,
        Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeInputModeSwitcher"

.field private static mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

.field private static mMainInputMode:I


# instance fields
.field mEditorChoose:Z

.field private mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mEnterKeyNormal:Z

.field private mImeService:Lcom/samsung/inputmethod/SamsungIME;

.field mInputIcon:I

.field private mInputMode:I

.field private mPointingOn:Z

.field private mPredictionOn:Z

.field private mRecentHandwritingInputMode:I

.field private mRecentKeyPadModeMgr:Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;

.field private mRecentLauageInputMode:I

.field mRestarting:Z

.field private mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

.field private mSymbolLock:Z

.field private mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

.field private mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

.field private mUrlSuffixShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-direct {v0}, Lcom/samsung/inputmethod/SimeLanguageMgr;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    .line 63
    const/4 v0, 0x0

    sput v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 5
    .parameter "imeService"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    .line 67
    iput v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    .line 72
    iput v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentHandwritingInputMode:I

    .line 87
    new-instance v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;-><init>(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentKeyPadModeMgr:Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;

    .line 94
    iput-boolean v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRestarting:Z

    .line 95
    iput-boolean v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    .line 102
    new-instance v2, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-direct {v2}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    .line 106
    iput-boolean v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mUrlSuffixShow:Z

    .line 107
    iput-boolean v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSymbolLock:Z

    .line 108
    iput-boolean v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mPointingOn:Z

    .line 112
    iput-boolean v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEnterKeyNormal:Z

    .line 123
    iput v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    .line 226
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    .line 227
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->initInputModeFromDB()V

    .line 228
    new-instance v2, Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    invoke-direct {v2, p1, p0}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    .line 230
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 231
    new-instance v2, Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;-><init>(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    .line 235
    :cond_0
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_LANG_MGR:Z

    if-eqz v2, :cond_1

    .line 237
    const/4 v0, 0x1

    .line 238
    .local v0, bRet:Z
    sget-object v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    sget v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    const/high16 v4, 0xf

    and-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getLangByMask(I)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SimeLanguageMgr;->setCurLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    move-result v0

    .line 241
    if-nez v0, :cond_1

    .line 244
    sget-object v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeLanguageMgr;->reInitialize()Z

    .line 246
    sget-object v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getCurLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getMaskByLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSettingLangbyLangMask(I)I

    move-result v1

    .line 248
    .local v1, settingLang:I
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v2

    sput v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 256
    .end local v0           #bRet:Z
    .end local v1           #settingLang:I
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v2, p0}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 257
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->initPrivateImeOptionTable()V

    .line 258
    return-void
.end method

.method private ChangeTo34Mode(I)I
    .locals 2
    .parameter "lan"

    .prologue
    .line 1346
    const/high16 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1347
    const/high16 v0, 0x1211

    .line 1367
    .local v0, inputmode:I
    :goto_0
    return v0

    .line 1348
    .end local v0           #inputmode:I
    :cond_0
    const/high16 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1349
    const/high16 v0, 0x1203

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1350
    .end local v0           #inputmode:I
    :cond_1
    const/high16 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 1351
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->isStrokeZhTw()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1352
    const/high16 v0, 0x3204

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1354
    .end local v0           #inputmode:I
    :cond_2
    const/high16 v0, 0x2204

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1357
    .end local v0           #inputmode:I
    :cond_3
    const/high16 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 1359
    const/high16 v0, 0x3205

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1361
    .end local v0           #inputmode:I
    :cond_4
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->isStrokeZhCn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1362
    const/high16 v0, 0x3202

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1364
    .end local v0           #inputmode:I
    :cond_5
    const/high16 v0, 0x1202

    .restart local v0       #inputmode:I
    goto :goto_0
.end method

.method private ChangeToHWBoxMode(I)I
    .locals 2
    .parameter "lan"

    .prologue
    .line 1470
    const/high16 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1471
    const v0, 0x34010100

    .line 1481
    .local v0, inputmode:I
    :goto_0
    return v0

    .line 1472
    .end local v0           #inputmode:I
    :cond_0
    const/high16 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1473
    const v0, 0x34030100

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1474
    .end local v0           #inputmode:I
    :cond_1
    const/high16 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1475
    const v0, 0x34040100

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1476
    .end local v0           #inputmode:I
    :cond_2
    const/high16 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 1477
    const v0, 0x34050100

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1479
    .end local v0           #inputmode:I
    :cond_3
    const v0, 0x34020100

    .restart local v0       #inputmode:I
    goto :goto_0
.end method

.method private ChangeToHWFSMode(I)I
    .locals 4
    .parameter "lan"

    .prologue
    .line 1449
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_0

    .line 1450
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v0

    .local v0, inputmode:I
    move v1, v0

    .line 1465
    .end local v0           #inputmode:I
    .local v1, inputmode:I
    :goto_0
    return v1

    .line 1454
    .end local v1           #inputmode:I
    :cond_0
    const/high16 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 1455
    const v0, 0x33010100

    .restart local v0       #inputmode:I
    :goto_1
    move v1, v0

    .line 1465
    .end local v0           #inputmode:I
    .restart local v1       #inputmode:I
    goto :goto_0

    .line 1456
    .end local v1           #inputmode:I
    :cond_1
    const/high16 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 1457
    const v0, 0x33030100

    .restart local v0       #inputmode:I
    goto :goto_1

    .line 1458
    .end local v0           #inputmode:I
    :cond_2
    const/high16 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 1459
    const v0, 0x33040100

    .restart local v0       #inputmode:I
    goto :goto_1

    .line 1460
    .end local v0           #inputmode:I
    :cond_3
    const/high16 v2, 0x5

    if-ne p1, v2, :cond_4

    .line 1461
    const v0, 0x33050100

    .restart local v0       #inputmode:I
    goto :goto_1

    .line 1463
    .end local v0           #inputmode:I
    :cond_4
    const v0, 0x33020100

    .restart local v0       #inputmode:I
    goto :goto_1
.end method

.method private ChangeToQwertyMode(I)I
    .locals 2
    .parameter "lan"

    .prologue
    .line 1431
    const/high16 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1432
    const/high16 v0, 0x1111

    .line 1442
    .local v0, inputmode:I
    :goto_0
    return v0

    .line 1433
    .end local v0           #inputmode:I
    :cond_0
    const/high16 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1434
    const/high16 v0, 0x1113

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1435
    .end local v0           #inputmode:I
    :cond_1
    const/high16 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1436
    const/high16 v0, 0x2104

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1437
    .end local v0           #inputmode:I
    :cond_2
    const/high16 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 1438
    const/high16 v0, -0x6efb

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1440
    .end local v0           #inputmode:I
    :cond_3
    const/high16 v0, 0x1102

    .restart local v0       #inputmode:I
    goto :goto_0
.end method

.method private ChangeToStrokeModeOnToolbar(I)I
    .locals 2
    .parameter "lan"

    .prologue
    .line 1373
    const/high16 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1374
    const/high16 v0, 0x1211

    .line 1384
    .local v0, inputmode:I
    :goto_0
    return v0

    .line 1375
    .end local v0           #inputmode:I
    :cond_0
    const/high16 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1376
    const/high16 v0, 0x1203

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1377
    .end local v0           #inputmode:I
    :cond_1
    const/high16 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1378
    const/high16 v0, 0x3204

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1379
    .end local v0           #inputmode:I
    :cond_2
    const/high16 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 1380
    const/high16 v0, 0x3205

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1382
    .end local v0           #inputmode:I
    :cond_3
    const/high16 v0, 0x3202

    .restart local v0       #inputmode:I
    goto :goto_0
.end method

.method private ChangeToTwelveKeyModeOnToolbar(I)I
    .locals 2
    .parameter "lan"

    .prologue
    .line 1390
    const/high16 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1391
    const/high16 v0, 0x1211

    .line 1401
    .local v0, inputmode:I
    :goto_0
    return v0

    .line 1392
    .end local v0           #inputmode:I
    :cond_0
    const/high16 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1393
    const/high16 v0, 0x1203

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1394
    .end local v0           #inputmode:I
    :cond_1
    const/high16 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1395
    const/high16 v0, 0x2204

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1396
    .end local v0           #inputmode:I
    :cond_2
    const/high16 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 1397
    const/high16 v0, -0x6dfb

    .restart local v0       #inputmode:I
    goto :goto_0

    .line 1399
    .end local v0           #inputmode:I
    :cond_3
    const/high16 v0, 0x1202

    .restart local v0       #inputmode:I
    goto :goto_0
.end method

.method private changeToolbarmodeToSKBMode(Lcom/samsung/inputmethod/SimeInputModeDef;)Lcom/samsung/inputmethod/SimeInputModeDef;
    .locals 2
    .parameter "toolBarMode"

    .prologue
    .line 1270
    new-instance v0, Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-direct {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>()V

    .line 1272
    .local v0, newInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1274
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->typeMask()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1295
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->languageMask()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 1318
    :cond_0
    :goto_0
    return-object v0

    .line 1276
    :sswitch_0
    const/high16 v1, 0x5200

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1280
    :sswitch_1
    const v1, -0x7effe000

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1284
    :sswitch_2
    const/high16 v1, 0x7200

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1288
    :sswitch_3
    const v1, -0x4dffffd0

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1292
    :sswitch_4
    const v1, 0x62021000

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1297
    :sswitch_5
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1300
    :sswitch_6
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1303
    :sswitch_7
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1306
    :sswitch_8
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1309
    :sswitch_9
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    goto :goto_0

    .line 1274
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        -0x50000000 -> :sswitch_3
        0x50000000 -> :sswitch_0
        0x60000000 -> :sswitch_4
        0x70000000 -> :sswitch_2
    .end sparse-switch

    .line 1295
    :sswitch_data_1
    .sparse-switch
        0x10000 -> :sswitch_5
        0x20000 -> :sswitch_6
        0x30000 -> :sswitch_7
        0x40000 -> :sswitch_9
        0x50000 -> :sswitch_8
    .end sparse-switch
.end method

.method public static getCurrentLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5142
    const/4 v0, 0x0

    .line 5143
    .local v0, curLangStr:Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_LANG_MGR:Z

    if-eqz v1, :cond_0

    .line 5144
    sget-object v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getCurLangStr()Ljava/lang/String;

    move-result-object v0

    .line 5166
    :goto_0
    return-object v0

    .line 5146
    :cond_0
    sget v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 5148
    :sswitch_0
    const-string v0, "en"

    .line 5149
    goto :goto_0

    .line 5151
    :sswitch_1
    const-string v0, "zh_CN"

    .line 5152
    goto :goto_0

    .line 5154
    :sswitch_2
    const-string v0, "zh_TW"

    .line 5155
    goto :goto_0

    .line 5157
    :sswitch_3
    const-string v0, "zh_HK"

    .line 5158
    goto :goto_0

    .line 5160
    :sswitch_4
    const-string v0, "ko"

    .line 5161
    goto :goto_0

    .line 5146
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_4
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getNextLangImeLangType()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1

    .prologue
    .line 5114
    sget-object v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getNextLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v0

    return-object v0
.end method

.method private initInputModeFromDB()V
    .locals 2

    .prologue
    const/high16 v1, 0x1111

    .line 4851
    const/4 v0, 0x0

    .line 4852
    .local v0, recordedInputMode:I
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLastInputMode()I

    move-result v0

    .line 4853
    sparse-switch v0, :sswitch_data_0

    .line 4886
    sput v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4890
    :goto_0
    sget v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    iput v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    .line 4891
    return-void

    .line 4873
    :sswitch_0
    sput v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_0

    .line 4878
    :sswitch_1
    sput v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_0

    .line 4883
    :sswitch_2
    const/high16 v1, 0x1211

    sput v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_0

    .line 4853
    :sswitch_data_0
    .sparse-switch
        -0x6efb0000 -> :sswitch_0
        -0x6dfb0000 -> :sswitch_0
        0x11020000 -> :sswitch_0
        0x11110000 -> :sswitch_1
        0x11210000 -> :sswitch_1
        0x11310000 -> :sswitch_1
        0x12020000 -> :sswitch_0
        0x12110000 -> :sswitch_2
        0x12210000 -> :sswitch_2
        0x12310000 -> :sswitch_2
        0x21040000 -> :sswitch_0
        0x22040000 -> :sswitch_0
        0x32020000 -> :sswitch_0
        0x32040000 -> :sswitch_0
        0x32050000 -> :sswitch_0
        0x33010100 -> :sswitch_0
        0x33020100 -> :sswitch_0
        0x33030100 -> :sswitch_0
        0x33040100 -> :sswitch_0
        0x33050100 -> :sswitch_0
        0x34010100 -> :sswitch_0
        0x34020100 -> :sswitch_0
        0x34030100 -> :sswitch_0
        0x34040100 -> :sswitch_0
        0x34050100 -> :sswitch_0
    .end sparse-switch
.end method

.method private is123SymMode()Z
    .locals 3

    .prologue
    const/high16 v2, -0x1000

    .line 4093
    const/high16 v0, 0x6000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x7000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 4095
    :cond_0
    const/4 v0, 0x1

    .line 4097
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDateTimeMode()Z
    .locals 3

    .prologue
    .line 4058
    const/high16 v0, -0x8000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const v2, 0xf000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4060
    const/4 v0, 0x1

    .line 4062
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmailEditor(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 3
    .parameter "editorInfo"

    .prologue
    const/4 v1, 0x0

    .line 5418
    if-nez p0, :cond_1

    .line 5420
    :cond_0
    :goto_0
    return v1

    .line 5419
    :cond_1
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 5420
    .local v0, variation:I
    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isMonthMode()Z
    .locals 3

    .prologue
    .line 4048
    const/high16 v0, -0x8000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const v2, 0xf000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4050
    const/4 v0, 0x1

    .line 4052
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNumOnlyMode()Z
    .locals 3

    .prologue
    .line 4080
    const/high16 v0, -0x5000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4081
    const/4 v0, 0x1

    .line 4083
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSoftKeyboard()Z
    .locals 2

    .prologue
    .line 3791
    iget v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v1, 0xf00

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3792
    const/4 v0, 0x1

    .line 3794
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpellingMode()Z
    .locals 3

    .prologue
    .line 4020
    const/high16 v0, 0x1000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStrokeMode()Z
    .locals 3

    .prologue
    .line 4029
    const/high16 v0, 0x3000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isURLMode(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 3
    .parameter "editorInfo"

    .prologue
    const/4 v1, 0x0

    .line 4333
    if-nez p0, :cond_1

    .line 4335
    :cond_0
    :goto_0
    return v1

    .line 4334
    :cond_1
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 4335
    .local v0, variation:I
    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private saveInputMode(I)V
    .locals 10
    .parameter "newInputMode"

    .prologue
    const/high16 v9, 0x1111

    const/4 v8, 0x0

    const/high16 v5, 0xf00

    const/high16 v7, 0xf

    const/high16 v6, -0x1000

    .line 4711
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-eq p1, v3, :cond_0

    if-nez p1, :cond_1

    .line 4712
    :cond_0
    iput-boolean v8, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    .line 4830
    :goto_0
    return-void

    .line 4716
    :cond_1
    and-int v3, p1, v6

    const/high16 v4, 0x6000

    if-eq v3, v4, :cond_2

    and-int v3, p1, v6

    const/high16 v4, 0x7000

    if-eq v3, v4, :cond_2

    and-int v3, p1, v6

    const/high16 v4, 0x5000

    if-eq v3, v4, :cond_2

    and-int v3, p1, v6

    const/high16 v4, -0x8000

    if-eq v3, v4, :cond_2

    and-int v3, p1, v6

    const/high16 v4, -0x5000

    if-ne v3, v4, :cond_4

    .line 4722
    :cond_2
    and-int v3, p1, v6

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v6

    if-eq v3, v4, :cond_3

    const/high16 v3, 0x7000

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v6

    if-eq v3, v4, :cond_3

    .line 4724
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v3}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4725
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iput v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    .line 4727
    :cond_3
    iput p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    .line 4728
    iput-boolean v8, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    goto :goto_0

    .line 4731
    :cond_4
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4733
    iget-boolean v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    if-nez v3, :cond_5

    .line 4734
    and-int v2, p1, v7

    .line 4735
    .local v2, languageMask:I
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSettingLangbyLangMask(I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v3

    sput v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4819
    .end local v2           #languageMask:I
    :cond_5
    :goto_1
    iput p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    .line 4822
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_LANG_MGR:Z

    if-eqz v3, :cond_6

    .line 4823
    const/4 v0, 0x0

    .line 4825
    .local v0, bState:Z
    sget-object v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v7

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getLangByMask(I)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SimeLanguageMgr;->setCurLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    .line 4829
    .end local v0           #bState:Z
    :cond_6
    iput-boolean v8, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    goto :goto_0

    .line 4739
    :cond_7
    iget-boolean v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    if-nez v3, :cond_a

    .line 4740
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v3, :cond_9

    .line 4741
    and-int v1, p1, v7

    .line 4742
    .local v1, language:I
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->isHWBoxMode(I)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_f

    .line 4743
    :cond_8
    const v3, 0x33010100

    if-ne p1, v3, :cond_b

    .line 4744
    const p1, 0x34010100

    .line 4769
    .end local v1           #language:I
    :cond_9
    :goto_2
    and-int v3, p1, v5

    sparse-switch v3, :sswitch_data_0

    .line 4809
    const/high16 p1, 0x1111

    .line 4810
    sput v9, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4811
    sget v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->SaveLastInputInfo(I)V

    .line 4816
    :cond_a
    :goto_3
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iput v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    goto :goto_1

    .line 4745
    .restart local v1       #language:I
    :cond_b
    const v3, 0x33030100

    if-ne p1, v3, :cond_c

    .line 4746
    const p1, 0x34030100

    goto :goto_2

    .line 4747
    :cond_c
    const v3, 0x33020100

    if-ne p1, v3, :cond_d

    .line 4748
    const p1, 0x34020100

    goto :goto_2

    .line 4749
    :cond_d
    const v3, 0x33050100

    if-ne p1, v3, :cond_e

    .line 4750
    const p1, 0x34050100

    goto :goto_2

    .line 4751
    :cond_e
    const v3, 0x33040100

    if-ne p1, v3, :cond_9

    .line 4752
    const p1, 0x34040100

    goto :goto_2

    .line 4754
    :cond_f
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->isHWBoxMode(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 4755
    const v3, 0x34010100

    if-ne p1, v3, :cond_10

    .line 4756
    const p1, 0x33010100

    goto :goto_2

    .line 4757
    :cond_10
    const v3, 0x34030100

    if-ne p1, v3, :cond_11

    .line 4758
    const p1, 0x33030100

    goto :goto_2

    .line 4759
    :cond_11
    const v3, 0x34020100

    if-ne p1, v3, :cond_12

    .line 4760
    const p1, 0x33020100

    goto :goto_2

    .line 4761
    :cond_12
    const v3, 0x34050100

    if-ne p1, v3, :cond_13

    .line 4762
    const p1, 0x33050100

    goto :goto_2

    .line 4763
    :cond_13
    const v3, 0x34040100

    if-ne p1, v3, :cond_9

    .line 4764
    const p1, 0x33040100

    goto :goto_2

    .line 4771
    .end local v1           #language:I
    :sswitch_0
    sput p1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4772
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentKeyPadModeMgr:Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;

    and-int v4, p1, v7

    and-int/2addr v5, p1

    and-int/2addr v6, p1

    or-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->setRectMode(II)V

    .line 4774
    const/high16 v3, 0x1131

    if-eq p1, v3, :cond_14

    const/high16 v3, 0x1121

    if-ne p1, v3, :cond_16

    .line 4776
    :cond_14
    sput v9, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4780
    :cond_15
    :goto_4
    sget v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->SaveLastInputInfo(I)V

    goto :goto_3

    .line 4777
    :cond_16
    const/high16 v3, 0x1133

    if-ne p1, v3, :cond_15

    .line 4778
    const/high16 v3, 0x1113

    sput v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_4

    .line 4783
    :sswitch_1
    sput p1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4785
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentKeyPadModeMgr:Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;

    and-int v4, p1, v7

    and-int/2addr v5, p1

    and-int/2addr v6, p1

    or-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->setRectMode(II)V

    .line 4787
    const/high16 v3, 0x1231

    if-eq p1, v3, :cond_17

    const/high16 v3, 0x1221

    if-ne p1, v3, :cond_19

    .line 4789
    :cond_17
    const/high16 v3, 0x1211

    sput v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4794
    :cond_18
    :goto_5
    sget v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->SaveLastInputInfo(I)V

    goto/16 :goto_3

    .line 4790
    :cond_19
    const/high16 v3, 0x1133

    if-ne p1, v3, :cond_18

    .line 4791
    const/high16 v3, 0x1113

    sput v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_5

    .line 4797
    :sswitch_2
    sput p1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4798
    and-int v3, p1, v5

    and-int v4, p1, v6

    or-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentHandwritingInputMode:I

    .line 4800
    sget v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->SaveLastInputInfo(I)V

    goto/16 :goto_3

    .line 4803
    :sswitch_3
    sput p1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 4804
    and-int v3, p1, v5

    and-int v4, p1, v6

    or-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentHandwritingInputMode:I

    .line 4806
    sget v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->SaveLastInputInfo(I)V

    goto/16 :goto_3

    .line 4769
    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
        0x3000000 -> :sswitch_2
        0x4000000 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public ChangeToTabSymMode(I)Z
    .locals 6
    .parameter "inputMode"

    .prologue
    const/high16 v2, 0xf0

    .line 5649
    const/4 v0, 0x0

    .line 5652
    .local v0, bRet:Z
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_TAB_SYMBOL:Z

    if-eqz v1, :cond_0

    .line 5653
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    and-int/2addr v2, p1

    if-eq v1, v2, :cond_0

    .line 5654
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 5655
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 5657
    sget v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    .line 5658
    const/4 v0, 0x1

    .line 5661
    :cond_0
    return v0
.end method

.method public DecideHandwriteMode()V
    .locals 7

    .prologue
    .line 5535
    const/4 v1, 0x0

    .line 5536
    .local v1, newInputMode:I
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf

    and-int v0, v2, v3

    .line 5538
    .local v0, language:I
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_0

    .line 5539
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    .line 5546
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 5547
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v3, 0x1

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 5548
    return-void

    .line 5541
    :cond_0
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->isHWBoxMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5542
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    goto :goto_0

    .line 5544
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWFSMode(I)I

    move-result v1

    goto :goto_0
.end method

.method public changeToToolBarSKB()I
    .locals 6

    .prologue
    .line 1257
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v1, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->activate(I)I

    move-result v0

    .line 1261
    .local v0, newInputMode:I
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1262
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1264
    .end local v0           #newInputMode:I
    :cond_0
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1
.end method

.method public changeToolBarSKBToNoraml()I
    .locals 7

    .prologue
    .line 1326
    new-instance v0, Lcom/samsung/inputmethod/SimeInputModeDef;

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-direct {v0, v2}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>(I)V

    .line 1330
    .local v0, curInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->deactive()V

    .line 1332
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->changeToolbarmodeToSKBMode(Lcom/samsung/inputmethod/SimeInputModeDef;)Lcom/samsung/inputmethod/SimeInputModeDef;

    move-result-object v1

    .line 1333
    .local v1, newInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    iget v2, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1334
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v3, 0x1

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1335
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v2
.end method

.method public checkPointingCondition()I
    .locals 1

    .prologue
    .line 5665
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_POINTING_KEYBOARD_FEATURE:Z

    if-eqz v0, :cond_2

    .line 5666
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5667
    const/4 v0, 0x0

    .line 5677
    :goto_0
    return v0

    .line 5669
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteBoxMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5670
    const/4 v0, 0x1

    goto :goto_0

    .line 5673
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 5677
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected configInputMode(Landroid/view/inputmethod/EditorInfo;)V
    .locals 11
    .parameter "editorInfo"

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 3409
    const/4 v3, 0x0

    .line 3411
    .local v3, newInputMode:I
    iput-boolean v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    .line 3415
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v6, :cond_0

    .line 3417
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v6}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3419
    new-instance v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;

    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    sget-object v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getCurLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v7

    invoke-direct {v2, p0, v6, v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;-><init>(Lcom/samsung/inputmethod/SimeInputModeSwitcher;Landroid/view/inputmethod/EditorInfo;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)V

    .line 3420
    .local v2, modeState:Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;
    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-virtual {v6, v2}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->getConfigInputMode(Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;)I

    .line 3421
    iget v3, v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;->mode:I

    .line 3422
    iget-boolean v6, v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;->isEditorChoose:Z

    iput-boolean v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    .line 3494
    .end local v2           #modeState:Lcom/samsung/inputmethod/SimeInputModeSwitcher$ModeState;
    :cond_0
    :goto_0
    iget-object v4, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 3501
    .local v4, strPrivateImeOptions:Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v6, v4}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->setPrivateImeOptionTable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3503
    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->getSimeInputType()I

    move-result v0

    .line 3505
    .local v0, TempInputMode:I
    if-eqz v0, :cond_1

    .line 3506
    move v3, v0

    .line 3507
    iput-boolean v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    .line 3513
    .end local v0           #TempInputMode:I
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 3514
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v6}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3515
    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    iget v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->encodeToolBarInfo(I)V

    .line 3520
    :cond_2
    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v8, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v6, v10, v7, v8, v9}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 3522
    return-void

    .line 3425
    .end local v4           #strPrivateImeOptions:Ljava/lang/String;
    :cond_3
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v6, 0xf

    packed-switch v6, :pswitch_data_0

    .line 3487
    sget v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_0

    .line 3429
    :pswitch_0
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v7, 0xfff000

    and-int v1, v6, v7

    .line 3435
    .local v1, flag:I
    and-int/lit16 v6, v1, 0x1000

    if-lez v6, :cond_4

    and-int/lit16 v6, v1, 0x2000

    if-lez v6, :cond_4

    .line 3436
    const v3, -0x4dffffd0

    .line 3444
    :goto_1
    iput-boolean v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    goto :goto_0

    .line 3437
    :cond_4
    and-int/lit16 v6, v1, 0x1000

    if-lez v6, :cond_5

    .line 3438
    const v3, -0x4dffffe0

    goto :goto_1

    .line 3439
    :cond_5
    and-int/lit16 v6, v1, 0x2000

    if-lez v6, :cond_6

    .line 3440
    const v3, -0x4dfffff0

    goto :goto_1

    .line 3442
    :cond_6
    const v3, -0x7effe000

    goto :goto_1

    .line 3451
    .end local v1           #flag:I
    :pswitch_1
    const v3, -0x7effe000

    .line 3452
    iput-boolean v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    goto :goto_0

    .line 3457
    :pswitch_2
    const/high16 v3, 0x5200

    .line 3458
    iput-boolean v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    goto :goto_0

    .line 3463
    :pswitch_3
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v5, v6, 0xff0

    .line 3464
    .local v5, v:I
    const/16 v6, 0x20

    if-eq v5, v6, :cond_7

    const/16 v6, 0x80

    if-eq v5, v6, :cond_7

    if-eq v5, v8, :cond_7

    const/16 v6, 0xe0

    if-eq v5, v6, :cond_7

    const/16 v6, 0x90

    if-eq v5, v6, :cond_7

    if-ne v5, v8, :cond_8

    .line 3470
    :cond_7
    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v3

    .line 3471
    iput-boolean v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    goto/16 :goto_0

    .line 3480
    :cond_8
    sget v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 3484
    goto/16 :goto_0

    .line 3425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getCurLangImeLangType()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1

    .prologue
    .line 5118
    sget-object v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getCurLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLanguageMask()I
    .locals 3

    .prologue
    const/high16 v1, 0x2

    .line 5552
    invoke-static {}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v0

    .line 5554
    .local v0, lang:Ljava/lang/String;
    const-string v2, "zh_CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5566
    :cond_0
    :goto_0
    return v1

    .line 5556
    :cond_1
    const-string v2, "zh_HK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5557
    const/high16 v1, 0x5

    goto :goto_0

    .line 5558
    :cond_2
    const-string v2, "zh_TW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5559
    const/high16 v1, 0x4

    goto :goto_0

    .line 5560
    :cond_3
    const-string v2, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5561
    const/high16 v1, 0x1

    goto :goto_0

    .line 5562
    :cond_4
    const-string v2, "ko"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5563
    const/high16 v1, 0x3

    goto :goto_0
.end method

.method public getEnterKeyNormalState()Z
    .locals 1

    .prologue
    .line 3706
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEnterKeyNormal:Z

    return v0
.end method

.method public getInputMode()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    return v0
.end method

.method public getKeyboardTypeId()I
    .locals 2

    .prologue
    .line 5630
    const/4 v0, -0x1

    .line 5631
    .local v0, keyboardTypeId:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5632
    const/4 v0, 0x0

    .line 5644
    :cond_0
    :goto_0
    return v0

    .line 5633
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5634
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isStrokeMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5635
    const/4 v0, 0x2

    goto :goto_0

    .line 5637
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 5639
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5640
    const/4 v0, 0x3

    goto :goto_0

    .line 5641
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteBoxMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5642
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected getLangByMask(I)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1
    .parameter "langMask"

    .prologue
    .line 271
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 272
    .local v0, langEnum:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    sparse-switch p1, :sswitch_data_0

    .line 291
    :goto_0
    return-object v0

    .line 274
    :sswitch_0
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 275
    goto :goto_0

    .line 277
    :sswitch_1
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_KOR:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 278
    goto :goto_0

    .line 280
    :sswitch_2
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 281
    goto :goto_0

    .line 283
    :sswitch_3
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_TW:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 284
    goto :goto_0

    .line 286
    :sswitch_4
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_HK:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 287
    goto :goto_0

    .line 272
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_4
    .end sparse-switch
.end method

.method public getLastMainInputMode()I
    .locals 1

    .prologue
    .line 387
    sget v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    return v0
.end method

.method protected getMaskByLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I
    .locals 3
    .parameter "langEnum"

    .prologue
    .line 297
    const/high16 v0, 0x1

    .line 299
    .local v0, langMask:I
    sget-object v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher$1;->$SwitchMap$com$samsung$inputmethod$SimeLanguageMgr$ImeLang:[I

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 320
    :goto_0
    return v0

    .line 301
    :pswitch_0
    const/high16 v0, 0x1

    .line 302
    goto :goto_0

    .line 304
    :pswitch_1
    const/high16 v0, 0x3

    .line 305
    goto :goto_0

    .line 307
    :pswitch_2
    const/high16 v0, 0x2

    .line 308
    goto :goto_0

    .line 310
    :pswitch_3
    const/high16 v0, 0x4

    .line 311
    goto :goto_0

    .line 313
    :pswitch_4
    const/high16 v0, 0x5

    .line 314
    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getPreLangImeLangType()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1

    .prologue
    .line 5122
    sget-object v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getPreLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateImeOptionsController()Lcom/samsung/inputmethod/comm/SimePrivateImeOption;
    .locals 1

    .prologue
    .line 5701
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    return-object v0
.end method

.method protected getSettingLangbyLangEnum(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I
    .locals 3
    .parameter "langEnum"

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, settingLangVal:I
    sget-object v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher$1;->$SwitchMap$com$samsung$inputmethod$SimeLanguageMgr$ImeLang:[I

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 347
    :goto_0
    return v0

    .line 330
    :pswitch_0
    const/4 v0, 0x0

    .line 331
    goto :goto_0

    .line 333
    :pswitch_1
    const/4 v0, 0x2

    .line 334
    goto :goto_0

    .line 336
    :pswitch_2
    const/4 v0, 0x1

    .line 337
    goto :goto_0

    .line 339
    :pswitch_3
    const/4 v0, 0x3

    .line 340
    goto :goto_0

    .line 342
    :pswitch_4
    const/4 v0, 0x4

    .line 343
    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getSettingLangbyLangMask(I)I
    .locals 1
    .parameter "langMask"

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, settingLangVal:I
    sparse-switch p1, :sswitch_data_0

    .line 374
    :goto_0
    return v0

    .line 357
    :sswitch_0
    const/4 v0, 0x0

    .line 358
    goto :goto_0

    .line 360
    :sswitch_1
    const/4 v0, 0x2

    .line 361
    goto :goto_0

    .line 363
    :sswitch_2
    const/4 v0, 0x1

    .line 364
    goto :goto_0

    .line 366
    :sswitch_3
    const/4 v0, 0x3

    .line 367
    goto :goto_0

    .line 369
    :sswitch_4
    const/4 v0, 0x4

    .line 370
    goto :goto_0

    .line 355
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_4
    .end sparse-switch
.end method

.method public getSkbLayout()I
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/16 v10, 0x3000

    const/16 v9, 0x2000

    const/16 v8, 0x1000

    const v7, 0xf000

    .line 396
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v6, 0xf00

    and-int v3, v5, v6

    .line 397
    .local v3, layout:I
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v6, 0xf

    and-int v2, v5, v6

    .line 398
    .local v2, language:I
    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v1, 0x1

    .line 401
    .local v1, isLandscape:Z
    :goto_0
    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_0

    .line 402
    const/4 v1, 0x0

    .line 404
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 406
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v5}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 408
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v4}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->getToolbarSkbLayout(I)I

    move-result v4

    .line 1234
    :goto_1
    return v4

    .end local v0           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .end local v1           #isLandscape:Z
    :cond_1
    move v1, v4

    .line 398
    goto :goto_0

    .line 411
    .restart local v0       #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .restart local v1       #isLandscape:Z
    :cond_2
    sparse-switch v3, :sswitch_data_0

    .line 1011
    :cond_3
    :goto_2
    const-string v5, "SimeInputModeSwitcher"

    const-string v6, "No layout exists on current inputmode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 414
    :sswitch_0
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v6, -0x1000

    and-int/2addr v5, v6

    sparse-switch v5, :sswitch_data_1

    .line 671
    const-string v5, "SimeInputModeSwitcher"

    const-string v6, "No layout exists on current inputmode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 416
    :sswitch_1
    const/high16 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 417
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_SW359DP:Z

    if-eqz v4, :cond_5

    .line 418
    if-eqz v1, :cond_4

    .line 419
    const v4, 0x7f04002e

    goto :goto_1

    .line 421
    :cond_4
    const v4, 0x7f040029

    goto :goto_1

    .line 423
    :cond_5
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_7

    .line 424
    if-eqz v1, :cond_6

    .line 425
    const v4, 0x7f04002d

    goto :goto_1

    .line 427
    :cond_6
    const v4, 0x7f04002c

    goto :goto_1

    .line 430
    :cond_7
    if-eqz v1, :cond_8

    .line 431
    const v4, 0x7f04002b

    goto :goto_1

    .line 433
    :cond_8
    const v4, 0x7f040029

    goto :goto_1

    .line 447
    :cond_9
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_SW359DP:Z

    if-eqz v4, :cond_b

    .line 448
    if-eqz v1, :cond_a

    .line 449
    const v4, 0x7f040045

    goto :goto_1

    .line 451
    :cond_a
    const v4, 0x7f04003e

    goto :goto_1

    .line 453
    :cond_b
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_f

    .line 454
    if-eqz v1, :cond_d

    .line 455
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHKTWModelByCSC()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 456
    const v4, 0x7f040041

    goto :goto_1

    .line 458
    :cond_c
    const v4, 0x7f040044

    goto :goto_1

    .line 461
    :cond_d
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHKTWModelByCSC()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 462
    const v4, 0x7f040040

    goto :goto_1

    .line 464
    :cond_e
    const v4, 0x7f040043

    goto :goto_1

    .line 468
    :cond_f
    if-eqz v1, :cond_10

    .line 469
    const v4, 0x7f040042

    goto :goto_1

    .line 471
    :cond_10
    const v4, 0x7f04003e

    goto/16 :goto_1

    .line 478
    :sswitch_2
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v7

    if-ne v8, v4, :cond_1a

    .line 486
    if-eqz v1, :cond_15

    .line 487
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v4, :cond_11

    .line 488
    const v4, 0x7f04005f

    goto/16 :goto_1

    .line 489
    :cond_11
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_13

    .line 490
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 492
    const v4, 0x7f040055

    goto/16 :goto_1

    .line 494
    :cond_12
    const v4, 0x7f040055

    goto/16 :goto_1

    .line 496
    :cond_13
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v4, :cond_14

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 499
    const v4, 0x7f040055

    goto/16 :goto_1

    .line 501
    :cond_14
    const v4, 0x7f040051

    goto/16 :goto_1

    .line 505
    :cond_15
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v4, :cond_16

    .line 506
    const v4, 0x7f04005e

    goto/16 :goto_1

    .line 507
    :cond_16
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_18

    .line 508
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 510
    const v4, 0x7f040052

    goto/16 :goto_1

    .line 512
    :cond_17
    const v4, 0x7f040052

    goto/16 :goto_1

    .line 514
    :cond_18
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v4, :cond_19

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 517
    const v4, 0x7f040052

    goto/16 :goto_1

    .line 519
    :cond_19
    const v4, 0x7f04004a

    goto/16 :goto_1

    .line 524
    :cond_1a
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v7

    if-ne v9, v4, :cond_24

    .line 532
    if-eqz v1, :cond_1f

    .line 533
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v4, :cond_1b

    .line 534
    const v4, 0x7f040073

    goto/16 :goto_1

    .line 535
    :cond_1b
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_1d

    .line 536
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 538
    const v4, 0x7f040069

    goto/16 :goto_1

    .line 540
    :cond_1c
    const v4, 0x7f040069

    goto/16 :goto_1

    .line 542
    :cond_1d
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v4, :cond_1e

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 545
    const v4, 0x7f040069

    goto/16 :goto_1

    .line 547
    :cond_1e
    const v4, 0x7f040065

    goto/16 :goto_1

    .line 550
    :cond_1f
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v4, :cond_20

    .line 551
    const v4, 0x7f040072

    goto/16 :goto_1

    .line 552
    :cond_20
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_22

    .line 553
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 555
    const v4, 0x7f040066

    goto/16 :goto_1

    .line 557
    :cond_21
    const v4, 0x7f040066

    goto/16 :goto_1

    .line 559
    :cond_22
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v4, :cond_23

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMainInputIsQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 562
    const v4, 0x7f040066

    goto/16 :goto_1

    .line 564
    :cond_23
    const v4, 0x7f040060

    goto/16 :goto_1

    .line 567
    :cond_24
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v7

    if-ne v10, v4, :cond_28

    .line 568
    if-eqz v1, :cond_26

    .line 569
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v4, :cond_25

    .line 570
    const v4, 0x7f040081

    goto/16 :goto_1

    .line 572
    :cond_25
    const v4, 0x7f040077

    goto/16 :goto_1

    .line 575
    :cond_26
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v4, :cond_27

    .line 576
    const v4, 0x7f040080

    goto/16 :goto_1

    .line 578
    :cond_27
    const v4, 0x7f040074

    goto/16 :goto_1

    .line 581
    :cond_28
    const/16 v4, 0x4000

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v4, v5, :cond_2c

    .line 582
    if-eqz v1, :cond_2a

    .line 583
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v4, :cond_29

    .line 584
    const v4, 0x7f040089

    goto/16 :goto_1

    .line 586
    :cond_29
    const v4, 0x7f040087

    goto/16 :goto_1

    .line 589
    :cond_2a
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v4, :cond_2b

    .line 590
    const v4, 0x7f040088

    goto/16 :goto_1

    .line 592
    :cond_2b
    const v4, 0x7f040082

    goto/16 :goto_1

    .line 595
    :cond_2c
    const/16 v4, 0x5000

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v4, v5, :cond_30

    .line 596
    if-eqz v1, :cond_2e

    .line 597
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v4, :cond_2d

    .line 598
    const v4, 0x7f04008f

    goto/16 :goto_1

    .line 600
    :cond_2d
    const v4, 0x7f04008f

    goto/16 :goto_1

    .line 603
    :cond_2e
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v4, :cond_2f

    .line 604
    const v4, 0x7f04008e

    goto/16 :goto_1

    .line 606
    :cond_2f
    const v4, 0x7f04008e

    goto/16 :goto_1

    .line 610
    :cond_30
    const v4, 0x8000

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v4, v5, :cond_32

    .line 611
    if-eqz v1, :cond_31

    .line 612
    const v4, 0x7f040019

    goto/16 :goto_1

    .line 614
    :cond_31
    const v4, 0x7f040017

    goto/16 :goto_1

    .line 635
    :cond_32
    :sswitch_3
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v7

    if-ne v8, v4, :cond_34

    .line 636
    if-eqz v1, :cond_33

    .line 637
    const v4, 0x7f04001d

    goto/16 :goto_1

    .line 639
    :cond_33
    const v4, 0x7f04001c

    goto/16 :goto_1

    .line 641
    :cond_34
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v7

    if-ne v9, v4, :cond_36

    .line 642
    if-eqz v1, :cond_35

    .line 643
    const v4, 0x7f0400a5

    goto/16 :goto_1

    .line 645
    :cond_35
    const v4, 0x7f0400a3

    goto/16 :goto_1

    .line 650
    :cond_36
    :sswitch_4
    if-eqz v1, :cond_37

    .line 651
    const v4, 0x7f0400aa

    goto/16 :goto_1

    .line 653
    :cond_37
    const v4, 0x7f0400a6

    goto/16 :goto_1

    .line 657
    :sswitch_5
    if-eqz v1, :cond_3a

    .line 658
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_SW359DP:Z

    if-eqz v4, :cond_38

    .line 659
    const v4, 0x7f040013

    goto/16 :goto_1

    .line 660
    :cond_38
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_39

    .line 661
    const v4, 0x7f040012

    goto/16 :goto_1

    .line 663
    :cond_39
    const v4, 0x7f040010

    goto/16 :goto_1

    .line 665
    :cond_3a
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_3b

    .line 666
    const v4, 0x7f040011

    goto/16 :goto_1

    .line 668
    :cond_3b
    const v4, 0x7f04000c

    goto/16 :goto_1

    .line 677
    :sswitch_6
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v6, -0x1000

    and-int/2addr v5, v6

    sparse-switch v5, :sswitch_data_2

    .line 900
    :goto_3
    const-string v5, "SimeInputModeSwitcher"

    const-string v6, "No layout exists on current inputmode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 679
    :sswitch_7
    const/high16 v5, 0x3

    if-ne v2, v5, :cond_3d

    .line 680
    if-eqz v1, :cond_3c

    .line 681
    const v4, 0x7f040028

    goto/16 :goto_1

    .line 683
    :cond_3c
    const v4, 0x7f040027

    goto/16 :goto_1

    .line 686
    :cond_3d
    const/high16 v5, 0x1

    if-ne v2, v5, :cond_41

    .line 687
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v5, 0xf0

    and-int/2addr v4, v5

    const/high16 v5, 0x10

    if-ne v4, v5, :cond_3f

    .line 688
    if-eqz v1, :cond_3e

    .line 689
    const v4, 0x7f04001b

    goto/16 :goto_1

    .line 691
    :cond_3e
    const v4, 0x7f04001a

    goto/16 :goto_1

    .line 695
    :cond_3f
    if-eqz v1, :cond_40

    .line 696
    const v4, 0x7f04001f

    goto/16 :goto_1

    .line 698
    :cond_40
    const v4, 0x7f04001e

    goto/16 :goto_1

    .line 708
    :cond_41
    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setStrokeZhCn(Z)V

    .line 709
    if-eqz v1, :cond_42

    .line 710
    const v4, 0x7f04003d

    goto/16 :goto_1

    .line 712
    :cond_42
    const v4, 0x7f04003c

    goto/16 :goto_1

    .line 717
    :sswitch_8
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v7

    if-ne v8, v4, :cond_46

    .line 718
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v4, :cond_44

    .line 719
    if-eqz v1, :cond_43

    .line 720
    const v4, 0x7f04005f

    goto/16 :goto_1

    .line 722
    :cond_43
    const v4, 0x7f04005e

    goto/16 :goto_1

    .line 725
    :cond_44
    if-eqz v1, :cond_45

    .line 726
    const v4, 0x7f04004d

    goto/16 :goto_1

    .line 728
    :cond_45
    const v4, 0x7f04004b

    goto/16 :goto_1

    .line 732
    :cond_46
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v7

    if-ne v9, v4, :cond_4a

    .line 733
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v4, :cond_48

    .line 734
    if-eqz v1, :cond_47

    .line 735
    const v4, 0x7f040073

    goto/16 :goto_1

    .line 737
    :cond_47
    const v4, 0x7f040072

    goto/16 :goto_1

    .line 740
    :cond_48
    if-eqz v1, :cond_49

    .line 741
    const v4, 0x7f040062

    goto/16 :goto_1

    .line 743
    :cond_49
    const v4, 0x7f040061

    goto/16 :goto_1

    .line 747
    :cond_4a
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v7

    if-ne v10, v4, :cond_4e

    .line 748
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v4, :cond_4c

    .line 749
    if-eqz v1, :cond_4b

    .line 750
    const v4, 0x7f040081

    goto/16 :goto_1

    .line 752
    :cond_4b
    const v4, 0x7f040080

    goto/16 :goto_1

    .line 755
    :cond_4c
    if-eqz v1, :cond_4d

    .line 756
    const v4, 0x7f040076

    goto/16 :goto_1

    .line 758
    :cond_4d
    const v4, 0x7f040075

    goto/16 :goto_1

    .line 762
    :cond_4e
    const/16 v4, 0x4000

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v4, v5, :cond_52

    .line 763
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v4, :cond_50

    .line 764
    if-eqz v1, :cond_4f

    .line 765
    const v4, 0x7f040089

    goto/16 :goto_1

    .line 767
    :cond_4f
    const v4, 0x7f040088

    goto/16 :goto_1

    .line 770
    :cond_50
    if-eqz v1, :cond_51

    .line 771
    const v4, 0x7f040085

    goto/16 :goto_1

    .line 773
    :cond_51
    const v4, 0x7f040083

    goto/16 :goto_1

    .line 777
    :cond_52
    const/16 v4, 0x5000

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v4, v5, :cond_56

    .line 778
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v4, :cond_54

    .line 779
    if-eqz v1, :cond_53

    .line 780
    const v4, 0x7f04008f

    goto/16 :goto_1

    .line 782
    :cond_53
    const v4, 0x7f04008e

    goto/16 :goto_1

    .line 785
    :cond_54
    if-eqz v1, :cond_55

    .line 786
    const v4, 0x7f04008c

    goto/16 :goto_1

    .line 788
    :cond_55
    const v4, 0x7f04008a

    goto/16 :goto_1

    .line 792
    :cond_56
    const/16 v4, 0x6000

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v4, v5, :cond_58

    .line 793
    if-eqz v1, :cond_57

    .line 794
    const v4, 0x7f040091

    goto/16 :goto_1

    .line 796
    :cond_57
    const v4, 0x7f040090

    goto/16 :goto_1

    .line 799
    :cond_58
    const/16 v4, 0x7000

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v4, v5, :cond_59

    .line 809
    :cond_59
    :sswitch_9
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v5, 0x3202

    if-ne v4, v5, :cond_5c

    .line 810
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setStrokeZhCn(Z)V

    .line 815
    :cond_5a
    :goto_4
    if-eqz v1, :cond_5e

    .line 816
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v5, 0x3205

    if-ne v4, v5, :cond_5d

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v4

    const/16 v5, 0xa0

    if-eq v4, v5, :cond_5b

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v4

    const/16 v5, 0x140

    if-eq v4, v5, :cond_5b

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v4

    const/16 v5, 0xf0

    if-eq v4, v5, :cond_5b

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v4

    const/16 v5, 0x1e0

    if-ne v4, v5, :cond_5d

    .line 821
    :cond_5b
    const v4, 0x7f040048

    goto/16 :goto_1

    .line 811
    :cond_5c
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v5, 0x3204

    if-ne v4, v5, :cond_5a

    .line 812
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setStrokeZhTw(Z)V

    goto :goto_4

    .line 823
    :cond_5d
    const v4, 0x7f040049

    goto/16 :goto_1

    .line 825
    :cond_5e
    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v5, 0x3205

    if-ne v4, v5, :cond_60

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v4

    const/16 v5, 0xa0

    if-eq v4, v5, :cond_5f

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v4

    const/16 v5, 0x140

    if-eq v4, v5, :cond_5f

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v4

    const/16 v5, 0xf0

    if-eq v4, v5, :cond_5f

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v4

    const/16 v5, 0x1e0

    if-ne v4, v5, :cond_60

    .line 830
    :cond_5f
    const v4, 0x7f040047

    goto/16 :goto_1

    .line 832
    :cond_60
    const v4, 0x7f040046

    goto/16 :goto_1

    .line 839
    :sswitch_a
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_INCLUDE_HKTW_LANGUAGE:Z

    if-eqz v4, :cond_62

    .line 840
    if-eqz v1, :cond_61

    .line 841
    const v4, 0x7f040038

    goto/16 :goto_1

    .line 843
    :cond_61
    const v4, 0x7f040034

    goto/16 :goto_1

    .line 846
    :cond_62
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 847
    if-eqz v1, :cond_63

    .line 848
    const v4, 0x7f040037

    goto/16 :goto_1

    .line 850
    :cond_63
    const v4, 0x7f040036

    goto/16 :goto_1

    .line 853
    :cond_64
    if-eqz v1, :cond_65

    .line 854
    const v4, 0x7f040038

    goto/16 :goto_1

    .line 856
    :cond_65
    const v4, 0x7f040034

    goto/16 :goto_1

    .line 862
    :sswitch_b
    if-eqz v1, :cond_66

    .line 863
    const v4, 0x7f040030

    goto/16 :goto_1

    .line 865
    :cond_66
    const v4, 0x7f04002f

    goto/16 :goto_1

    .line 870
    :sswitch_c
    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setStrokeZhTw(Z)V

    .line 871
    if-eqz v1, :cond_67

    .line 872
    const v4, 0x7f0400a8

    goto/16 :goto_1

    .line 874
    :cond_67
    const v4, 0x7f0400a7

    goto/16 :goto_1

    .line 878
    :sswitch_d
    if-eqz v1, :cond_68

    .line 879
    const v4, 0x7f04000e

    goto/16 :goto_1

    .line 881
    :cond_68
    const v4, 0x7f04000d

    goto/16 :goto_1

    .line 887
    :sswitch_e
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/lit16 v5, v5, 0xf0

    sparse-switch v5, :sswitch_data_3

    .line 896
    const-string v5, "SimeInputModeSwitcher"

    const-string v6, "No layout exists on current inputmode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 890
    :sswitch_f
    const v4, 0x7f040033

    goto/16 :goto_1

    .line 892
    :sswitch_10
    const v4, 0x7f040031

    goto/16 :goto_1

    .line 894
    :sswitch_11
    const v4, 0x7f040032

    goto/16 :goto_1

    .line 916
    :sswitch_12
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v4, :cond_6a

    .line 917
    if-eqz v1, :cond_69

    .line 918
    const v4, 0x7f040025

    goto/16 :goto_1

    .line 920
    :cond_69
    const v4, 0x7f040024

    goto/16 :goto_1

    .line 922
    :cond_6a
    if-eqz v1, :cond_6b

    .line 923
    const v4, 0x7f040023

    goto/16 :goto_1

    .line 925
    :cond_6b
    const v4, 0x7f040020

    goto/16 :goto_1

    .line 928
    :sswitch_13
    if-eqz v1, :cond_6c

    .line 929
    const v4, 0x7f040022

    goto/16 :goto_1

    .line 931
    :cond_6c
    const v4, 0x7f040021

    goto/16 :goto_1

    .line 934
    :sswitch_14
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v6, 0xf0

    and-int/2addr v5, v6

    sparse-switch v5, :sswitch_data_4

    goto/16 :goto_2

    .line 936
    :sswitch_15
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v8, v5, :cond_6e

    .line 937
    if-eqz v1, :cond_6d

    .line 938
    const v4, 0x7f04005d

    goto/16 :goto_1

    .line 940
    :cond_6d
    const v4, 0x7f04005c

    goto/16 :goto_1

    .line 942
    :cond_6e
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v9, v5, :cond_70

    .line 943
    if-eqz v1, :cond_6f

    .line 944
    const v4, 0x7f040071

    goto/16 :goto_1

    .line 946
    :cond_6f
    const v4, 0x7f040070

    goto/16 :goto_1

    .line 948
    :cond_70
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v10, v5, :cond_72

    .line 949
    if-eqz v1, :cond_71

    .line 950
    const v4, 0x7f04007f

    goto/16 :goto_1

    .line 952
    :cond_71
    const v4, 0x7f04007e

    goto/16 :goto_1

    .line 955
    :cond_72
    :sswitch_16
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v8, v5, :cond_74

    .line 956
    if-eqz v1, :cond_73

    .line 957
    const v4, 0x7f040057

    goto/16 :goto_1

    .line 959
    :cond_73
    const v4, 0x7f040056

    goto/16 :goto_1

    .line 961
    :cond_74
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v9, v5, :cond_76

    .line 962
    if-eqz v1, :cond_75

    .line 963
    const v4, 0x7f04006b

    goto/16 :goto_1

    .line 965
    :cond_75
    const v4, 0x7f04006a

    goto/16 :goto_1

    .line 967
    :cond_76
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v10, v5, :cond_78

    .line 968
    if-eqz v1, :cond_77

    .line 969
    const v4, 0x7f040079

    goto/16 :goto_1

    .line 971
    :cond_77
    const v4, 0x7f040078

    goto/16 :goto_1

    .line 974
    :cond_78
    :sswitch_17
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v8, v5, :cond_7a

    .line 975
    if-eqz v1, :cond_79

    .line 976
    const v4, 0x7f04005b

    goto/16 :goto_1

    .line 978
    :cond_79
    const v4, 0x7f04005a

    goto/16 :goto_1

    .line 980
    :cond_7a
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v9, v5, :cond_7c

    .line 981
    if-eqz v1, :cond_7b

    .line 982
    const v4, 0x7f04006f

    goto/16 :goto_1

    .line 984
    :cond_7b
    const v4, 0x7f04006e

    goto/16 :goto_1

    .line 986
    :cond_7c
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v10, v5, :cond_7e

    .line 987
    if-eqz v1, :cond_7d

    .line 988
    const v4, 0x7f04007d

    goto/16 :goto_1

    .line 990
    :cond_7d
    const v4, 0x7f04007c

    goto/16 :goto_1

    .line 993
    :cond_7e
    :sswitch_18
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v8, v5, :cond_80

    .line 994
    if-eqz v1, :cond_7f

    .line 995
    const v4, 0x7f040059

    goto/16 :goto_1

    .line 997
    :cond_7f
    const v4, 0x7f040058

    goto/16 :goto_1

    .line 998
    :cond_80
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v9, v5, :cond_82

    .line 999
    if-eqz v1, :cond_81

    .line 1000
    const v4, 0x7f04006d

    goto/16 :goto_1

    .line 1002
    :cond_81
    const v4, 0x7f04006c

    goto/16 :goto_1

    .line 1003
    :cond_82
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v5, v7

    if-ne v10, v5, :cond_3

    .line 1004
    if-eqz v1, :cond_83

    .line 1005
    const v4, 0x7f04007b

    goto/16 :goto_1

    .line 1007
    :cond_83
    const v4, 0x7f04007a

    goto/16 :goto_1

    .line 411
    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_6
        0x3000000 -> :sswitch_12
        0x4000000 -> :sswitch_13
        0x5000000 -> :sswitch_14
    .end sparse-switch

    .line 414
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        -0x70000000 -> :sswitch_5
        -0x60000000 -> :sswitch_5
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_4
        0x60000000 -> :sswitch_2
    .end sparse-switch

    .line 677
    :sswitch_data_2
    .sparse-switch
        -0x70000000 -> :sswitch_d
        -0x60000000 -> :sswitch_d
        -0x50000000 -> :sswitch_e
        0x10000000 -> :sswitch_7
        0x20000000 -> :sswitch_c
        0x30000000 -> :sswitch_9
        0x50000000 -> :sswitch_a
        0x60000000 -> :sswitch_8
        0x70000000 -> :sswitch_b
    .end sparse-switch

    .line 887
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_10
        0x20 -> :sswitch_11
        0x30 -> :sswitch_f
    .end sparse-switch

    .line 934
    :sswitch_data_4
    .sparse-switch
        0x500000 -> :sswitch_15
        0x600000 -> :sswitch_16
        0x700000 -> :sswitch_17
        0x800000 -> :sswitch_18
    .end sparse-switch
.end method

.method public getSkbRowNumber()I
    .locals 5

    .prologue
    .line 4482
    const/4 v0, 0x4

    .line 4483
    .local v0, count:I
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v2, 0x1

    .line 4486
    .local v2, isLandscape:Z
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 4488
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 4490
    :cond_1
    const/4 v0, 0x2

    .line 4515
    :cond_2
    :goto_1
    return v0

    .line 4483
    .end local v1           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .end local v2           #isLandscape:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 4498
    .restart local v1       #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .restart local v2       #isLandscape:Z
    :cond_4
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v3}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4500
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbolWithSkb()Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v3}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSHOWSkb(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4501
    :cond_5
    const/4 v0, 0x4

    goto :goto_1

    .line 4503
    :cond_6
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getToggleStateForEnter()I
    .locals 2

    .prologue
    .line 3699
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->getToggleStateForEnter(Landroid/view/inputmethod/EditorInfo;)I

    move-result v0

    return v0
.end method

.method public getToggleStateForZhuyinTone()I
    .locals 1

    .prologue
    .line 3694
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->getToggleStateForZhuyinTone()I

    move-result v0

    return v0
.end method

.method public getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-result-object v0

    return-object v0
.end method

.method public getTooggleStateForCnCand()I
    .locals 1

    .prologue
    .line 3690
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->getTooggleStateForCnCand()I

    move-result v0

    return v0
.end method

.method public getToolbarModeMgr()Lcom/samsung/inputmethod/SimeToolBarModeMgr;
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    return-object v0
.end method

.method public is123Symbol()Z
    .locals 1

    .prologue
    .line 4262
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123SymMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is34Cangjie()Z
    .locals 3

    .prologue
    .line 4391
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x7000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4392
    const/4 v0, 0x1

    .line 4394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is34English()Z
    .locals 3

    .prologue
    .line 4182
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4184
    const/4 v0, 0x1

    .line 4186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is34Keyboard()Z
    .locals 3

    .prologue
    .line 3922
    const/high16 v0, 0x200

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf00

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is34Korean()Z
    .locals 3

    .prologue
    .line 4210
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4212
    const/4 v0, 0x1

    .line 4214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is34Pinyin()Z
    .locals 3

    .prologue
    .line 4191
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4193
    const/4 v0, 0x1

    .line 4195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is34Stroke()Z
    .locals 3

    .prologue
    const/high16 v2, 0xf

    .line 4200
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isStrokeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x4

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x5

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 4203
    :cond_0
    const/4 v0, 0x1

    .line 4205
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is34Zhuyin()Z
    .locals 3

    .prologue
    .line 4383
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x2000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4384
    const/4 v0, 0x1

    .line 4386
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoComplete()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5432
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 5434
    :cond_0
    :goto_0
    return v1

    .line 5433
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v3, 0xfff000

    and-int v0, v2, v3

    .line 5434
    .local v0, flag:I
    const/high16 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCangjieMode()Z
    .locals 3

    .prologue
    .line 4407
    const/high16 v0, -0x7000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4408
    const/4 v0, 0x1

    .line 4410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChinese34Keyboard()Z
    .locals 3

    .prologue
    const/high16 v2, 0xf

    .line 3926
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isStrokeMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/high16 v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    const/high16 v0, 0x5

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    const/high16 v0, 0x4

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_2

    .line 3930
    :cond_1
    const/4 v0, 0x1

    .line 3932
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChineseHKTextWithSkb()Z
    .locals 3

    .prologue
    .line 3868
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3869
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3870
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x5

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    .line 3872
    .end local v0           #language:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChineseHandwriting()Z
    .locals 4

    .prologue
    .line 3744
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf

    and-int v0, v2, v3

    .line 3745
    .local v0, language:I
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf00

    and-int v1, v2, v3

    .line 3747
    .local v1, layout:I
    const/high16 v2, 0x2

    if-eq v2, v0, :cond_0

    const/high16 v2, 0x4

    if-eq v2, v0, :cond_0

    const/high16 v2, 0x5

    if-ne v2, v0, :cond_2

    :cond_0
    const/high16 v2, 0x300

    if-eq v2, v1, :cond_1

    const/high16 v2, 0x400

    if-ne v2, v1, :cond_2

    .line 3749
    :cond_1
    const/4 v2, 0x1

    .line 3751
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isChineseHkLanguage()Z
    .locals 3

    .prologue
    .line 3773
    const/high16 v0, 0x5

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3774
    const/4 v0, 0x1

    .line 3776
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChineseLanguage()Z
    .locals 3

    .prologue
    .line 3730
    const/high16 v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3731
    const/4 v0, 0x1

    .line 3733
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChineseSymbolSkb()Z
    .locals 3

    .prologue
    .line 3892
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3893
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3894
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x2

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x4

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x5

    if-ne v1, v0, :cond_1

    .line 3895
    :cond_0
    const/4 v1, 0x1

    .line 3897
    .end local v0           #language:I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChineseTWTextWithSkb()Z
    .locals 3

    .prologue
    .line 3875
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3876
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3877
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x4

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    .line 3879
    .end local v0           #language:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChineseText()Z
    .locals 3

    .prologue
    .line 3846
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3847
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, 0x2

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x4

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x5

    if-ne v1, v0, :cond_1

    .line 3848
    :cond_0
    const/4 v1, 0x1

    .line 3850
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChineseTextWithHkb()Z
    .locals 2

    .prologue
    .line 3854
    const/high16 v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChineseTextWithSkb()Z
    .locals 3

    .prologue
    .line 3858
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3859
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3860
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, 0x2

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x4

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x5

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 3862
    .end local v0           #language:I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChineseTwLanguage()Z
    .locals 3

    .prologue
    .line 3766
    const/high16 v0, 0x4

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3767
    const/4 v0, 0x1

    .line 3769
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClipboardEnabled()Z
    .locals 4

    .prologue
    .line 5691
    const/4 v0, 0x1

    .line 5692
    .local v0, isClipboardEnabled:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->getInputType()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->getInputType()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 5695
    :cond_0
    const/4 v0, 0x0

    .line 5697
    :cond_1
    return v0
.end method

.method public isDateTime()Z
    .locals 1

    .prologue
    .line 4324
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTimeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDynamicCharacterRecognitionEnable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5520
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    .line 5521
    .local v0, isMiniPopup:Z
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    if-nez v2, :cond_1

    .line 5529
    :cond_0
    :goto_0
    return v1

    .line 5525
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isTextClass()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isOneHandModeEnable()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbol()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5527
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEmailEditor()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5412
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 5414
    :cond_0
    :goto_0
    return v1

    .line 5413
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 5414
    .local v0, variation:I
    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEngNumSymModeOnly()Z
    .locals 2

    .prologue
    .line 4312
    const/4 v0, 0x0

    .line 4313
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPassWordEditor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4314
    const/4 v0, 0x1

    .line 4318
    :cond_0
    return v0
.end method

.method public isEnglish34Keyboard()Z
    .locals 3

    .prologue
    .line 3937
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3939
    const/4 v0, 0x1

    .line 3941
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnglishLanguage()Z
    .locals 3

    .prologue
    .line 3709
    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3710
    const/4 v0, 0x1

    .line 3712
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnglishMonth()Z
    .locals 5

    .prologue
    .line 5467
    const/16 v2, 0xb

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    .line 5469
    .local v1, label:Ljava/lang/String;
    const/4 v0, 0x1

    .line 5470
    .local v0, englishMonth:Z
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5473
    :cond_0
    const/4 v0, 0x0

    .line 5476
    :cond_1
    if-eqz v0, :cond_2

    const/high16 v2, -0x8000

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v4, -0x1000

    and-int/2addr v3, v4

    if-ne v2, v3, :cond_2

    const/16 v2, 0x1000

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const v4, 0xf000

    and-int/2addr v3, v4

    if-ne v2, v3, :cond_2

    .line 5479
    const/4 v2, 0x1

    .line 5481
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEnglishSymbolSkb()Z
    .locals 3

    .prologue
    .line 3901
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3902
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3903
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x1

    if-eq v1, v0, :cond_0

    const/high16 v1, 0x3

    if-ne v1, v0, :cond_1

    .line 3904
    :cond_0
    const/4 v1, 0x1

    .line 3906
    .end local v0           #language:I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnglishTextAbsUpperCaseWithSkb()Z
    .locals 3

    .prologue
    .line 3821
    const/high16 v1, 0xf0

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int v0, v1, v2

    .line 3822
    .local v0, upperCase:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnglishTextLowerCaseWithSkb()Z
    .locals 3

    .prologue
    .line 3811
    const/high16 v1, 0xf0

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int v0, v1, v2

    .line 3812
    .local v0, upperCase:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnglishTextTempUpperCaseWithSkb()Z
    .locals 3

    .prologue
    .line 3816
    const/high16 v1, 0xf0

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int v0, v1, v2

    .line 3817
    .local v0, upperCase:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnglishTextUpperCaseWithSkb()Z
    .locals 3

    .prologue
    .line 3826
    const/high16 v1, 0xf0

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int v0, v1, v2

    .line 3827
    .local v0, upperCase:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x30

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnglishTextWithHkb()Z
    .locals 2

    .prologue
    .line 3799
    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnglishTextWithSkb()Z
    .locals 3

    .prologue
    .line 3803
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3804
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3805
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    .line 3807
    .end local v0           #language:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnterNoramlState()Z
    .locals 1

    .prologue
    .line 4450
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEnterKeyNormal:Z

    return v0
.end method

.method public isFilterEditor()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5425
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 5427
    :cond_0
    :goto_0
    return v1

    .line 5426
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 5427
    .local v0, variation:I
    const/16 v2, 0xb0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isHFSChinese()Z
    .locals 3

    .prologue
    const/high16 v2, 0xf

    .line 4228
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isStrokeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x4

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x5

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 4231
    :cond_0
    const/4 v0, 0x1

    .line 4233
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHFSEnglish()Z
    .locals 3

    .prologue
    .line 4219
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isStrokeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4221
    const/4 v0, 0x1

    .line 4223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHFSKorean()Z
    .locals 3

    .prologue
    .line 4253
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isStrokeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4255
    const/4 v0, 0x1

    .line 4257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHK()Z
    .locals 3

    .prologue
    .line 4238
    const/high16 v0, 0x5

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4239
    const/4 v0, 0x1

    .line 4241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandwriteBoxMode()Z
    .locals 3

    .prologue
    .line 3991
    const/high16 v0, 0x400

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf00

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandwriteFSMode()Z
    .locals 3

    .prologue
    .line 3987
    const/high16 v0, 0x300

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf00

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandwriteKeyboard()Z
    .locals 3

    .prologue
    const/high16 v2, 0xf00

    .line 3979
    const/high16 v0, 0x300

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x400

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 3981
    :cond_0
    const/4 v0, 0x1

    .line 3983
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKorean34Keyboard()Z
    .locals 3

    .prologue
    .line 3946
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3948
    const/4 v0, 0x1

    .line 3950
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKoreanLanguage()Z
    .locals 3

    .prologue
    .line 3783
    const/high16 v0, 0x3

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 3784
    const/4 v0, 0x1

    .line 3786
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKoreanTextLowerCaseWithSkb()Z
    .locals 3

    .prologue
    .line 3841
    const/high16 v1, 0xf0

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int v0, v1, v2

    .line 3842
    .local v0, upperCase:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKoreanTextTempUpperCaseWithSkb()Z
    .locals 3

    .prologue
    .line 3831
    const/high16 v1, 0xf0

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int v0, v1, v2

    .line 3832
    .local v0, upperCase:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKoreanTextUpperCaseWithSkb()Z
    .locals 3

    .prologue
    .line 3836
    const/high16 v1, 0xf0

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int v0, v1, v2

    .line 3837
    .local v0, upperCase:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKoreanTextWithSkb()Z
    .locals 3

    .prologue
    .line 3884
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3885
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int v0, v1, v2

    .line 3886
    .local v0, language:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x3

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    .line 3888
    .end local v0           #language:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLatestSym()Z
    .locals 1

    .prologue
    .line 4271
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isLatestSymMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLatestSymMode()Z
    .locals 3

    .prologue
    .line 4109
    const/high16 v0, 0x50

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf0

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4110
    const/4 v0, 0x1

    .line 4112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutFree()Z
    .locals 3

    .prologue
    .line 3966
    const/high16 v0, 0x500

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf00

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMMSRecipient()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5406
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v1, :cond_1

    .line 5408
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->isMMSRecipient()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMainInputIsQwertyZhuyin()Z
    .locals 3

    .prologue
    .line 4358
    const/high16 v0, 0x100

    sget v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    const/high16 v2, 0xf00

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x2000

    sget v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4360
    const/4 v0, 0x1

    .line 4362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMonth()Z
    .locals 1

    .prologue
    .line 4291
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonthMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoSuggestions()Z
    .locals 4

    .prologue
    const/high16 v3, 0x8

    const/4 v1, 0x0

    .line 5439
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 5441
    :cond_0
    :goto_0
    return v1

    .line 5440
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int v0, v2, v3

    .line 5441
    .local v0, flag:I
    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNum34Keyboard()Z
    .locals 2

    .prologue
    .line 3955
    iget v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v1, 0x7200

    if-ne v0, v1, :cond_0

    .line 3956
    const/4 v0, 0x1

    .line 3958
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumOnly()Z
    .locals 1

    .prologue
    .line 4283
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumOnlyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumSymModeOnly()Z
    .locals 2

    .prologue
    .line 4298
    const/4 v0, 0x0

    .line 4299
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4300
    const/4 v0, 0x1

    .line 4304
    :cond_0
    return v0
.end method

.method public isNumberClass()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5452
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 5454
    :cond_0
    :goto_0
    return v1

    .line 5453
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v2, 0xf

    .line 5454
    .local v0, type:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOneHandModeEnable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5510
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    if-nez v3, :cond_1

    .line 5516
    :cond_0
    :goto_0
    return v1

    .line 5512
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_samsungkeypad_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5513
    .local v0, iOneHandMode:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 5514
    goto :goto_0
.end method

.method public isPassWordEditor()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5362
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v3, :cond_1

    .line 5376
    :cond_0
    :goto_0
    return v1

    .line 5363
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 5365
    .local v0, v:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isTextClass()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5366
    const/16 v3, 0x80

    if-eq v0, v3, :cond_2

    const/16 v3, 0xe0

    if-eq v0, v3, :cond_2

    const/16 v3, 0x90

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    .line 5369
    goto :goto_0

    .line 5371
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumberClass()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5372
    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    move v1, v2

    .line 5373
    goto :goto_0
.end method

.method public isPhone()Z
    .locals 1

    .prologue
    .line 4287
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneMode()Z
    .locals 3

    .prologue
    .line 4073
    const/high16 v0, 0x5000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4074
    const/4 v0, 0x1

    .line 4076
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPinyinMode()Z
    .locals 3

    .prologue
    .line 4340
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4341
    const/4 v0, 0x1

    .line 4343
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPointingOn()Z
    .locals 1

    .prologue
    .line 4466
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mPointingOn:Z

    return v0
.end method

.method public isPredictionEnglish()Z
    .locals 3

    .prologue
    .line 4135
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mPredictionOn:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 4136
    const/4 v0, 0x1

    .line 4139
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPredictionOn()Z
    .locals 1

    .prologue
    .line 4454
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mPredictionOn:Z

    return v0
.end method

.method public isQuickCangjieMode()Z
    .locals 3

    .prologue
    .line 4415
    const/high16 v0, -0x6000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4416
    const/4 v0, 0x1

    .line 4418
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQwertyCangjie()Z
    .locals 3

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x7000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4368
    const/4 v0, 0x1

    .line 4370
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQwertyEnglish()Z
    .locals 3

    .prologue
    .line 4126
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4128
    const/4 v0, 0x1

    .line 4130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQwertyKeyboard()Z
    .locals 3

    .prologue
    .line 3962
    const/high16 v0, 0x100

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf00

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQwertyKorean()Z
    .locals 3

    .prologue
    .line 4173
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4175
    const/4 v0, 0x1

    .line 4177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQwertyPinyin()Z
    .locals 3

    .prologue
    .line 4163
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4165
    const/4 v0, 0x1

    .line 4167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQwertyQuickCangjie()Z
    .locals 3

    .prologue
    .line 4375
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x6000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4376
    const/4 v0, 0x1

    .line 4378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQwertyZhuyin()Z
    .locals 3

    .prologue
    .line 4351
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x2000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4352
    const/4 v0, 0x1

    .line 4354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchEditor()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5398
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 5403
    :cond_0
    :goto_0
    return v1

    .line 5402
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v3, 0x400000ff

    and-int v0, v2, v3

    .line 5403
    .local v0, action:I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSearchKeyboard()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4471
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 4477
    :cond_0
    :goto_0
    return v1

    .line 4472
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v3, 0x400000ff

    and-int v0, v2, v3

    .line 4474
    .local v0, action:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 4475
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSettingEnabled()Z
    .locals 3

    .prologue
    .line 5682
    const/4 v0, 0x1

    .line 5683
    .local v0, isSettingEnabled:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->getInputType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSimePrivateImeOption:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->getInputType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 5685
    :cond_0
    const/4 v0, 0x0

    .line 5687
    :cond_1
    return v0
.end method

.method public isSingleKeypadType()Z
    .locals 1

    .prologue
    .line 4069
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSkbInOneHandMode()Z
    .locals 8

    .prologue
    const/high16 v7, 0x300

    const/4 v1, 0x1

    const/high16 v6, -0x1000

    const/high16 v5, 0xf00

    const/4 v2, 0x0

    .line 5485
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 5486
    .local v0, isLandscape:Z
    :goto_0
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v3, v5

    if-eq v7, v3, :cond_0

    const/high16 v3, 0x400

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_3

    :cond_0
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v3, v6

    const/high16 v4, 0x6000

    if-ne v3, v4, :cond_3

    .line 5506
    :cond_1
    :goto_1
    return v2

    .end local v0           #isLandscape:Z
    :cond_2
    move v0, v2

    .line 5485
    goto :goto_0

    .line 5493
    .restart local v0       #isLandscape:Z
    :cond_3
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    and-int/2addr v3, v5

    if-eq v3, v7, :cond_4

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    and-int/2addr v3, v5

    const/high16 v4, 0x400

    if-ne v3, v4, :cond_5

    :cond_4
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v3, v6

    const/high16 v4, 0x6000

    if-eq v3, v4, :cond_1

    .line 5500
    :cond_5
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isLayoutFree()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_6
    move v2, v1

    .line 5503
    goto :goto_1
.end method

.method public isSpecialInputMode()Z
    .locals 4

    .prologue
    .line 3525
    const/4 v1, 0x0

    .line 3526
    .local v1, result:Z
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, -0x1000

    and-int v0, v2, v3

    .line 3527
    .local v0, inputType:I
    const/high16 v2, -0x5000

    if-eq v0, v2, :cond_0

    const/high16 v2, -0x8000

    if-eq v0, v2, :cond_0

    const/high16 v2, 0x5000

    if-ne v0, v2, :cond_1

    .line 3529
    :cond_0
    const/4 v1, 0x1

    .line 3534
    :cond_1
    return v1
.end method

.method public isSymMode()Z
    .locals 3

    .prologue
    .line 4101
    const/high16 v0, 0x6000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4102
    const/4 v0, 0x1

    .line 4104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbol()Z
    .locals 1

    .prologue
    .line 4266
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolLock()Z
    .locals 1

    .prologue
    .line 4458
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSymbolLock:Z

    return v0
.end method

.method public isSymbolWithSkb()Z
    .locals 4

    .prologue
    const/high16 v3, -0x1000

    .line 3911
    const/4 v0, 0x0

    .line 3913
    .local v0, bRet:Z
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x6000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x5000

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf0

    and-int/2addr v1, v2

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 3916
    :cond_0
    const/4 v0, 0x1

    .line 3918
    :cond_1
    return v0
.end method

.method public isT934English()Z
    .locals 3

    .prologue
    .line 4154
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mPredictionOn:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4155
    const/4 v0, 0x1

    .line 4158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isT9QwertyEnglish()Z
    .locals 3

    .prologue
    .line 4145
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpellingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mPredictionOn:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x1

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4146
    const/4 v0, 0x1

    .line 4149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTW()Z
    .locals 3

    .prologue
    .line 4245
    const/high16 v0, 0x4

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4246
    const/4 v0, 0x1

    .line 4248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTabSym()Z
    .locals 1

    .prologue
    .line 4275
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isTabSymMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTabSymMode()Z
    .locals 3

    .prologue
    const/high16 v2, 0xf0

    .line 4116
    const/high16 v0, 0x50

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x60

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x70

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x80

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 4120
    :cond_0
    const/4 v0, 0x1

    .line 4122
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextClass()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5446
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v3, :cond_0

    .line 5448
    :goto_0
    return v2

    .line 5447
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v3, 0xf

    .line 5448
    .local v0, type:I
    if-ne v0, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isToolBARSkb()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4424
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTwoLanguageAvailable()Z
    .locals 2

    .prologue
    .line 5127
    invoke-static {}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getNextLangImeLangType()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq v0, v1, :cond_2

    .line 5129
    invoke-static {}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getNextLangImeLangType()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getPreLangImeLangType()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 5132
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getCurLangImeLangType()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getNextLangImeLangType()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getCurLangImeLangType()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getNextLangImeLangType()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v0, v1, :cond_2

    .line 5134
    :cond_1
    const/4 v0, 0x1

    .line 5138
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isURLEditor()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5381
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 5383
    :cond_0
    :goto_0
    return v1

    .line 5382
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 5383
    .local v0, variation:I
    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isURLMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4327
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 4329
    :cond_0
    :goto_0
    return v1

    .line 4328
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 4329
    .local v0, variation:I
    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUrlSuffixShown()Z
    .locals 1

    .prologue
    .line 4462
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mUrlSuffixShow:Z

    return v0
.end method

.method public isWebEditor()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5388
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 5390
    :cond_0
    :goto_0
    return v1

    .line 5389
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 5390
    .local v0, variation:I
    const/16 v2, 0xa0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isZhuyinMode()Z
    .locals 3

    .prologue
    .line 4399
    const/high16 v0, 0x2000

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 4400
    const/4 v0, 0x1

    .line 4402
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needAutoSpace()Z
    .locals 1

    .prologue
    .line 5458
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPassWordEditor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isFilterEditor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isAutoComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5460
    :cond_0
    const/4 v0, 0x0

    .line 5462
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public needFullWidthSymbols()Z
    .locals 4

    .prologue
    .line 3757
    const/4 v1, 0x0

    .line 3758
    .local v1, result:Z
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf

    and-int v0, v2, v3

    .line 3759
    .local v0, language:I
    const/high16 v2, 0x2

    if-eq v2, v0, :cond_0

    const/high16 v2, 0x4

    if-eq v2, v0, :cond_0

    const/high16 v2, 0x5

    if-ne v2, v0, :cond_1

    .line 3761
    :cond_0
    const/4 v1, 0x1

    .line 3763
    :cond_1
    return v1
.end method

.method public registerLangChangeNotifier(Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;)V
    .locals 1
    .parameter "iLangNotifier"

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    sget-object v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->registerCallBack(Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;)V

    .line 265
    :cond_0
    return-void
.end method

.method public requestBackToPreviousSkb(Z)I
    .locals 6
    .parameter "isShiftKeyRequest"

    .prologue
    const/high16 v4, 0xf00

    const/4 v5, 0x1

    const/high16 v3, -0x1000

    .line 3660
    const/4 v0, 0x0

    .line 3661
    .local v0, previousMode:I
    iget-boolean v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    if-nez v1, :cond_1

    .line 3662
    iget v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    .line 3663
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x6000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x7000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x5000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v3

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v3

    const/high16 v2, -0x5000

    if-ne v1, v2, :cond_1

    .line 3669
    :cond_0
    iput-boolean v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    .line 3672
    :cond_1
    if-eqz p1, :cond_2

    .line 3673
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0x1231

    if-ne v1, v2, :cond_4

    .line 3674
    const/high16 v0, 0x1211

    .line 3680
    :cond_2
    :goto_0
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_3

    and-int v1, v0, v4

    if-eqz v1, :cond_3

    .line 3683
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 3685
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 3686
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1

    .line 3675
    :cond_4
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v2, 0x1131

    if-ne v1, v2, :cond_2

    .line 3676
    const/high16 v0, 0x1111

    goto :goto_0
.end method

.method public requestInputWithHkb(Landroid/view/inputmethod/EditorInfo;Z)I
    .locals 1
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    const/4 v0, 0x0

    .line 3538
    iput-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorChoose:Z

    .line 3539
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 3540
    iput-boolean p2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRestarting:Z

    .line 3541
    iput v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    .line 3545
    if-nez p2, :cond_0

    .line 3546
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->configInputMode(Landroid/view/inputmethod/EditorInfo;)V

    .line 3548
    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v0
.end method

.method public requestInputWithSkb(Landroid/view/inputmethod/EditorInfo;Z)I
    .locals 7
    .parameter "editorInfo"
    .parameter "isMainModeChanged"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 3606
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 3607
    const/4 v1, 0x0

    .line 3608
    .local v1, newInputMode:I
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPrediction()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mPredictionOn:Z

    .line 3609
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPassWordEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3610
    iput-boolean v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mPredictionOn:Z

    .line 3613
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isConfigureChange()Z

    move-result v0

    .line 3614
    .local v0, isConfigureChange:Z
    if-eqz v0, :cond_1

    .line 3615
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->resetConfigureChange()V

    .line 3617
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRestarting:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 3628
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-nez v2, :cond_2

    .line 3629
    sget v1, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 3631
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 3632
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 3633
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    .line 3649
    :goto_0
    return v2

    .line 3634
    :cond_2
    if-nez p2, :cond_3

    .line 3636
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 3637
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto :goto_0

    .line 3646
    :cond_3
    iput-boolean v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mUrlSuffixShow:Z

    .line 3648
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->configInputMode(Landroid/view/inputmethod/EditorInfo;)V

    .line 3649
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto :goto_0
.end method

.method public resetFlags()V
    .locals 1

    .prologue
    .line 5357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mUrlSuffixShow:Z

    .line 5358
    return-void
.end method

.method public setEngterKeyNormalState(Z)V
    .locals 0
    .parameter "bNormal"

    .prologue
    .line 3703
    iput-boolean p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEnterKeyNormal:Z

    .line 3704
    return-void
.end method

.method public setUrlSuffixShown(Z)V
    .locals 0
    .parameter "bShown"

    .prologue
    .line 4835
    iput-boolean p1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mUrlSuffixShow:Z

    .line 4836
    return-void
.end method

.method public switchKeyboard(I)V
    .locals 7
    .parameter "keyboardTypeId"

    .prologue
    const/4 v6, 0x1

    .line 5576
    const/4 v1, 0x0

    .line 5577
    .local v1, newInputMode:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getCurrentLanguageMask()I

    move-result v0

    .line 5579
    .local v0, language:I
    packed-switch p1, :pswitch_data_0

    .line 5610
    const-string v2, "SimeInputModeSwitcher"

    const-string v3, "No newInputMode exists on current inputmode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5613
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 5614
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 5616
    sget v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    .line 5617
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 5619
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-nez v2, :cond_1

    .line 5620
    const/16 v2, -0xd

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    .line 5622
    :cond_1
    return-void

    .line 5581
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToQwertyMode(I)I

    move-result v1

    .line 5582
    goto :goto_0

    .line 5585
    :pswitch_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-eqz v2, :cond_3

    .line 5586
    if-ne p1, v6, :cond_2

    .line 5588
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToTwelveKeyModeOnToolbar(I)I

    move-result v1

    goto :goto_0

    .line 5591
    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToStrokeModeOnToolbar(I)I

    move-result v1

    goto :goto_0

    .line 5594
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeTo34Mode(I)I

    move-result v1

    .line 5596
    goto :goto_0

    .line 5598
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWFSMode(I)I

    move-result v1

    .line 5599
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-eq v2, v3, :cond_0

    .line 5600
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHWBoxMode(IZ)V

    goto :goto_0

    .line 5604
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    .line 5605
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-eq v2, v3, :cond_0

    .line 5606
    invoke-static {v0, v6}, Lcom/samsung/inputmethod/setting/SimeSetting;->setHWBoxMode(IZ)V

    goto :goto_0

    .line 5579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public switchLanguageWithHkb()I
    .locals 3

    .prologue
    .line 1239
    const/high16 v0, 0x2

    .line 1242
    .local v0, newInputMode:I
    const/high16 v1, 0x2

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v1, v2, :cond_0

    .line 1243
    const/high16 v0, 0x1

    .line 1247
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1248
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1
.end method

.method public switchModeBySelectLanguage(I)I
    .locals 6
    .parameter "languageMask"

    .prologue
    const/4 v5, 0x1

    .line 2194
    const/4 v0, 0x0

    .line 2195
    .local v0, newInputMode:I
    sparse-switch p1, :sswitch_data_0

    .line 2212
    const-string v1, "SimeInputModeSwitcher"

    const-string v2, "No newInputMode exists on current inputmode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 2216
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 2217
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 2218
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1

    .line 2197
    :sswitch_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v0

    .line 2198
    goto :goto_0

    .line 2200
    :sswitch_1
    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v0

    .line 2201
    goto :goto_0

    .line 2203
    :sswitch_2
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v0

    .line 2204
    goto :goto_0

    .line 2206
    :sswitch_3
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v0

    .line 2207
    goto :goto_0

    .line 2209
    :sswitch_4
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v0

    .line 2210
    goto :goto_0

    .line 2195
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_3
    .end sparse-switch
.end method

.method public switchModeBySettings()Z
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/high16 v9, 0xf00

    .line 4926
    const/4 v0, 0x0

    .line 4927
    .local v0, bRet:Z
    sget v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    const/high16 v8, 0xf

    and-int v1, v7, v8

    .line 4928
    .local v1, language:I
    sget v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    and-int v2, v7, v9

    .line 4930
    .local v2, layout:I
    sget-boolean v7, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_LANG_MGR:Z

    if-eqz v7, :cond_7

    .line 4931
    move v3, v1

    .line 4932
    .local v3, newLangMask:I
    move v4, v2

    .line 4935
    .local v4, newLayoutMask:I
    sget-object v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeLanguageMgr;->isValidLangChanged()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4937
    sget-object v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeLanguageMgr;->reInitialize()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4938
    const/4 v0, 0x1

    .line 4939
    sget-object v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getCurLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getMaskByLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v3

    .line 4959
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 4962
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSettingLangbyLangMask(I)I

    move-result v5

    .line 4964
    .local v5, settingLang:I
    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    .line 5063
    .end local v3           #newLangMask:I
    .end local v4           #newLayoutMask:I
    .end local v5           #settingLang:I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 5065
    sget v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    iput v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    .line 5066
    sget v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    iput v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    .line 5070
    :cond_2
    return v0

    .line 4943
    .restart local v3       #newLangMask:I
    .restart local v4       #newLayoutMask:I
    :cond_3
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSettingLangbyLangMask(I)I

    move-result v5

    .line 4944
    .restart local v5       #settingLang:I
    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    and-int v4, v9, v7

    .line 4946
    if-eq v4, v2, :cond_4

    .line 4947
    const/4 v0, 0x1

    .line 4951
    :cond_4
    iget v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v8, 0x1202

    if-ne v7, v8, :cond_5

    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    const/high16 v8, 0x3202

    if-eq v7, v8, :cond_6

    :cond_5
    iget v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v8, 0x2204

    if-ne v7, v8, :cond_0

    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    const/high16 v8, 0x3204

    if-ne v7, v8, :cond_0

    .line 4955
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 4969
    .end local v3           #newLangMask:I
    .end local v4           #newLayoutMask:I
    .end local v5           #settingLang:I
    :cond_7
    const/high16 v7, 0x2

    if-ne v7, v1, :cond_c

    .line 4971
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    and-int v6, v9, v7

    .line 4972
    .local v6, settingLayout:I
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v7

    if-nez v7, :cond_b

    .line 4974
    const/4 v0, 0x1

    .line 4976
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4977
    invoke-static {v13}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_1

    .line 4979
    :cond_8
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4980
    invoke-static {v12}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_1

    .line 4982
    :cond_9
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 4983
    invoke-static {v11}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_1

    .line 4986
    :cond_a
    invoke-static {v10}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_1

    .line 4988
    :cond_b
    if-eq v2, v6, :cond_1

    .line 4989
    const/4 v0, 0x1

    .line 4990
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto :goto_1

    .line 4994
    .end local v6           #settingLayout:I
    :cond_c
    const/high16 v7, 0x4

    if-ne v7, v1, :cond_10

    .line 4995
    invoke-static {v13}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    and-int v6, v9, v7

    .line 4997
    .restart local v6       #settingLayout:I
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v7

    if-nez v7, :cond_f

    .line 4999
    const/4 v0, 0x1

    .line 5001
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 5002
    invoke-static {v12}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 5004
    :cond_d
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 5005
    invoke-static {v11}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 5008
    :cond_e
    invoke-static {v10}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 5010
    :cond_f
    if-eq v2, v6, :cond_1

    .line 5011
    const/4 v0, 0x1

    .line 5012
    invoke-static {v13}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 5014
    .end local v6           #settingLayout:I
    :cond_10
    const/high16 v7, 0x5

    if-ne v7, v1, :cond_13

    .line 5015
    invoke-static {v12}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    and-int v6, v9, v7

    .line 5017
    .restart local v6       #settingLayout:I
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v7

    if-nez v7, :cond_12

    .line 5019
    const/4 v0, 0x1

    .line 5021
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 5022
    invoke-static {v11}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 5025
    :cond_11
    invoke-static {v10}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 5027
    :cond_12
    if-eq v2, v6, :cond_1

    .line 5028
    const/4 v0, 0x1

    .line 5029
    invoke-static {v12}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 5031
    .end local v6           #settingLayout:I
    :cond_13
    const/high16 v7, 0x3

    if-ne v7, v1, :cond_18

    .line 5032
    invoke-static {v11}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    and-int v6, v9, v7

    .line 5034
    .restart local v6       #settingLayout:I
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v7

    if-nez v7, :cond_17

    .line 5036
    const/4 v0, 0x1

    .line 5037
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 5038
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 5040
    :cond_14
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 5041
    invoke-static {v13}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 5043
    :cond_15
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 5044
    invoke-static {v12}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 5047
    :cond_16
    invoke-static {v10}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 5050
    :cond_17
    if-eq v2, v6, :cond_1

    .line 5051
    const/4 v0, 0x1

    .line 5052
    invoke-static {v11}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1

    .line 5054
    .end local v6           #settingLayout:I
    :cond_18
    const/high16 v7, 0x1

    if-ne v7, v1, :cond_1

    .line 5055
    invoke-static {v10}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    and-int v6, v9, v7

    .line 5056
    .restart local v6       #settingLayout:I
    if-eq v2, v6, :cond_1

    .line 5057
    const/4 v0, 0x1

    .line 5058
    invoke-static {v10}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v7

    sput v7, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    goto/16 :goto_1
.end method

.method public switchModeForLongShiftKey()I
    .locals 6

    .prologue
    .line 2224
    const/4 v0, 0x0

    .line 2226
    .local v0, newInputMode:I
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    sparse-switch v1, :sswitch_data_0

    .line 2252
    const-string v1, "SimeInputModeSwitcher"

    const-string v2, "No newInputMode exists on current inputmode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 2257
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 2259
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1

    .line 2228
    :sswitch_0
    const/high16 v0, 0x1121

    .line 2229
    goto :goto_0

    .line 2232
    :sswitch_1
    const/high16 v0, 0x1111

    .line 2233
    goto :goto_0

    .line 2236
    :sswitch_2
    const/high16 v0, 0x1221

    .line 2237
    goto :goto_0

    .line 2241
    :sswitch_3
    const/high16 v0, 0x1211

    .line 2242
    goto :goto_0

    .line 2245
    :sswitch_4
    const/high16 v0, 0x1133

    .line 2246
    goto :goto_0

    .line 2248
    :sswitch_5
    const/high16 v0, 0x1113

    .line 2249
    goto :goto_0

    .line 2226
    nop

    :sswitch_data_0
    .sparse-switch
        0x11110000 -> :sswitch_0
        0x11130000 -> :sswitch_4
        0x11210000 -> :sswitch_1
        0x11310000 -> :sswitch_1
        0x11330000 -> :sswitch_5
        0x12110000 -> :sswitch_2
        0x12210000 -> :sswitch_3
        0x12310000 -> :sswitch_3
    .end sparse-switch
.end method

.method public switchModeForShortcutKey()I
    .locals 6

    .prologue
    .line 3370
    const/4 v0, 0x0

    .line 3371
    .local v0, newInputMode:I
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v1, :cond_2

    .line 3372
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3373
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->changeToToolBarSKB()I

    .line 3374
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    .line 3384
    :goto_0
    return v1

    .line 3377
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->toggleToolBarMode()I

    move-result v0

    .line 3378
    if-nez v0, :cond_1

    .line 3379
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto :goto_0

    .line 3380
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 3381
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 3384
    :cond_2
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto :goto_0
.end method

.method public switchModeForShortcutKeyLongPressed()I
    .locals 6

    .prologue
    .line 3389
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v1, :cond_1

    .line 3390
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->switchModeForShortcutKeyLongPressed()I

    move-result v0

    .line 3391
    .local v0, newInputMode:I
    if-nez v0, :cond_0

    .line 3392
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    .line 3397
    .end local v0           #newInputMode:I
    :goto_0
    return v1

    .line 3393
    .restart local v0       #newInputMode:I
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 3394
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 3397
    .end local v0           #newInputMode:I
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto :goto_0
.end method

.method public switchModeForUserKey(I)I
    .locals 14
    .parameter "userKey"

    .prologue
    .line 2262
    const/4 v5, 0x0

    .line 2263
    .local v5, newInputMode:I
    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v10, 0xf00

    and-int v4, v9, v10

    .line 2264
    .local v4, layout:I
    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v10, 0xf

    and-int v3, v9, v10

    .line 2265
    .local v3, language:I
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    .line 2266
    .local v2, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    const/4 v0, 0x0

    .line 2269
    .local v0, bRet:Z
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v9}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2271
    new-instance v6, Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-direct {v6}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>()V

    .line 2272
    .local v6, newMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    iget-object v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-virtual {v9, p1, v6}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->processKey(ILcom/samsung/inputmethod/SimeInputModeDef;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2274
    iget v5, v6, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 2275
    const/4 v0, 0x1

    .line 2278
    .end local v6           #newMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    :cond_0
    if-nez v0, :cond_2

    .line 2281
    const/16 v9, -0xc

    if-ne v9, p1, :cond_12

    .line 2290
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_LANG_MGR:Z

    if-eqz v9, :cond_4

    .line 2291
    sget-object v9, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mLangMgr:Lcom/samsung/inputmethod/SimeLanguageMgr;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getNextLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v7

    .line 2292
    .local v7, nextLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    sget-object v9, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq v7, v9, :cond_1

    .line 2297
    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSettingLangbyLangEnum(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v9

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v5

    .line 2359
    .end local v7           #nextLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    :cond_1
    :goto_0
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardLedState(Z)V

    .line 3023
    :cond_2
    :goto_1
    invoke-direct {p0, v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 3024
    iget-object v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v10, 0x1

    iget v11, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v12, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v13, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 3025
    const/16 v9, -0xc

    if-ne v9, p1, :cond_5f

    .line 3026
    iget-object v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 3049
    :cond_3
    :goto_2
    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    :goto_3
    return v9

    .line 2317
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2318
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2319
    const/4 v9, 0x3

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v5

    goto :goto_0

    .line 2320
    :cond_5
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2321
    const/4 v9, 0x4

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v5

    goto :goto_0

    .line 2322
    :cond_6
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2323
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v5

    goto :goto_0

    .line 2325
    :cond_7
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v5

    goto :goto_0

    .line 2327
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2328
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2329
    const/4 v9, 0x4

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v5

    goto :goto_0

    .line 2330
    :cond_9
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2331
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v5

    goto :goto_0

    .line 2333
    :cond_a
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v5

    goto :goto_0

    .line 2335
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 2336
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2337
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v5

    goto/16 :goto_0

    .line 2339
    :cond_c
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v5

    goto/16 :goto_0

    .line 2341
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 2342
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v5

    goto/16 :goto_0

    .line 2344
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2345
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 2346
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v5

    goto/16 :goto_0

    .line 2347
    :cond_f
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2348
    const/4 v9, 0x3

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v5

    goto/16 :goto_0

    .line 2349
    :cond_10
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 2350
    const/4 v9, 0x4

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v5

    goto/16 :goto_0

    .line 2351
    :cond_11
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2352
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v5

    goto/16 :goto_0

    .line 2363
    :cond_12
    const/16 v9, -0xe

    if-ne v9, p1, :cond_19

    .line 2365
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_TAB_SYMBOL:Z

    if-eqz v9, :cond_16

    .line 2366
    invoke-static {}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2367
    .local v1, curLanguage:Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 2368
    const-string v9, "en"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    const-string v9, "ko"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 2370
    :cond_13
    const v5, 0x65701000

    goto/16 :goto_1

    .line 2373
    :cond_14
    const v5, 0x65501000

    goto/16 :goto_1

    .line 2376
    :cond_15
    const v5, 0x65501000

    goto/16 :goto_1

    .line 2377
    .end local v1           #curLanguage:Ljava/lang/String;
    :cond_16
    const/high16 v9, 0x2

    if-eq v9, v3, :cond_17

    const/high16 v9, 0x4

    if-eq v9, v3, :cond_17

    const/high16 v9, 0x5

    if-ne v9, v3, :cond_18

    .line 2379
    :cond_17
    const v5, 0x62021000

    goto/16 :goto_1

    .line 2381
    :cond_18
    const v5, 0x62011000

    goto/16 :goto_1

    .line 2383
    :cond_19
    const/16 v9, -0xf

    if-ne v9, p1, :cond_1a

    .line 2384
    const/high16 v5, 0x7200

    goto/16 :goto_1

    .line 2385
    :cond_1a
    const/16 v9, -0x1e

    if-ne v9, p1, :cond_1b

    .line 2386
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToHandwritingModeByToggleKey()I

    .line 2387
    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto/16 :goto_3

    .line 2388
    :cond_1b
    const/16 v9, -0x1f

    if-ne v9, p1, :cond_1c

    .line 2389
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToKeypadModeByToggleKey()I

    .line 2390
    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto/16 :goto_3

    .line 2391
    :cond_1c
    const/16 v9, -0x12

    if-ne v9, p1, :cond_1d

    .line 2397
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    goto/16 :goto_1

    .line 2403
    :cond_1d
    const/16 v9, -0x17

    if-ne v9, p1, :cond_2f

    .line 2405
    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v9}, Lcom/samsung/inputmethod/SimeInputModeDef;->getHW123ModeState(I)Z

    move-result v9

    if-nez v9, :cond_26

    .line 2406
    sparse-switch v4, :sswitch_data_0

    .line 2434
    const-string v9, "SimeInputModeSwitcher"

    const-string v10, "No newInputMode exists on current inputmode"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2408
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 2409
    const v5, 0x33020400

    goto/16 :goto_1

    .line 2410
    :cond_1e
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 2411
    const v5, 0x33040400

    goto/16 :goto_1

    .line 2412
    :cond_1f
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v9

    if-eqz v9, :cond_20

    .line 2413
    const v5, 0x33050400

    goto/16 :goto_1

    .line 2414
    :cond_20
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 2415
    const v5, 0x33030400

    goto/16 :goto_1

    .line 2416
    :cond_21
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2417
    const v5, 0x33010400

    goto/16 :goto_1

    .line 2421
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 2422
    const v5, 0x34020400

    goto/16 :goto_1

    .line 2423
    :cond_22
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 2424
    const v5, 0x34040400

    goto/16 :goto_1

    .line 2425
    :cond_23
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 2426
    const v5, 0x34050400

    goto/16 :goto_1

    .line 2427
    :cond_24
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v9

    if-eqz v9, :cond_25

    .line 2428
    const v5, 0x34030400

    goto/16 :goto_1

    .line 2429
    :cond_25
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2430
    const v5, 0x34010400

    goto/16 :goto_1

    .line 2440
    :cond_26
    sparse-switch v4, :sswitch_data_1

    .line 2468
    const-string v9, "SimeInputModeSwitcher"

    const-string v10, "No newInputMode exists on current inputmode"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2442
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v9

    if-eqz v9, :cond_27

    .line 2443
    const v5, 0x33020100

    goto/16 :goto_1

    .line 2444
    :cond_27
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v9

    if-eqz v9, :cond_28

    .line 2445
    const v5, 0x33040100

    goto/16 :goto_1

    .line 2446
    :cond_28
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 2447
    const v5, 0x33050100

    goto/16 :goto_1

    .line 2448
    :cond_29
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 2449
    const v5, 0x33030100

    goto/16 :goto_1

    .line 2450
    :cond_2a
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2451
    const v5, 0x33010100

    goto/16 :goto_1

    .line 2455
    :sswitch_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 2456
    const v5, 0x34020100

    goto/16 :goto_1

    .line 2457
    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 2458
    const v5, 0x34040100

    goto/16 :goto_1

    .line 2459
    :cond_2c
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 2460
    const v5, 0x34050100

    goto/16 :goto_1

    .line 2461
    :cond_2d
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 2462
    const v5, 0x34030100

    goto/16 :goto_1

    .line 2463
    :cond_2e
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2464
    const v5, 0x34010100

    goto/16 :goto_1

    .line 2473
    :cond_2f
    const/16 v9, -0xd

    if-ne v9, p1, :cond_36

    .line 2474
    const/high16 v9, 0x3202

    iget v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v9, v10, :cond_31

    .line 2475
    const/high16 v5, 0x1202

    .line 2488
    :cond_30
    :goto_4
    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    goto/16 :goto_1

    .line 2476
    :cond_31
    const/high16 v9, 0x1202

    iget v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v9, v10, :cond_32

    .line 2477
    const/high16 v5, 0x3202

    goto :goto_4

    .line 2478
    :cond_32
    const/high16 v9, 0x2204

    iget v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v9, v10, :cond_33

    .line 2479
    const/high16 v5, 0x3204

    goto :goto_4

    .line 2480
    :cond_33
    const/high16 v9, 0x3204

    iget v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v9, v10, :cond_34

    .line 2481
    const/high16 v5, 0x2204

    goto :goto_4

    .line 2482
    :cond_34
    const/high16 v9, -0x6dfb

    iget v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v9, v10, :cond_35

    .line 2483
    const/high16 v5, 0x3205

    goto :goto_4

    .line 2484
    :cond_35
    const/high16 v9, 0x3205

    iget v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v9, v10, :cond_30

    .line 2485
    const/high16 v5, -0x6dfb

    goto :goto_4

    .line 2489
    :cond_36
    const/4 v9, -0x3

    if-ne v9, p1, :cond_43

    .line 2490
    const/high16 v9, 0x200

    if-ne v9, v4, :cond_3b

    .line 2491
    const/high16 v9, 0x7000

    iget v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v11, -0x1000

    and-int/2addr v10, v11

    if-ne v9, v10, :cond_39

    .line 2492
    const/high16 v9, 0x2

    iget v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    const/high16 v11, 0xf

    and-int/2addr v10, v11

    if-eq v9, v10, :cond_37

    const/high16 v9, 0x4

    iget v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    const/high16 v11, 0xf

    and-int/2addr v10, v11

    if-eq v9, v10, :cond_37

    const/high16 v9, 0x5

    iget v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    const/high16 v11, 0xf

    and-int/2addr v10, v11

    if-ne v9, v10, :cond_38

    .line 2495
    :cond_37
    const v5, 0x62021000

    goto/16 :goto_1

    .line 2497
    :cond_38
    const v5, 0x62011000

    goto/16 :goto_1

    .line 2499
    :cond_39
    const/high16 v9, 0x6000

    iget v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v11, -0x1000

    and-int/2addr v10, v11

    if-ne v9, v10, :cond_3a

    .line 2500
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    goto/16 :goto_1

    .line 2502
    :cond_3a
    const/high16 v5, 0x7200

    goto/16 :goto_1

    .line 2505
    :cond_3b
    const/high16 v9, 0x6000

    iget v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v11, -0x1000

    and-int/2addr v10, v11

    if-ne v9, v10, :cond_3c

    .line 2506
    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    goto/16 :goto_1

    .line 2507
    :cond_3c
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_TAB_SYMBOL:Z

    if-eqz v9, :cond_40

    .line 2508
    invoke-static {}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2509
    .restart local v1       #curLanguage:Ljava/lang/String;
    if-eqz v1, :cond_3f

    .line 2510
    const-string v9, "en"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3d

    const-string v9, "ko"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 2512
    :cond_3d
    const v5, 0x65701000

    goto/16 :goto_1

    .line 2515
    :cond_3e
    const v5, 0x65501000

    goto/16 :goto_1

    .line 2517
    :cond_3f
    const v5, 0x65501000

    goto/16 :goto_1

    .line 2520
    .end local v1           #curLanguage:Ljava/lang/String;
    :cond_40
    const/high16 v9, 0x2

    if-eq v9, v3, :cond_41

    const/high16 v9, 0x4

    if-eq v9, v3, :cond_41

    const/high16 v9, 0x5

    if-ne v9, v3, :cond_42

    .line 2522
    :cond_41
    const v5, 0x61021000

    goto/16 :goto_1

    .line 2524
    :cond_42
    const v5, 0x61011000

    goto/16 :goto_1

    .line 2582
    :cond_43
    const/4 v9, -0x1

    if-ne v9, p1, :cond_44

    .line 2583
    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    sparse-switch v9, :sswitch_data_2

    .line 2609
    const-string v9, "SimeInputModeSwitcher"

    const-string v10, "No newInputMode exists on current inputmode"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2585
    :sswitch_4
    const/high16 v5, 0x1131

    .line 2586
    goto/16 :goto_1

    .line 2588
    :sswitch_5
    const/high16 v5, 0x1121

    .line 2589
    goto/16 :goto_1

    .line 2591
    :sswitch_6
    const/high16 v5, 0x1111

    .line 2592
    goto/16 :goto_1

    .line 2594
    :sswitch_7
    const/high16 v5, 0x1231

    .line 2595
    goto/16 :goto_1

    .line 2597
    :sswitch_8
    const/high16 v5, 0x1221

    .line 2598
    goto/16 :goto_1

    .line 2600
    :sswitch_9
    const/high16 v5, 0x1211

    .line 2601
    goto/16 :goto_1

    .line 2603
    :sswitch_a
    const/high16 v5, 0x1133

    .line 2604
    goto/16 :goto_1

    .line 2606
    :sswitch_b
    const/high16 v5, 0x1113

    .line 2607
    goto/16 :goto_1

    .line 2624
    :cond_44
    const/4 v9, -0x4

    if-ne v9, p1, :cond_46

    .line 2625
    const/high16 v9, 0x5200

    iget v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v9, v10, :cond_45

    .line 2626
    const/high16 v5, 0x5220

    goto/16 :goto_1

    .line 2627
    :cond_45
    const/high16 v9, 0x5220

    iget v10, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    if-ne v9, v10, :cond_2

    .line 2628
    const/high16 v5, 0x5200

    goto/16 :goto_1

    .line 2630
    :cond_46
    const/16 v9, -0xa

    if-ne v9, p1, :cond_48

    .line 2631
    iget-boolean v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mPredictionOn:Z

    if-nez v9, :cond_47

    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mPredictionOn:Z

    .line 2632
    iget-boolean v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mPredictionOn:Z

    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPrediction(Z)V

    goto/16 :goto_1

    .line 2631
    :cond_47
    const/4 v9, 0x0

    goto :goto_5

    .line 2649
    :cond_48
    const/16 v9, -0x9

    if-ne v9, p1, :cond_51

    .line 2650
    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    sparse-switch v9, :sswitch_data_3

    .line 2803
    const-string v9, "SimeInputModeSwitcher"

    const-string v10, "No newInputMode exists on current inputmode"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2652
    :sswitch_c
    const v5, 0x61022000

    .line 2653
    goto/16 :goto_1

    .line 2655
    :sswitch_d
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v9, :cond_49

    .line 2656
    const v5, 0x61021000

    goto/16 :goto_1

    .line 2657
    :cond_49
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 2658
    const v5, 0x61021000

    goto/16 :goto_1

    .line 2660
    :cond_4a
    const v5, 0x61023000

    .line 2663
    goto/16 :goto_1

    .line 2665
    :sswitch_e
    const v5, 0x61024000

    .line 2666
    goto/16 :goto_1

    .line 2668
    :sswitch_f
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v9, :cond_4b

    .line 2669
    const v5, 0x61025000

    goto/16 :goto_1

    .line 2671
    :cond_4b
    const v5, 0x61021000

    .line 2672
    goto/16 :goto_1

    .line 2674
    :sswitch_10
    const v5, 0x61021000

    .line 2675
    goto/16 :goto_1

    .line 2678
    :sswitch_11
    const v5, 0x61012000

    .line 2679
    goto/16 :goto_1

    .line 2681
    :sswitch_12
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v9, :cond_4c

    .line 2682
    const v5, 0x61011000

    goto/16 :goto_1

    .line 2683
    :cond_4c
    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 2684
    const v5, 0x61011000

    goto/16 :goto_1

    .line 2686
    :cond_4d
    const v5, 0x61013000

    .line 2688
    goto/16 :goto_1

    .line 2690
    :sswitch_13
    const v5, 0x61014000

    .line 2691
    goto/16 :goto_1

    .line 2693
    :sswitch_14
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v9, :cond_4e

    .line 2694
    const v5, 0x61015000

    goto/16 :goto_1

    .line 2696
    :cond_4e
    const v5, 0x61011000

    .line 2697
    goto/16 :goto_1

    .line 2699
    :sswitch_15
    const v5, 0x61011000

    .line 2700
    goto/16 :goto_1

    .line 2703
    :sswitch_16
    const v5, 0x62022000

    .line 2704
    goto/16 :goto_1

    .line 2706
    :sswitch_17
    const v5, 0x62023000

    .line 2707
    goto/16 :goto_1

    .line 2709
    :sswitch_18
    const v5, 0x62024000

    .line 2710
    goto/16 :goto_1

    .line 2712
    :sswitch_19
    const v5, 0x62025000

    .line 2713
    goto/16 :goto_1

    .line 2715
    :sswitch_1a
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v9, :cond_4f

    .line 2716
    const v5, 0x62021000

    goto/16 :goto_1

    .line 2719
    :cond_4f
    const v5, 0x62026000

    .line 2721
    goto/16 :goto_1

    .line 2724
    :sswitch_1b
    const v5, 0x62021000

    .line 2725
    goto/16 :goto_1

    .line 2732
    :sswitch_1c
    const v5, 0x62012000

    .line 2733
    goto/16 :goto_1

    .line 2735
    :sswitch_1d
    const v5, 0x62013000

    .line 2736
    goto/16 :goto_1

    .line 2738
    :sswitch_1e
    const v5, 0x62014000

    .line 2739
    goto/16 :goto_1

    .line 2741
    :sswitch_1f
    const v5, 0x62015000

    .line 2742
    goto/16 :goto_1

    .line 2744
    :sswitch_20
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v9, :cond_50

    .line 2745
    const v5, 0x62011000

    goto/16 :goto_1

    .line 2748
    :cond_50
    const v5, 0x62016000

    .line 2750
    goto/16 :goto_1

    .line 2753
    :sswitch_21
    const v5, 0x62011000

    .line 2754
    goto/16 :goto_1

    .line 2767
    :sswitch_22
    const v5, 0x65502000

    .line 2768
    goto/16 :goto_1

    .line 2770
    :sswitch_23
    const v5, 0x65503000

    .line 2771
    goto/16 :goto_1

    .line 2773
    :sswitch_24
    const v5, 0x65501000

    .line 2774
    goto/16 :goto_1

    .line 2776
    :sswitch_25
    const v5, 0x65602000

    .line 2777
    goto/16 :goto_1

    .line 2779
    :sswitch_26
    const v5, 0x65603000

    .line 2780
    goto/16 :goto_1

    .line 2782
    :sswitch_27
    const v5, 0x65601000

    .line 2783
    goto/16 :goto_1

    .line 2785
    :sswitch_28
    const v5, 0x65702000

    .line 2786
    goto/16 :goto_1

    .line 2788
    :sswitch_29
    const v5, 0x65703000

    .line 2789
    goto/16 :goto_1

    .line 2791
    :sswitch_2a
    const v5, 0x65701000

    .line 2792
    goto/16 :goto_1

    .line 2794
    :sswitch_2b
    const v5, 0x65802000

    .line 2795
    goto/16 :goto_1

    .line 2797
    :sswitch_2c
    const v5, 0x65803000

    .line 2798
    goto/16 :goto_1

    .line 2800
    :sswitch_2d
    const v5, 0x65801000

    .line 2801
    goto/16 :goto_1

    .line 2806
    :cond_51
    const/4 v9, -0x8

    if-ne v9, p1, :cond_58

    .line 2807
    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    sparse-switch v9, :sswitch_data_4

    .line 2944
    const-string v9, "SimeInputModeSwitcher"

    const-string v10, "No newInputMode exists on current inputmode"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2809
    :sswitch_2e
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v9, :cond_52

    .line 2810
    const v5, 0x61022000

    goto/16 :goto_1

    .line 2811
    :cond_52
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v9, :cond_53

    .line 2812
    const v5, 0x61025000

    goto/16 :goto_1

    .line 2814
    :cond_53
    const v5, 0x61024000

    .line 2815
    goto/16 :goto_1

    .line 2817
    :sswitch_2f
    const v5, 0x61021000

    .line 2818
    goto/16 :goto_1

    .line 2820
    :sswitch_30
    const v5, 0x61022000

    .line 2821
    goto/16 :goto_1

    .line 2823
    :sswitch_31
    const v5, 0x61023000

    .line 2824
    goto/16 :goto_1

    .line 2826
    :sswitch_32
    const v5, 0x61024000

    .line 2827
    goto/16 :goto_1

    .line 2830
    :sswitch_33
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    if-eqz v9, :cond_54

    .line 2831
    const v5, 0x61012000

    goto/16 :goto_1

    .line 2832
    :cond_54
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v9, :cond_55

    .line 2833
    const v5, 0x61015000

    goto/16 :goto_1

    .line 2835
    :cond_55
    const v5, 0x61014000

    .line 2836
    goto/16 :goto_1

    .line 2838
    :sswitch_34
    const v5, 0x61011000

    .line 2839
    goto/16 :goto_1

    .line 2841
    :sswitch_35
    const v5, 0x61012000

    .line 2842
    goto/16 :goto_1

    .line 2844
    :sswitch_36
    const v5, 0x61013000

    .line 2845
    goto/16 :goto_1

    .line 2847
    :sswitch_37
    const v5, 0x61014000

    .line 2848
    goto/16 :goto_1

    .line 2852
    :sswitch_38
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v9, :cond_56

    .line 2853
    const v5, 0x62025000

    goto/16 :goto_1

    .line 2856
    :cond_56
    const v5, 0x62026000

    .line 2858
    goto/16 :goto_1

    .line 2861
    :sswitch_39
    const v5, 0x62021000

    .line 2862
    goto/16 :goto_1

    .line 2864
    :sswitch_3a
    const v5, 0x62022000

    .line 2865
    goto/16 :goto_1

    .line 2867
    :sswitch_3b
    const v5, 0x62023000

    .line 2868
    goto/16 :goto_1

    .line 2870
    :sswitch_3c
    const v5, 0x62024000

    .line 2871
    goto/16 :goto_1

    .line 2873
    :sswitch_3d
    const v5, 0x62025000

    .line 2874
    goto/16 :goto_1

    .line 2880
    :sswitch_3e
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    if-eqz v9, :cond_57

    .line 2881
    const v5, 0x62015000

    goto/16 :goto_1

    .line 2884
    :cond_57
    const v5, 0x62016000

    .line 2886
    goto/16 :goto_1

    .line 2889
    :sswitch_3f
    const v5, 0x62011000

    .line 2890
    goto/16 :goto_1

    .line 2892
    :sswitch_40
    const v5, 0x62012000

    .line 2893
    goto/16 :goto_1

    .line 2895
    :sswitch_41
    const v5, 0x62013000

    .line 2896
    goto/16 :goto_1

    .line 2898
    :sswitch_42
    const v5, 0x62014000

    .line 2899
    goto/16 :goto_1

    .line 2901
    :sswitch_43
    const v5, 0x62015000

    .line 2902
    goto/16 :goto_1

    .line 2908
    :sswitch_44
    const v5, 0x65503000

    .line 2909
    goto/16 :goto_1

    .line 2911
    :sswitch_45
    const v5, 0x65501000

    .line 2912
    goto/16 :goto_1

    .line 2914
    :sswitch_46
    const v5, 0x65502000

    .line 2915
    goto/16 :goto_1

    .line 2917
    :sswitch_47
    const v5, 0x65603000

    .line 2918
    goto/16 :goto_1

    .line 2920
    :sswitch_48
    const v5, 0x65601000

    .line 2921
    goto/16 :goto_1

    .line 2923
    :sswitch_49
    const v5, 0x65602000

    .line 2924
    goto/16 :goto_1

    .line 2926
    :sswitch_4a
    const v5, 0x65703000

    .line 2927
    goto/16 :goto_1

    .line 2929
    :sswitch_4b
    const v5, 0x65701000

    .line 2930
    goto/16 :goto_1

    .line 2932
    :sswitch_4c
    const v5, 0x65702000

    .line 2933
    goto/16 :goto_1

    .line 2935
    :sswitch_4d
    const v5, 0x65803000

    .line 2936
    goto/16 :goto_1

    .line 2938
    :sswitch_4e
    const v5, 0x65801000

    .line 2939
    goto/16 :goto_1

    .line 2941
    :sswitch_4f
    const v5, 0x65802000

    .line 2942
    goto/16 :goto_1

    .line 2948
    :cond_58
    const/16 v9, -0xb

    if-ne v9, p1, :cond_59

    .line 2949
    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    sparse-switch v9, :sswitch_data_5

    .line 2983
    const-string v9, "SimeInputModeSwitcher"

    const-string v10, "No newInputMode exists on current inputmode"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2955
    :sswitch_50
    const v5, 0x61011000

    .line 2956
    goto/16 :goto_1

    .line 2962
    :sswitch_51
    const v5, 0x61021000

    .line 2963
    goto/16 :goto_1

    .line 2971
    :sswitch_52
    const v5, 0x62021000

    .line 2972
    goto/16 :goto_1

    .line 2980
    :sswitch_53
    const v5, 0x62011000

    .line 2981
    goto/16 :goto_1

    .line 2987
    :cond_59
    const/4 v9, -0x5

    if-ne v9, p1, :cond_5a

    .line 2988
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mUrlSuffixShow:Z

    goto/16 :goto_1

    .line 2991
    :cond_5a
    const/16 v9, -0x10

    if-ne v9, p1, :cond_5c

    .line 2992
    iget-boolean v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSymbolLock:Z

    if-nez v9, :cond_5b

    const/4 v9, 0x1

    :goto_6
    iput-boolean v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mSymbolLock:Z

    goto/16 :goto_1

    :cond_5b
    const/4 v9, 0x0

    goto :goto_6

    .line 2994
    :cond_5c
    const/16 v9, -0x18

    if-ne v9, p1, :cond_5e

    .line 2995
    iget-boolean v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mPointingOn:Z

    if-nez v9, :cond_5d

    const/4 v9, 0x1

    :goto_7
    iput-boolean v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mPointingOn:Z

    goto/16 :goto_1

    :cond_5d
    const/4 v9, 0x0

    goto :goto_7

    .line 2998
    :cond_5e
    const/16 v9, -0x16

    if-ne v9, p1, :cond_2

    .line 3000
    iget v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    sparse-switch v9, :sswitch_data_6

    .line 3008
    const-string v9, "SimeInputModeSwitcher"

    const-string v10, "No newInputMode exists on current inputmode"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    :goto_8
    invoke-static {v5}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    goto/16 :goto_1

    .line 3002
    :sswitch_54
    const/high16 v5, -0x6efb

    .line 3003
    goto :goto_8

    .line 3005
    :sswitch_55
    const/high16 v5, -0x5efb

    .line 3006
    goto :goto_8

    .line 3027
    :cond_5f
    const/4 v9, -0x3

    if-eq v9, p1, :cond_60

    const/16 v9, -0xe

    if-ne v9, p1, :cond_62

    .line 3028
    :cond_60
    iget-object v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getToolBarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 3031
    invoke-static {}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getToolbarStatus()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    move-result-object v8

    .line 3032
    .local v8, toolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;
    sget-object v9, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    invoke-virtual {v8, v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    .line 3033
    iget-object v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getToolBarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->updateToolBarPage(Z)V

    goto/16 :goto_2

    .line 3036
    :cond_61
    iget-object v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getToolBarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->updateToolBarPage(Z)V

    goto/16 :goto_2

    .line 3039
    .end local v8           #toolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;
    :cond_62
    const/16 v9, -0x12

    if-ne v9, p1, :cond_3

    .line 3040
    iget-object v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getToolBarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 3043
    invoke-static {}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getToolbarStatus()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    move-result-object v8

    .line 3044
    .restart local v8       #toolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;
    sget-object v9, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->TOOLBAR_SYMBOLS:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    invoke-virtual {v8, v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3045
    iget-object v9, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getToolBarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->updateToolBarPage(Z)V

    goto/16 :goto_2

    .line 2406
    :sswitch_data_0
    .sparse-switch
        0x3000000 -> :sswitch_0
        0x4000000 -> :sswitch_1
    .end sparse-switch

    .line 2440
    :sswitch_data_1
    .sparse-switch
        0x3000000 -> :sswitch_2
        0x4000000 -> :sswitch_3
    .end sparse-switch

    .line 2583
    :sswitch_data_2
    .sparse-switch
        0x11110000 -> :sswitch_4
        0x11130000 -> :sswitch_a
        0x11210000 -> :sswitch_6
        0x11310000 -> :sswitch_5
        0x11330000 -> :sswitch_b
        0x12110000 -> :sswitch_7
        0x12210000 -> :sswitch_9
        0x12310000 -> :sswitch_8
    .end sparse-switch

    .line 2650
    :sswitch_data_3
    .sparse-switch
        0x61011000 -> :sswitch_11
        0x61012000 -> :sswitch_12
        0x61013000 -> :sswitch_13
        0x61014000 -> :sswitch_14
        0x61015000 -> :sswitch_15
        0x61021000 -> :sswitch_c
        0x61022000 -> :sswitch_d
        0x61023000 -> :sswitch_e
        0x61024000 -> :sswitch_f
        0x61025000 -> :sswitch_10
        0x62011000 -> :sswitch_1c
        0x62012000 -> :sswitch_1d
        0x62013000 -> :sswitch_1e
        0x62014000 -> :sswitch_1f
        0x62015000 -> :sswitch_20
        0x62016000 -> :sswitch_21
        0x62021000 -> :sswitch_16
        0x62022000 -> :sswitch_17
        0x62023000 -> :sswitch_18
        0x62024000 -> :sswitch_19
        0x62025000 -> :sswitch_1a
        0x62026000 -> :sswitch_1b
        0x65501000 -> :sswitch_22
        0x65502000 -> :sswitch_23
        0x65503000 -> :sswitch_24
        0x65601000 -> :sswitch_25
        0x65602000 -> :sswitch_26
        0x65603000 -> :sswitch_27
        0x65701000 -> :sswitch_28
        0x65702000 -> :sswitch_29
        0x65703000 -> :sswitch_2a
        0x65801000 -> :sswitch_2b
        0x65802000 -> :sswitch_2c
        0x65803000 -> :sswitch_2d
    .end sparse-switch

    .line 2807
    :sswitch_data_4
    .sparse-switch
        0x61011000 -> :sswitch_33
        0x61012000 -> :sswitch_34
        0x61013000 -> :sswitch_35
        0x61014000 -> :sswitch_36
        0x61015000 -> :sswitch_37
        0x61021000 -> :sswitch_2e
        0x61022000 -> :sswitch_2f
        0x61023000 -> :sswitch_30
        0x61024000 -> :sswitch_31
        0x61025000 -> :sswitch_32
        0x62011000 -> :sswitch_3e
        0x62012000 -> :sswitch_3f
        0x62013000 -> :sswitch_40
        0x62014000 -> :sswitch_41
        0x62015000 -> :sswitch_42
        0x62016000 -> :sswitch_43
        0x62021000 -> :sswitch_38
        0x62022000 -> :sswitch_39
        0x62023000 -> :sswitch_3a
        0x62024000 -> :sswitch_3b
        0x62025000 -> :sswitch_3c
        0x62026000 -> :sswitch_3d
        0x65501000 -> :sswitch_44
        0x65502000 -> :sswitch_45
        0x65503000 -> :sswitch_46
        0x65601000 -> :sswitch_47
        0x65602000 -> :sswitch_48
        0x65603000 -> :sswitch_49
        0x65701000 -> :sswitch_4a
        0x65702000 -> :sswitch_4b
        0x65703000 -> :sswitch_4c
        0x65801000 -> :sswitch_4d
        0x65802000 -> :sswitch_4e
        0x65803000 -> :sswitch_4f
    .end sparse-switch

    .line 2949
    :sswitch_data_5
    .sparse-switch
        0x61011000 -> :sswitch_51
        0x61012000 -> :sswitch_51
        0x61013000 -> :sswitch_51
        0x61014000 -> :sswitch_51
        0x61015000 -> :sswitch_51
        0x61021000 -> :sswitch_50
        0x61022000 -> :sswitch_50
        0x61023000 -> :sswitch_50
        0x61024000 -> :sswitch_50
        0x61025000 -> :sswitch_50
        0x62011000 -> :sswitch_52
        0x62012000 -> :sswitch_52
        0x62013000 -> :sswitch_52
        0x62014000 -> :sswitch_52
        0x62015000 -> :sswitch_52
        0x62016000 -> :sswitch_52
        0x62021000 -> :sswitch_53
        0x62022000 -> :sswitch_53
        0x62023000 -> :sswitch_53
        0x62024000 -> :sswitch_53
        0x62025000 -> :sswitch_53
        0x62026000 -> :sswitch_53
    .end sparse-switch

    .line 3000
    :sswitch_data_6
    .sparse-switch
        -0x6efb0000 -> :sswitch_55
        -0x5efb0000 -> :sswitch_54
    .end sparse-switch
.end method

.method public switchModeForUserKeyLongPressed(I)I
    .locals 6
    .parameter "userKey"

    .prologue
    .line 3352
    const/4 v0, 0x0

    .line 3363
    .local v0, newInputMode:I
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 3364
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 3365
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1
.end method

.method public switchModeToNext()I
    .locals 7

    .prologue
    .line 1488
    const/4 v1, 0x0

    .line 1489
    .local v1, newInputMode:I
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf

    and-int v0, v2, v3

    .line 1491
    .local v0, language:I
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf00

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1523
    const-string v2, "SimeInputModeSwitcher"

    const-string v3, "No newInputMode exists on current inputmode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1529
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v3, 0x1

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1530
    sget v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    .line 1531
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 1532
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v2

    .line 1493
    :sswitch_0
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->isHWBoxMode(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1496
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWFSMode(I)I

    move-result v1

    goto :goto_0

    .line 1497
    :cond_0
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->isHWBoxMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1500
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    goto :goto_0

    .line 1502
    :cond_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v2, :cond_2

    .line 1503
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    goto :goto_0

    .line 1504
    :cond_2
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_3

    .line 1505
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWFSMode(I)I

    move-result v1

    goto :goto_0

    .line 1507
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeTo34Mode(I)I

    move-result v1

    .line 1510
    goto :goto_0

    .line 1512
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToQwertyMode(I)I

    move-result v1

    .line 1513
    goto :goto_0

    .line 1516
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeTo34Mode(I)I

    move-result v1

    .line 1517
    goto :goto_0

    .line 1520
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeTo34Mode(I)I

    move-result v1

    .line 1521
    goto :goto_0

    .line 1491
    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
        0x3000000 -> :sswitch_2
        0x4000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public switchModeToPrev()I
    .locals 7

    .prologue
    .line 1537
    const/4 v1, 0x0

    .line 1538
    .local v1, newInputMode:I
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf

    and-int v0, v2, v3

    .line 1540
    .local v0, language:I
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf00

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1569
    const-string v2, "SimeInputModeSwitcher"

    const-string v3, "No newInputMode exists on current inputmode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1575
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v3, 0x1

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1576
    sget v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    .line 1577
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 1578
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v2

    .line 1542
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeTo34Mode(I)I

    move-result v1

    .line 1543
    goto :goto_0

    .line 1545
    :sswitch_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->isHWBoxMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1548
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    goto :goto_0

    .line 1549
    :cond_0
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->isHWBoxMode(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1552
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWFSMode(I)I

    move-result v1

    goto :goto_0

    .line 1553
    :cond_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v2, :cond_2

    .line 1554
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    goto :goto_0

    .line 1555
    :cond_2
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_3

    .line 1556
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWFSMode(I)I

    move-result v1

    goto :goto_0

    .line 1558
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToQwertyMode(I)I

    move-result v1

    .line 1560
    goto :goto_0

    .line 1562
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToQwertyMode(I)I

    move-result v1

    .line 1563
    goto :goto_0

    .line 1566
    :sswitch_3
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToQwertyMode(I)I

    move-result v1

    .line 1567
    goto :goto_0

    .line 1540
    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
        0x3000000 -> :sswitch_2
        0x4000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public switchToHandwritingModeByToggleKey()I
    .locals 7

    .prologue
    .line 1584
    const/4 v1, 0x0

    .line 1585
    .local v1, newInputMode:I
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v3, 0xf

    and-int v0, v2, v3

    .line 1587
    .local v0, language:I
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentHandwritingInputMode:I

    const/high16 v3, 0xf00

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1595
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v2, :cond_0

    .line 1597
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWFSMode(I)I

    move-result v1

    .line 1608
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1609
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v3, 0x1

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1610
    sget v2, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    .line 1611
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 1612
    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v2

    .line 1589
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWFSMode(I)I

    move-result v1

    .line 1590
    goto :goto_0

    .line 1592
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    .line 1593
    goto :goto_0

    .line 1601
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToHWBoxMode(I)I

    move-result v1

    goto :goto_0

    .line 1587
    :sswitch_data_0
    .sparse-switch
        0x3000000 -> :sswitch_0
        0x4000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public switchToKeypadModeByToggleKey()I
    .locals 10

    .prologue
    const/high16 v9, 0x5

    const/high16 v8, 0x4

    const/high16 v7, 0x3

    const/high16 v6, 0x1

    const/high16 v5, -0x1000

    .line 1616
    const/4 v1, 0x0

    .line 1617
    .local v1, newInputMode:I
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    const/high16 v4, 0xf

    and-int v0, v3, v4

    .line 1618
    .local v0, language:I
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentKeyPadModeMgr:Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;

    invoke-virtual {v3, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher$RecentKeyPadInputModeMgr;->getRectMode(I)I

    move-result v2

    .line 1620
    .local v2, recentKeyPadMode:I
    const/high16 v3, 0xf00

    and-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 1697
    if-ne v0, v6, :cond_b

    .line 1698
    const/high16 v1, 0x1111

    .line 1713
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1714
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v4, 0x1

    iget v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v6, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v7, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1715
    sget v3, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    .line 1716
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 1717
    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v3

    .line 1637
    :sswitch_0
    if-ne v0, v6, :cond_0

    .line 1638
    const/high16 v1, 0x1211

    goto :goto_0

    .line 1639
    :cond_0
    if-ne v0, v7, :cond_1

    .line 1640
    const/high16 v1, 0x1203

    goto :goto_0

    .line 1641
    :cond_1
    if-ne v0, v9, :cond_3

    .line 1642
    and-int v3, v2, v5

    const/high16 v4, 0x3000

    if-ne v3, v4, :cond_2

    .line 1643
    const/high16 v1, 0x3205

    goto :goto_0

    .line 1645
    :cond_2
    const/high16 v1, -0x6dfb

    goto :goto_0

    .line 1647
    :cond_3
    if-ne v0, v8, :cond_5

    .line 1648
    and-int v3, v2, v5

    const/high16 v4, 0x3000

    if-ne v3, v4, :cond_4

    .line 1649
    const/high16 v1, 0x3204

    goto :goto_0

    .line 1651
    :cond_4
    const/high16 v1, 0x2204

    goto :goto_0

    .line 1653
    :cond_5
    and-int v3, v2, v5

    const/high16 v4, 0x3000

    if-ne v3, v4, :cond_6

    .line 1654
    const/high16 v1, 0x3202

    goto :goto_0

    .line 1656
    :cond_6
    const/high16 v1, 0x1202

    .line 1658
    goto :goto_0

    .line 1672
    :sswitch_1
    if-ne v0, v6, :cond_7

    .line 1673
    const/high16 v1, 0x1111

    goto :goto_0

    .line 1674
    :cond_7
    if-ne v0, v7, :cond_8

    .line 1675
    const/high16 v1, 0x1113

    goto :goto_0

    .line 1676
    :cond_8
    if-ne v0, v9, :cond_9

    .line 1677
    const/high16 v1, -0x6efb

    goto :goto_0

    .line 1678
    :cond_9
    if-ne v0, v8, :cond_a

    .line 1679
    const/high16 v1, 0x2104

    goto :goto_0

    .line 1681
    :cond_a
    const/high16 v1, 0x1102

    .line 1683
    goto :goto_0

    .line 1699
    :cond_b
    if-ne v0, v7, :cond_c

    .line 1700
    const/high16 v1, 0x1113

    goto :goto_0

    .line 1701
    :cond_c
    if-ne v0, v9, :cond_d

    .line 1702
    const/high16 v1, -0x6efb

    goto :goto_0

    .line 1703
    :cond_d
    if-ne v0, v8, :cond_e

    .line 1704
    const/high16 v1, 0x2104

    goto :goto_0

    .line 1706
    :cond_e
    const/high16 v1, 0x1102

    goto :goto_0

    .line 1620
    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public switchToMode(I)I
    .locals 5
    .parameter "mode"

    .prologue
    .line 2181
    const/high16 v0, -0x3efe

    if-ne v0, p1, :cond_0

    .line 2183
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->handleClipboardKey()V

    .line 2184
    iget v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    .line 2189
    :goto_0
    return v0

    .line 2186
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 2187
    sget v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mMainInputMode:I

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPortraitInputMode(I)V

    .line 2188
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 2189
    iget v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto :goto_0
.end method

.method public switchToNextPageSymbol()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1406
    new-instance v0, Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-direct {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>()V

    .line 1407
    .local v0, newInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolbarSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1409
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-virtual {v1, v5}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->symbolPageFlip(Z)Lcom/samsung/inputmethod/SimeInputModeDef;

    move-result-object v1

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 1411
    :cond_0
    iget v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1412
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1413
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1
.end method

.method public switchToPreviousPageSymbol()I
    .locals 6

    .prologue
    .line 1418
    new-instance v0, Lcom/samsung/inputmethod/SimeInputModeDef;

    invoke-direct {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;-><init>()V

    .line 1419
    .local v0, newInputMode:Lcom/samsung/inputmethod/SimeInputModeDef;
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolbarSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1421
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->symbolPageFlip(Z)Lcom/samsung/inputmethod/SimeInputModeDef;

    move-result-object v1

    iget v1, v1, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    iput v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    .line 1423
    :cond_0
    iget v1, v0, Lcom/samsung/inputmethod/SimeInputModeDef;->value:I

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 1424
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1425
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    return v1
.end method

.method public switchToSymbolInputToolbarMode()I
    .locals 6

    .prologue
    .line 3331
    const/4 v0, 0x0

    .line 3332
    .local v0, newInputMode:I
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 3333
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v1, :cond_2

    .line 3334
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3335
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->changeToToolBarSKB()I

    .line 3336
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    .line 3346
    :goto_0
    return v1

    .line 3339
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->switchToSymbolInputToolbarMode()I

    move-result v0

    .line 3340
    if-nez v0, :cond_1

    .line 3341
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto :goto_0

    .line 3342
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->saveInputMode(I)V

    .line 3343
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v5, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 3346
    :cond_2
    iget v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputIcon:I

    goto :goto_0
.end method

.method public tryHandleLongPressSwitch(ILcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "softKey"

    .prologue
    const/16 v6, 0x1d

    const/16 v5, 0x10

    const/4 v1, 0x0

    const/4 v4, 0x7

    const/4 v2, 0x1

    .line 4519
    if-eqz p2, :cond_1

    .line 4520
    invoke-virtual {p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 4706
    :cond_0
    :goto_0
    return v1

    .line 4524
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 4526
    .local v0, variation:I
    const/4 v3, -0x2

    if-eq v3, p1, :cond_2

    const/4 v3, -0x4

    if-ne v3, p1, :cond_3

    .line 4528
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getDialogMgr()Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->ClearAllPopupMenu()V

    .line 4529
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 4530
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->showInputMethodSelectingMenu()V

    move v1, v2

    .line 4532
    goto :goto_0

    .line 4533
    :cond_3
    const/16 v3, 0x38

    if-eq v3, p1, :cond_4

    const/16 v3, 0xc8

    if-ne v3, p1, :cond_5

    .line 4536
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v1

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    invoke-virtual {v1, v3, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->showWindow(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    move v1, v2

    .line 4538
    goto :goto_0

    .line 4539
    :cond_5
    const/4 v3, -0x6

    if-eq v3, p1, :cond_6

    const/4 v3, -0x5

    if-ne v3, p1, :cond_9

    .line 4540
    :cond_6
    const/16 v1, 0x20

    if-ne v0, v1, :cond_8

    .line 4543
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v1

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    invoke-virtual {v1, v3, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->showWindow(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    :cond_7
    :goto_1
    move v1, v2

    .line 4551
    goto :goto_0

    .line 4545
    :cond_8
    if-ne v0, v5, :cond_7

    .line 4547
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v1

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->DOMAIN:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    invoke-virtual {v1, v3, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->showWindow(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto :goto_1

    .line 4553
    :cond_9
    const/4 v3, -0x1

    if-ne v3, p1, :cond_a

    .line 4555
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForLongShiftKey()I

    .line 4556
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    move v1, v2

    .line 4557
    goto :goto_0

    .line 4559
    :cond_a
    const/16 v3, -0xc

    if-ne v3, p1, :cond_b

    .line 4560
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getDialogMgr()Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->showSelectLanguage()V

    move v1, v2

    .line 4561
    goto :goto_0

    .line 4564
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4577
    :cond_c
    const/16 v3, 0x43

    if-ne v3, p1, :cond_d

    .line 4578
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->isComposingViewShown()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4580
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    move v1, v2

    .line 4581
    goto/16 :goto_0

    .line 4596
    :cond_d
    const/16 v3, 0x4b

    if-ne v3, p1, :cond_e

    move v1, v2

    .line 4597
    goto/16 :goto_0

    .line 4599
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4601
    if-lt p1, v6, :cond_f

    const/16 v3, 0x36

    if-le p1, v3, :cond_11

    :cond_f
    if-lt p1, v4, :cond_10

    if-le p1, v5, :cond_11

    :cond_10
    const/16 v3, 0x45

    if-ne p1, v3, :cond_0

    :cond_11
    move v1, v2

    .line 4604
    goto/16 :goto_0

    .line 4606
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4618
    const/16 v3, 0x3e

    if-ne p1, v3, :cond_13

    move v1, v2

    .line 4619
    goto/16 :goto_0

    .line 4622
    :cond_13
    if-ne p1, v4, :cond_14

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4626
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4627
    if-lt p1, v4, :cond_15

    if-le p1, v5, :cond_16

    :cond_15
    const/16 v3, 0x4b

    if-ne p1, v3, :cond_0

    :cond_16
    move v1, v2

    .line 4628
    goto/16 :goto_0

    .line 4631
    :cond_17
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 4632
    if-lt p1, v4, :cond_18

    if-le p1, v5, :cond_19

    :cond_18
    const/16 v3, -0xa

    if-ne p1, v3, :cond_0

    :cond_19
    move v1, v2

    .line 4633
    goto/16 :goto_0

    .line 4637
    :cond_1a
    if-lt p1, v4, :cond_1b

    if-le p1, v5, :cond_1c

    :cond_1b
    if-ne p1, v6, :cond_0

    :cond_1c
    move v1, v2

    .line 4638
    goto/16 :goto_0

    .line 4644
    :cond_1d
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 4658
    const/16 v3, 0x43

    if-ne v3, p1, :cond_1e

    .line 4659
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->isComposingViewShown()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 4661
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    move v1, v2

    .line 4662
    goto/16 :goto_0

    .line 4680
    :cond_1e
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4682
    if-lt p1, v6, :cond_1f

    const/16 v3, 0x36

    if-gt p1, v3, :cond_1f

    move v1, v2

    .line 4685
    goto/16 :goto_0

    .line 4687
    :cond_1f
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4688
    if-lt p1, v4, :cond_0

    if-gt p1, v5, :cond_0

    move v1, v2

    .line 4689
    goto/16 :goto_0

    .line 4695
    :cond_20
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 4696
    if-ne p1, v4, :cond_0

    move v1, v2

    .line 4697
    goto/16 :goto_0

    .line 4698
    :cond_21
    invoke-direct {p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123SymMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4699
    invoke-virtual {p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v2

    .line 4700
    goto/16 :goto_0
.end method

.method public updateToggleStates()V
    .locals 5

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mToggleStateMgr:Lcom/samsung/inputmethod/SimeToggleStatesMgr;

    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mInputMode:I

    iget v3, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mRecentLauageInputMode:I

    iget-object v4, p0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V

    .line 1341
    return-void
.end method
