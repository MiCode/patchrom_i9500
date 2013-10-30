.class public Lcom/samsung/inputmethod/handwriting/SimeHWManager;
.super Ljava/lang/Object;
.source "SimeHWManager.java"

# interfaces
.implements Lcom/samsung/inputmethod/SimeEventNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

.field private static mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;


# instance fields
.field public mCBManager:Lcom/samsung/inputmethod/handwriting/BeautifyManager;

.field private mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

.field private mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

.field private mDialog:Landroid/app/Dialog;

.field private mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

.field private mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mUIThread:Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;

.field private mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "SimeHWManager"

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 1
    .parameter "ime"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 105
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    .line 106
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getHWDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    .line 107
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->setEventNotifier(Lcom/samsung/inputmethod/SimeEventNotifier;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDialog:Landroid/app/Dialog;

    .line 109
    new-instance v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;-><init>(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mUIThread:Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;

    .line 110
    invoke-static {p1}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->getInstance(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/handwriting/BeautifyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mCBManager:Lcom/samsung/inputmethod/handwriting/BeautifyManager;

    .line 112
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->createHWFullScreenView()Z

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/handwriting/SimeHWManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showToast(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/inputmethod/handwriting/SimeHWManager;Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;)Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    return-object p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    return-object v0
.end method

.method public static getInstance(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/handwriting/SimeHWManager;
    .locals 1
    .parameter "ime"

    .prologue
    .line 116
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    .line 119
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    return-object v0
.end method

.method private pickDefaultCandidate()V
    .locals 4

    .prologue
    .line 506
    sget-boolean v2, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    const-string v3, "pickDefaultCandidate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    .line 508
    .local v1, imestate:Lcom/samsung/inputmethod/SamsungIME$ImeState;
    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v1, v2, :cond_2

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 511
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 512
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 515
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    return-void
.end method

.method public static postMessage(IJ)V
    .locals 3
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 436
    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 437
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 438
    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static postMessageEx(IJLjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "delayMillis"
    .parameter "ob"

    .prologue
    .line 450
    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 451
    .local v0, msg:Landroid/os/Message;
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 452
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 453
    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 458
    :goto_0
    return-void

    .line 455
    :cond_0
    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static removeMessage(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 445
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    return-void
.end method

.method public static removeMessageEx(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "ob"

    .prologue
    .line 461
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 462
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .parameter "strId"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 665
    return-void
.end method


# virtual methods
.method public UpdateHandWriteLanguage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 253
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHKTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setBoxInputMode(I)V

    .line 258
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_HK:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->initSamsungHandwrite(ZLcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;)V

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTWTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_3

    .line 261
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setBoxInputMode(I)V

    .line 263
    :cond_3
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_TW:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->initSamsungHandwrite(ZLcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;)V

    goto :goto_0

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 265
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_5

    .line 266
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setBoxInputMode(I)V

    .line 268
    :cond_5
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->initSamsungHandwrite(ZLcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;)V

    goto :goto_0

    .line 269
    :cond_6
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 270
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_7

    .line 271
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setBoxInputMode(I)V

    .line 273
    :cond_7
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->ENG:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->initSamsungHandwrite(ZLcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;)V

    goto :goto_0

    .line 274
    :cond_8
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_9

    .line 276
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setBoxInputMode(I)V

    .line 278
    :cond_9
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->KOR:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->initSamsungHandwrite(ZLcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;)V

    goto :goto_0
.end method

.method public cancelMiniPopupWindow()V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 806
    return-void
.end method

.method public cancelRecognize(Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 529
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->removeMessageEx(ILjava/lang/Object;)V

    .line 530
    return-void
.end method

.method public createHWFullScreenView()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 123
    sget-boolean v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    const-string v2, "createHandwriteView."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->dismiss()V

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    .line 129
    :cond_1
    new-instance v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v1, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    .line 130
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    if-nez v1, :cond_3

    .line 144
    :cond_2
    :goto_0
    return v0

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 136
    new-instance v1, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v1, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    .line 137
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    if-eqz v1, :cond_2

    .line 140
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->setService(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    .line 142
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->setListenView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->setContentView(Landroid/view/View;)V

    .line 144
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getHWBoxHeight(Z)I
    .locals 1
    .parameter "isLandScape"

    .prologue
    .line 813
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->GetHWBoxHeight(Z)I

    move-result v0

    return v0
.end method

.method public getHWBoxWidth(Z)I
    .locals 1
    .parameter "isLandScape"

    .prologue
    .line 809
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->GetHWBoxWidth(Z)I

    move-result v0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mUIThread:Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;

    return-object v0
.end method

.method public getIMEService()Lcom/samsung/inputmethod/SamsungIME;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method

.method public getWindow()Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    return-object v0
.end method

.method public handleEvent(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .parameter "event"
    .parameter "param1"
    .parameter "param2"

    .prologue
    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, bRet:Z
    packed-switch p1, :pswitch_data_0

    .line 856
    .end local p2
    :cond_0
    :goto_0
    return v0

    .line 821
    .restart local p2
    :pswitch_0
    if-eqz p2, :cond_0

    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 822
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 823
    .local v1, keyCode:I
    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 830
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->reset()V

    .line 831
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->processHWGestureKey(I)V

    .line 832
    const/4 v0, 0x1

    .line 833
    goto :goto_0

    .line 825
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->reset()V

    .line 826
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->processHWGestureKey(I)V

    .line 827
    const/4 v0, 0x1

    .line 828
    goto :goto_0

    .line 835
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->reset()V

    .line 836
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/16 v3, 0x43

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->processHWGestureKey(I)V

    .line 837
    const/4 v0, 0x1

    .line 838
    goto :goto_0

    .line 847
    .end local v1           #keyCode:I
    .restart local p2
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->pickDefaultCandidate()V

    .line 848
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->reset()V

    .line 849
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 850
    const/4 v0, 0x1

    .line 852
    goto :goto_0

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 823
    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public initSamsungHandwrite(ZLcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;)V
    .locals 3
    .parameter "forceInit"
    .parameter "language"

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-static {}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->isHandwriteInit()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 162
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_HK:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    if-ne p2, v0, :cond_2

    .line 163
    const v0, 0xe0ff

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getConvert()I

    move-result v1

    int-to-short v1, v1

    invoke-static {p2, v0, v2, v1}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwInitEngine(Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;CCI)V

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_TW:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    if-ne p2, v0, :cond_3

    .line 167
    const v0, 0xc0ff

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getConvert()I

    move-result v1

    int-to-short v1, v1

    invoke-static {p2, v0, v2, v1}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwInitEngine(Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;CCI)V

    goto :goto_0

    .line 171
    :cond_3
    const/16 v0, 0x6ff

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getConvert()I

    move-result v1

    int-to-short v1, v1

    invoke-static {p2, v0, v2, v1}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwInitEngine(Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;CCI)V

    goto :goto_0
.end method

.method public isHandwriteDefPaintStyle()Z
    .locals 1

    .prologue
    .line 487
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HANDWRITING_BEAUTIFY_FEATURE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwritingStyle()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandwriteInputMode()Z
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-nez v0, :cond_0

    .line 492
    const/4 v0, 0x0

    .line 493
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    goto :goto_0
.end method

.method public isLandscapeFullScreen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 497
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    if-nez v1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->dismiss()V

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    .line 522
    :cond_0
    return-void
.end method

.method public onInputModeChange(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 4
    .parameter "inputModeSwitcher"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 191
    :cond_0
    sget-boolean v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 192
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    const-string v1, "onInputModeChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->setInputMode(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 194
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWBoxView(Z)V

    .line 198
    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWFullScreenView(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->UpdateHandWriteLanguage()V

    .line 200
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->updateHWRangeAndBoxTitle(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->setHWFullScreenMode()V

    .line 202
    invoke-virtual {p0, v3, v3}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->setHWRect(ZZ)V

    .line 203
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mCBManager:Lcom/samsung/inputmethod/handwriting/BeautifyManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->setBeautifyLineStyle()I

    .line 204
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->updateSetting()V

    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteBoxMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v0, :cond_4

    .line 207
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWFullScreenView(Z)V

    .line 209
    :cond_4
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWBoxView(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->UpdateHandWriteLanguage()V

    .line 211
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->updateHWRangeAndBoxTitle(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->setHWBoxMode()V

    .line 213
    invoke-virtual {p0, v2, v3}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->setHWRect(ZZ)V

    .line 214
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mCBManager:Lcom/samsung/inputmethod/handwriting/BeautifyManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->setBeautifyLineStyle()I

    .line 215
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->updateSetting()V

    goto :goto_0

    .line 218
    :cond_5
    sget-boolean v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 219
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    const-string v1, "onInputModeChange error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_6
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v0, :cond_7

    .line 221
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWFullScreenView(Z)V

    .line 223
    :cond_7
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_8

    .line 224
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWBoxView(Z)V

    .line 226
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->recyleBitmap()V

    goto :goto_0
.end method

.method public recyleBitmap()V
    .locals 0

    .prologue
    .line 231
    invoke-static {}, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->recyleBitmap()V

    .line 232
    return-void
.end method

.method public releaseInstance()V
    .locals 1

    .prologue
    .line 465
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->onDestroy()V

    .line 467
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    .line 469
    :cond_0
    return-void
.end method

.method public setHWBoxMode()V
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    .line 185
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setService(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)V

    .line 186
    return-void
.end method

.method public setHWFullScreenMode()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    .line 180
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->setService(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)V

    .line 181
    return-void
.end method

.method public setHWRect(ZZ)V
    .locals 6
    .parameter "isFullScreen"
    .parameter "setDecRect"

    .prologue
    .line 238
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v0

    .line 239
    .local v0, dims:I
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    .line 240
    .local v2, isLandscape:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 241
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v3

    .line 242
    .local v3, width:I
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v1

    .line 247
    .local v1, height:I
    :goto_1
    iget-object v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    invoke-virtual {v4, v3, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->createHWBitmap(II)V

    .line 248
    if-eqz p2, :cond_0

    .line 249
    int-to-float v4, v0

    const/high16 v5, 0x4020

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v1, v4}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwSetRect(III)I

    .line 251
    :cond_0
    return-void

    .line 239
    .end local v1           #height:I
    .end local v2           #isLandscape:Z
    .end local v3           #width:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 244
    .restart local v2       #isLandscape:Z
    :cond_2
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v4, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->GetHWBoxWidth(Z)I

    move-result v3

    .line 245
    .restart local v3       #width:I
    sget-object v4, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v4, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->GetHWBoxHeight(Z)I

    move-result v1

    .restart local v1       #height:I
    goto :goto_1
.end method

.method public setInputMode(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 0
    .parameter "inputModeSwitcher"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 503
    return-void
.end method

.method public showHWBoxView(Z)V
    .locals 11
    .parameter "isShown"

    .prologue
    const/4 v4, 0x0

    const/16 v10, 0xa

    const/16 v9, 0x8

    const/4 v8, 0x5

    const/4 v7, 0x3

    .line 325
    sget-boolean v3, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 326
    sget-object v3, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showHWBoxView="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    if-nez v3, :cond_1

    .line 433
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    const/4 v1, 0x1

    .line 332
    .local v1, isLandscape:Z
    :goto_1
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 334
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    const v5, 0x7f0c005e

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    sput-object v3, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    .line 335
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 337
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 338
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v5, :cond_6

    .line 339
    if-eqz v1, :cond_5

    .line 340
    const/16 v3, 0x64

    invoke-virtual {v2, v9, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 414
    :cond_2
    :goto_2
    sget-object v3, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    if-eqz p1, :cond_1c

    .line 417
    sget-object v3, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setVisibility(I)V

    .line 428
    :goto_3
    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPointingOn()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteBoxMode()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 429
    :cond_3
    sget-object v3, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v3, v9}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setVisibility(I)V

    goto :goto_0

    .end local v0           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .end local v1           #isLandscape:Z
    .end local v2           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    move v1, v4

    .line 331
    goto :goto_1

    .line 342
    .restart local v0       #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .restart local v1       #isLandscape:Z
    .restart local v2       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const/16 v3, 0x64

    invoke-virtual {v2, v9, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 344
    :cond_6
    if-eqz v1, :cond_7

    .line 345
    const/16 v3, 0x6c

    invoke-virtual {v2, v10, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 347
    :cond_7
    const/16 v3, 0x8a

    invoke-virtual {v2, v10, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 349
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw360dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 350
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v3, :cond_c

    .line 351
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v5, :cond_a

    .line 352
    if-eqz v1, :cond_9

    .line 353
    const/16 v3, 0x6e

    invoke-virtual {v2, v10, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 355
    :cond_9
    const/16 v3, 0x6e

    invoke-virtual {v2, v9, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 357
    :cond_a
    if-eqz v1, :cond_b

    .line 358
    const/16 v3, 0x64

    invoke-virtual {v2, v7, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 360
    :cond_b
    const/16 v3, 0x78

    invoke-virtual {v2, v7, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 363
    :cond_c
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v5, :cond_e

    .line 364
    if-eqz v1, :cond_d

    .line 365
    const/16 v3, 0x5a

    invoke-virtual {v2, v10, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 367
    :cond_d
    const/16 v3, 0x5a

    invoke-virtual {v2, v10, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 369
    :cond_e
    if-eqz v1, :cond_f

    .line 370
    const/16 v3, 0x5a

    invoke-virtual {v2, v7, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 372
    :cond_f
    const/16 v3, 0x6e

    invoke-virtual {v2, v7, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 375
    :cond_10
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 376
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v5, :cond_12

    .line 377
    if-eqz v1, :cond_11

    .line 378
    const/16 v3, 0x3c

    invoke-virtual {v2, v8, v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 380
    :cond_11
    const/16 v3, 0x3c

    invoke-virtual {v2, v8, v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 382
    :cond_12
    if-eqz v1, :cond_13

    .line 383
    const/16 v3, 0x46

    invoke-virtual {v2, v8, v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 385
    :cond_13
    const/16 v3, 0x50

    invoke-virtual {v2, v8, v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 388
    :cond_14
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 389
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v5, :cond_16

    .line 390
    if-eqz v1, :cond_15

    .line 391
    const/16 v3, 0xa0

    invoke-virtual {v2, v9, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 393
    :cond_15
    const/16 v3, 0xa0

    invoke-virtual {v2, v9, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 395
    :cond_16
    if-eqz v1, :cond_17

    .line 396
    const/16 v3, 0xa0

    invoke-virtual {v2, v9, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 398
    :cond_17
    const/16 v3, 0xb4

    invoke-virtual {v2, v9, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 400
    :cond_18
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->ishSw360dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 401
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v5, :cond_1a

    .line 402
    if-eqz v1, :cond_19

    .line 403
    const/16 v3, 0x46

    const/4 v5, 0x1

    invoke-virtual {v2, v10, v3, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 405
    :cond_19
    const/16 v3, 0x46

    const/4 v5, 0x1

    invoke-virtual {v2, v9, v3, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 407
    :cond_1a
    if-eqz v1, :cond_1b

    .line 408
    const/16 v3, 0x64

    invoke-virtual {v2, v7, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 410
    :cond_1b
    const/16 v3, 0x78

    invoke-virtual {v2, v7, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 421
    :cond_1c
    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    if-eqz v3, :cond_1d

    .line 422
    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->cancelRecognize(Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;)V

    .line 424
    :cond_1d
    invoke-static {v4}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->removeMessage(I)V

    .line 425
    sget-object v3, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v3, v9}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setVisibility(I)V

    goto/16 :goto_3

    .line 431
    :cond_1e
    sget-object v3, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public showHWFullScreenView(Z)V
    .locals 3
    .parameter "isShown"

    .prologue
    .line 294
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mInstance:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    sget-boolean v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHWFullScreenView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_2
    if-eqz p1, :cond_3

    .line 306
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->updateToken()V

    .line 307
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getWindow()Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getWindow()Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->show()V

    goto :goto_0

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    if-eqz v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->cancelRecognize(Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;)V

    .line 317
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->removeMessage(I)V

    .line 318
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getWindow()Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getWindow()Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->hide()V

    goto :goto_0
.end method

.method public showHWView(Z)V
    .locals 1
    .parameter "isShown"

    .prologue
    .line 285
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWFullScreenView(Z)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWBoxView(Z)V

    goto :goto_0
.end method

.method public startRecognize(Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;I)V
    .locals 3
    .parameter "client"
    .parameter "speed"

    .prologue
    .line 525
    const/4 v0, 0x1

    int-to-long v1, p2

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessageEx(IJLjava/lang/Object;)V

    .line 526
    return-void
.end method

.method public updateHWRangeAndBoxTitle(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 13
    .parameter "inputModeSwitcher"

    .prologue
    const/high16 v12, 0x300

    const/high16 v11, 0x5

    const/high16 v10, 0x4

    const/high16 v9, 0x3

    const/high16 v8, 0x1

    .line 533
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v5

    const/high16 v6, 0xf00

    and-int v1, v5, v6

    .line 535
    .local v1, layout:I
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v5

    and-int/lit16 v4, v5, 0xf00

    .line 537
    .local v4, regType:I
    sget-boolean v5, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 538
    sget-object v5, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateHWRangeAndBoxTitle regType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v5

    const/high16 v6, 0xf

    and-int v0, v5, v6

    .line 543
    .local v0, language:I
    const-string v2, "zh_CN"

    .line 544
    .local v2, locale:Ljava/lang/String;
    const/16 v3, 0x6ff

    .line 545
    .local v3, range:C
    if-ne v12, v1, :cond_2

    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWFullScreenView:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    if-nez v5, :cond_2

    .line 661
    :cond_1
    :goto_0
    return-void

    .line 548
    :cond_2
    const/high16 v5, 0x400

    if-ne v5, v1, :cond_3

    sget-object v5, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    if-eqz v5, :cond_1

    .line 551
    :cond_3
    if-eq v12, v1, :cond_4

    const/high16 v5, 0x400

    if-ne v5, v1, :cond_18

    .line 554
    :cond_4
    sparse-switch v4, :sswitch_data_0

    .line 660
    :goto_1
    invoke-static {v3, v2}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwSetRange(CLjava/lang/String;)I

    goto :goto_0

    .line 556
    :sswitch_0
    if-ne v0, v9, :cond_5

    .line 557
    const/16 v3, 0x437

    .line 558
    const-string v2, "ko"

    goto :goto_1

    .line 559
    :cond_5
    if-ne v0, v8, :cond_6

    .line 560
    const/16 v3, 0xf7

    .line 561
    const-string v2, "en"

    goto :goto_1

    .line 562
    :cond_6
    if-ne v0, v11, :cond_7

    .line 564
    const v3, 0xe6ff

    .line 565
    const-string v2, "zh_HK"

    goto :goto_1

    .line 566
    :cond_7
    if-ne v0, v10, :cond_8

    .line 568
    const v3, 0xc6ff

    .line 569
    const-string v2, "zh_TW"

    goto :goto_1

    .line 572
    :cond_8
    const/16 v3, 0x46ff

    .line 573
    const-string v2, "zh_CN"

    .line 575
    goto :goto_1

    .line 577
    :sswitch_1
    if-ne v0, v9, :cond_9

    .line 578
    const/4 v3, 0x3

    .line 579
    const-string v2, "ko"

    goto :goto_1

    .line 580
    :cond_9
    if-ne v0, v8, :cond_a

    .line 581
    const/16 v3, 0xc3

    .line 582
    const-string v2, "en"

    goto :goto_1

    .line 583
    :cond_a
    if-ne v0, v11, :cond_b

    .line 584
    const/16 v3, 0xc3

    .line 585
    const-string v2, "zh_HK"

    goto :goto_1

    .line 586
    :cond_b
    if-ne v0, v10, :cond_c

    .line 587
    const/16 v3, 0xc3

    .line 588
    const-string v2, "zh_TW"

    goto :goto_1

    .line 590
    :cond_c
    const/4 v3, 0x3

    .line 591
    const-string v2, "zh_CN"

    .line 593
    goto :goto_1

    .line 595
    :sswitch_2
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    if-eqz v5, :cond_d

    .line 596
    sget-object v5, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWBoxView:Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->setBoxInputMode(I)V

    .line 598
    :cond_d
    const/4 v3, 0x4

    .line 599
    if-ne v0, v9, :cond_e

    .line 600
    const/4 v3, 0x4

    .line 601
    const-string v2, "ko"

    goto :goto_1

    .line 602
    :cond_e
    if-ne v0, v8, :cond_f

    .line 603
    const/4 v3, 0x4

    .line 604
    const-string v2, "en"

    goto :goto_1

    .line 605
    :cond_f
    if-ne v0, v11, :cond_10

    .line 606
    const/4 v3, 0x4

    .line 607
    const-string v2, "zh_HK"

    goto :goto_1

    .line 608
    :cond_10
    if-ne v0, v10, :cond_11

    .line 609
    const/4 v3, 0x4

    .line 610
    const-string v2, "zh_TW"

    goto :goto_1

    .line 612
    :cond_11
    const/4 v3, 0x4

    .line 613
    const-string v2, "zh_CN"

    .line 615
    goto :goto_1

    .line 617
    :sswitch_3
    const/16 v3, 0x2000

    .line 618
    const-string v2, "zh_CN"

    .line 619
    goto :goto_1

    .line 621
    :sswitch_4
    if-ne v0, v9, :cond_12

    .line 622
    const/16 v3, 0x10

    .line 623
    const-string v2, "ko"

    goto :goto_1

    .line 624
    :cond_12
    if-ne v0, v8, :cond_13

    .line 625
    const/16 v3, 0x10

    .line 626
    const-string v2, "en"

    goto :goto_1

    .line 628
    :cond_13
    const/16 v3, 0x78

    .line 629
    const-string v2, "zh_CN"

    .line 631
    goto/16 :goto_1

    .line 633
    :sswitch_5
    if-ne v0, v9, :cond_14

    .line 634
    const/16 v3, 0x400

    .line 635
    const-string v2, "ko"

    goto/16 :goto_1

    .line 636
    :cond_14
    if-ne v0, v8, :cond_15

    .line 637
    const/16 v3, 0xc3

    .line 638
    const-string v2, "en"

    goto/16 :goto_1

    .line 639
    :cond_15
    if-ne v0, v11, :cond_16

    .line 641
    const v3, 0xe600

    .line 642
    const-string v2, "zh_HK"

    goto/16 :goto_1

    .line 643
    :cond_16
    if-ne v0, v10, :cond_17

    .line 645
    const v3, 0xc600

    .line 646
    const-string v2, "zh_TW"

    goto/16 :goto_1

    .line 649
    :cond_17
    const/16 v3, 0x4600

    .line 650
    const-string v2, "zh_CN"

    .line 652
    goto/16 :goto_1

    .line 657
    :cond_18
    const/16 v3, 0x600

    .line 658
    const-string v2, "zh_CN"

    goto/16 :goto_1

    .line 554
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_3
        0x300 -> :sswitch_5
        0x400 -> :sswitch_2
        0x500 -> :sswitch_4
        0x600 -> :sswitch_1
    .end sparse-switch
.end method

.method public updateToken()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mWindow_HW:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->setToken(Landroid/os/IBinder;)V

    .line 152
    :cond_0
    return-void
.end method
