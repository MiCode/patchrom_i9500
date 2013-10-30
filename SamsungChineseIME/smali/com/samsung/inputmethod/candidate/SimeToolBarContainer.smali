.class public Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;
.super Landroid/widget/RelativeLayout;
.source "SimeToolBarContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;,
        Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeToolBarContainer"

.field private static final TOOLBAR_PAGE_DISABLE:I = -0x1

.field private static final TOOLBAR_PAGE_DISMISS:I = -0x2

.field private static final TOOLBAR_PAGE_ENABLE:I = 0x1

.field private static final TOOLBAR_PAGE_SHOWING:I = 0x2

.field private static mToolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;


# instance fields
.field private mImeService:Lcom/samsung/inputmethod/SamsungIME;

.field private mPrivateImeOptionsController:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

.field public mToolBarDisableItemsVec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;",
            ">;"
        }
    .end annotation
.end field

.field public mToolBarIconsRes:[[I

.field public mToolBarItemsVec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;",
            ">;"
        }
    .end annotation
.end field

.field private mToolBarView:Lcom/samsung/inputmethod/candidate/SimeToolBarView;

.field private mToolbarScrollView:Landroid/widget/HorizontalScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/16 v0, 0xa

    new-array v0, v0, [[I

    new-array v1, v8, [I

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v6

    const v2, 0x7f0202de

    aput v2, v1, v4

    aput v4, v1, v5

    aput v5, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [I

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v6

    const v2, 0x7f0202d2

    aput v2, v1, v4

    aput v4, v1, v5

    aput v5, v1, v7

    aput-object v1, v0, v4

    new-array v1, v8, [I

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v6

    const v2, 0x7f0202e4

    aput v2, v1, v4

    aput v4, v1, v5

    aput v5, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [I

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v6

    const v2, 0x7f0202e2

    aput v2, v1, v4

    aput v4, v1, v5

    aput v5, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [I

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    aput v2, v1, v6

    const v2, 0x7f0202e0

    aput v2, v1, v4

    aput v4, v1, v5

    aput v5, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v8, [I

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_FLOATING_WINDOW:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v6

    const v3, 0x7f0202dc

    aput v3, v2, v4

    aput v4, v2, v5

    aput v5, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [I

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_COMMON:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v6

    const v3, 0x7f0b0299

    aput v3, v2, v4

    aput v4, v2, v5

    aput v5, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [I

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_ANGLE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v6

    const v3, 0x7f0b029a

    aput v3, v2, v4

    aput v4, v2, v5

    aput v5, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [I

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_HALF_ANGLE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v6

    const v3, 0x7f0b029b

    aput v3, v2, v4

    aput v4, v2, v5

    aput v5, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v8, [I

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_EMOTION:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    aput v3, v2, v6

    const v3, 0x7f0b029c

    aput v3, v2, v4

    aput v4, v2, v5

    aput v5, v2, v7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    .line 100
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    .line 101
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarDisableItemsVec:Ljava/util/Vector;

    .line 106
    return-void
.end method

.method private configToolBarItems()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v12, -0x1

    const/4 v8, 0x1

    .line 207
    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarDisableItemsVec:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    .line 209
    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getPrivateImeOptionsController()Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mPrivateImeOptionsController:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    .line 212
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isVoiceInstalled()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getVoiceInput()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->isVoiceInputEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPassWordEditor()Z

    move-result v9

    if-nez v9, :cond_0

    move v4, v8

    .line 215
    .local v4, isVoiceValid:Z
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHKTWModelByCSC()Z

    move-result v9

    if-nez v9, :cond_5

    .line 216
    sget-object v9, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v9

    const/4 v10, -0x2

    invoke-direct {p0, v9, v10}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->dimToolBarIcon(II)V

    .line 217
    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarDisableItemsVec:Ljava/util/Vector;

    sget-object v10, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 228
    :goto_0
    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isClipboardEnabled()Z

    move-result v2

    .line 229
    .local v2, isClipboardValid:Z
    if-nez v2, :cond_7

    .line 230
    sget-object v9, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v9

    invoke-direct {p0, v9, v12}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->dimToolBarIcon(II)V

    .line 237
    :goto_1
    const/4 v3, 0x0

    .line 238
    .local v3, isOCRValid:Z
    const/4 v6, 0x0

    .line 241
    .local v6, ocrInstalled:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.android.app.ocr"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 244
    if-eqz v6, :cond_1

    .line 245
    const/4 v3, 0x1

    .line 250
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    if-eqz v3, :cond_8

    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mPrivateImeOptionsController:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->getInputType()I

    move-result v9

    const/16 v10, 0x16

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mPrivateImeOptionsController:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->getInputType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 251
    :cond_2
    sget-object v9, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v9

    invoke-direct {p0, v9, v12}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->dimToolBarIcon(II)V

    .line 258
    :goto_3
    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbol()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumOnly()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 261
    :cond_3
    sget-object v9, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v9

    invoke-direct {p0, v9, v12}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->dimToolBarIcon(II)V

    .line 269
    :goto_4
    sget-boolean v9, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->isMagnificationGestureOn()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 270
    :cond_4
    sget-object v9, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_FLOATING_WINDOW:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v9

    invoke-direct {p0, v9, v12}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->dimToolBarIcon(II)V

    .line 276
    :goto_5
    iget-object v9, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSettingEnabled()Z

    move-result v9

    if-nez v9, :cond_b

    .line 277
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v8

    invoke-direct {p0, v8, v12}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->dimToolBarIcon(II)V

    .line 283
    :goto_6
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v7

    .line 284
    .local v7, startIndex:I
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_FLOATING_WINDOW:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v0

    .line 285
    .local v0, endIndex:I
    const/4 v1, 0x0

    .line 286
    .local v1, i:I
    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    .line 287
    move v1, v7

    :goto_7
    if-gt v1, v0, :cond_d

    .line 288
    invoke-static {}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->values()[Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    move-result-object v8

    aget-object v5, v8, v1

    .line 289
    .local v5, itemValue:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    invoke-direct {p0, v5}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->isDisableItem(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 287
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 219
    .end local v0           #endIndex:I
    .end local v1           #i:I
    .end local v2           #isClipboardValid:Z
    .end local v3           #isOCRValid:Z
    .end local v5           #itemValue:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    .end local v6           #ocrInstalled:Landroid/content/pm/PackageInfo;
    .end local v7           #startIndex:I
    :cond_5
    if-nez v4, :cond_6

    .line 220
    sget-object v9, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v9

    invoke-direct {p0, v9, v12}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->dimToolBarIcon(II)V

    goto/16 :goto_0

    .line 222
    :cond_6
    sget-object v9, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v9

    invoke-direct {p0, v9, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->dimToolBarIcon(II)V

    goto/16 :goto_0

    .line 233
    .restart local v2       #isClipboardValid:Z
    :cond_7
    sget-object v9, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v9

    invoke-direct {p0, v9, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->dimToolBarIcon(II)V

    goto/16 :goto_1

    .line 254
    .restart local v3       #isOCRValid:Z
    .restart local v6       #ocrInstalled:Landroid/content/pm/PackageInfo;
    :cond_8
    sget-object v9, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v9

    invoke-direct {p0, v9, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->dimToolBarIcon(II)V

    goto/16 :goto_3

    .line 264
    :cond_9
    sget-object v9, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v9

    invoke-direct {p0, v9, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->dimToolBarIcon(II)V

    goto/16 :goto_4

    .line 273
    :cond_a
    sget-object v9, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_FLOATING_WINDOW:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v9

    invoke-direct {p0, v9, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->dimToolBarIcon(II)V

    goto :goto_5

    .line 280
    :cond_b
    sget-object v9, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v9

    invoke-direct {p0, v9, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->dimToolBarIcon(II)V

    goto :goto_6

    .line 292
    .restart local v0       #endIndex:I
    .restart local v1       #i:I
    .restart local v5       #itemValue:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    .restart local v7       #startIndex:I
    :cond_c
    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 298
    .end local v5           #itemValue:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    :cond_d
    return-void

    .line 246
    .end local v0           #endIndex:I
    .end local v1           #i:I
    .end local v7           #startIndex:I
    :catch_0
    move-exception v9

    goto/16 :goto_2
.end method

.method private configToolBarSymbols()V
    .locals 5

    .prologue
    .line 170
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_COMMON:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    .line 171
    .local v3, startIndex:I
    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_EMOTION:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v0

    .line 172
    .local v0, endIndex:I
    const/4 v1, 0x0

    .line 173
    .local v1, i:I
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 174
    move v1, v3

    :goto_0
    if-gt v1, v0, :cond_0

    .line 175
    invoke-static {}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->values()[Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    move-result-object v4

    aget-object v2, v4, v1

    .line 176
    .local v2, itemValue:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v2           #itemValue:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    :cond_0
    return-void
.end method

.method private configWindowTypeRes()V
    .locals 9

    .prologue
    const v8, 0x7f0202dc

    const/4 v7, 0x1

    .line 186
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    .line 188
    .local v3, keyboardType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    array-length v4, v5

    .line 189
    .local v4, resLength:I
    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_FLOATING_WINDOW:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v0

    .line 190
    .local v0, floatingItemIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 191
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget v2, v5, v6

    .line 192
    .local v2, itemIndex:I
    if-ne v2, v0, :cond_2

    .line 193
    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 194
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v5, v5, v1

    aput v8, v5, v7

    .line 203
    .end local v2           #itemIndex:I
    :cond_0
    :goto_1
    return-void

    .line 196
    .restart local v2       #itemIndex:I
    :cond_1
    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v5, v5, v1

    aput v8, v5, v7

    goto :goto_1

    .line 190
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private dimToolBarIcon(II)V
    .locals 5
    .parameter "toolBarItemsIndex"
    .parameter "proStatus"

    .prologue
    const/4 v4, 0x1

    .line 313
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    array-length v1, v2

    .line 315
    .local v1, iconResLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 316
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne p1, v2, :cond_c

    .line 319
    packed-switch p2, :pswitch_data_0

    .line 368
    :cond_0
    :goto_1
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 387
    :cond_1
    :goto_2
    :pswitch_1
    return-void

    .line 321
    :pswitch_2
    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 322
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0202df

    aput v3, v2, v4

    goto :goto_1

    .line 323
    :cond_2
    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 324
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0202db

    aput v3, v2, v4

    goto :goto_1

    .line 325
    :cond_3
    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_4

    .line 326
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0202e5

    aput v3, v2, v4

    goto :goto_1

    .line 327
    :cond_4
    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_5

    .line 328
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0202e3

    aput v3, v2, v4

    goto :goto_1

    .line 329
    :cond_5
    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 330
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0202e1

    aput v3, v2, v4

    goto :goto_1

    .line 331
    :cond_6
    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_FLOATING_WINDOW:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 332
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0202dd

    aput v3, v2, v4

    goto :goto_1

    .line 343
    :pswitch_3
    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_7

    .line 344
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0202de

    aput v3, v2, v4

    goto/16 :goto_1

    .line 345
    :cond_7
    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_8

    .line 346
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0202d2

    aput v3, v2, v4

    goto/16 :goto_1

    .line 347
    :cond_8
    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_9

    .line 348
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0202e4

    aput v3, v2, v4

    goto/16 :goto_1

    .line 349
    :cond_9
    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_a

    .line 350
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0202e2

    aput v3, v2, v4

    goto/16 :goto_1

    .line 351
    :cond_a
    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_b

    .line 352
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0202e0

    aput v3, v2, v4

    goto/16 :goto_1

    .line 353
    :cond_b
    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_FLOATING_WINDOW:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 354
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const v3, 0x7f0202dc

    aput v3, v2, v4

    goto/16 :goto_1

    .line 372
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x2

    aput p2, v2, v3

    goto/16 :goto_2

    .line 378
    :pswitch_5
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x3

    aput p2, v2, v3

    goto/16 :goto_2

    .line 315
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 368
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getToolbarStatus()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    return-object v0
.end method

.method private isDisableItem(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;)Z
    .locals 3
    .parameter "itemValue"

    .prologue
    .line 301
    const/4 v1, 0x0

    .line 303
    .local v1, isDisable:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarDisableItemsVec:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarDisableItemsVec:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    const/4 v1, 0x1

    .line 309
    :cond_0
    return v1

    .line 303
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getEnableState(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;)I
    .locals 7
    .parameter "itemId"

    .prologue
    .line 437
    const/4 v4, -0x1

    .line 438
    .local v4, state:I
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    array-length v3, v5

    .line 440
    .local v3, resLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 441
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x0

    aget v2, v5, v6

    .line 442
    .local v2, resItemIndex:I
    invoke-static {}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->values()[Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    move-result-object v5

    array-length v5, v5

    if-le v2, v5, :cond_1

    .line 455
    .end local v2           #resItemIndex:I
    :cond_0
    :goto_1
    return v4

    .line 449
    .restart local v2       #resItemIndex:I
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->values()[Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    move-result-object v5

    aget-object v1, v5, v2

    .line 450
    .local v1, resItemId:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 451
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x2

    aget v4, v5, v6

    .line 452
    goto :goto_1

    .line 440
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getToolBarIconsResArray()[[I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarIconsRes:[[I

    return-object v0
.end method

.method public getToolBarItemsNum()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getToolBarVecValue(I)Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    .locals 2
    .parameter "vecIndex"

    .prologue
    .line 432
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarItemsVec:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    goto :goto_0
.end method

.method public initialize(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 2
    .parameter "imeService"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    .line 111
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getPrivateImeOptionsController()Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mPrivateImeOptionsController:Lcom/samsung/inputmethod/comm/SimePrivateImeOption;

    .line 112
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isKeyGuardScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-eq v0, v1, :cond_2

    .line 121
    :cond_2
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    .line 122
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->configToolBarItems()V

    .line 126
    const v0, 0x7f0202d3

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->setBackgroundResource(I)V

    .line 130
    const v0, 0x7f0c007c

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolbarScrollView:Landroid/widget/HorizontalScrollView;

    .line 131
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolbarScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 133
    const v0, 0x7f0c007d

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarView:Lcom/samsung/inputmethod/candidate/SimeToolBarView;

    .line 134
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarView:Lcom/samsung/inputmethod/candidate/SimeToolBarView;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->initialize(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarView:Lcom/samsung/inputmethod/candidate/SimeToolBarView;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->requestLayout()V

    goto :goto_0
.end method

.method public isSymbolToolPage(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;)Z
    .locals 2
    .parameter "itemId"

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, isSymbol:Z
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_COMMON:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_ANGLE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_HALF_ANGLE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_EMOTION:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 464
    :goto_0
    return v0

    .line 460
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    .line 390
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 391
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    .line 392
    .local v2, measuredWidth:I
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBAR_SUPPORT_ONEHAND:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v2, v3

    .line 401
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 408
    .local v1, measuredHeight:I
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForToolBar()I

    move-result v3

    add-int/2addr v1, v3

    .line 411
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 413
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 416
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 418
    return-void

    .line 397
    .end local v1           #measuredHeight:I
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v2

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public updateToolBarPage(Z)V
    .locals 2
    .parameter "toolbarPage"

    .prologue
    .line 141
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isKeyGuardScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    if-eqz p1, :cond_3

    .line 149
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    .line 150
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->configToolBarItems()V

    .line 156
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarView:Lcom/samsung/inputmethod/candidate/SimeToolBarView;

    if-nez v0, :cond_2

    .line 157
    const v0, 0x7f0c007d

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarView:Lcom/samsung/inputmethod/candidate/SimeToolBarView;

    .line 158
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarView:Lcom/samsung/inputmethod/candidate/SimeToolBarView;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->initialize(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolBarView:Lcom/samsung/inputmethod/candidate/SimeToolBarView;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->updateToolBarView(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->requestLayout()V

    goto :goto_0

    .line 152
    :cond_3
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->TOOLBAR_SYMBOLS:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->mToolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    .line 153
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->configToolBarSymbols()V

    goto :goto_1
.end method
