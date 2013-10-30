.class public Lcom/samsung/inputmethod/decoder/SimeDecManager;
.super Ljava/lang/Object;
.source "SimeDecManager.java"

# interfaces
.implements Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/decoder/SimeDecManager$SamsungDecoderServiceConnection;,
        Lcom/samsung/inputmethod/decoder/SimeDecManager$eventNotifier;,
        Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final MAX_CAND_NUM_FIRST:I = 0xc

.field private static final TAG:Ljava/lang/String; = "SimeDecManager"


# instance fields
.field public mActiveDecType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

.field private mAppComplectionDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAppComplection;

.field private mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

.field private mContactDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecContact;

.field private mEventNotifier:Lcom/samsung/inputmethod/decoder/SimeDecManager$eventNotifier;

.field private mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

.field private mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mMultiTabNumberInfo:Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;

.field private mSamsungDecoderServiceConnection:Lcom/samsung/inputmethod/decoder/SimeDecManager$SamsungDecoderServiceConnection;

.field private mSwiftKeyChnInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;

.field private mSwiftKeyEngInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;

.field private mSwiftKeyKorInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;

.field private mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

.field private mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

.field private mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

.field private mT9KorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 2
    .parameter "imeService"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eventNotifier;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager$eventNotifier;-><init>(Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mEventNotifier:Lcom/samsung/inputmethod/decoder/SimeDecManager$eventNotifier;

    .line 146
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 147
    sget-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->DEFDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mActiveDecType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    .line 149
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-direct {v0, p1, p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    .line 150
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecContact;

    invoke-direct {v0, p1, p0}, Lcom/samsung/inputmethod/decoder/SimeDecContact;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mContactDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecContact;

    .line 151
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecAppComplection;

    invoke-direct {v0, p1, p0}, Lcom/samsung/inputmethod/decoder/SimeDecAppComplection;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppComplectionDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAppComplection;

    .line 152
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;

    invoke-direct {v0, p1, p0}, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mMultiTabNumberInfo:Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;

    .line 154
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SWIFTKEY_ENGINE_FEATURE:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->startSwiftKeyService()Z

    .line 156
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;

    invoke-direct {v0, p1, p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyChnInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;

    .line 157
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;

    invoke-direct {v0, p1, p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyEngInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;

    .line 158
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;

    invoke-direct {v0, p1, p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyKorInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;

    .line 159
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setSwiftkeyService(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V

    .line 160
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setSwiftPredictDec(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V

    .line 169
    :goto_0
    invoke-direct {p0, p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setCandNotifier(Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;)V

    .line 170
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-direct {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 171
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mEventNotifier:Lcom/samsung/inputmethod/decoder/SimeDecManager$eventNotifier;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->addEventNotifier(Lcom/samsung/inputmethod/SimeEventNotifier;)V

    .line 172
    return-void

    .line 163
    :cond_0
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    invoke-direct {v0, p1, p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9KorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    .line 164
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-direct {v0, p1, p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    .line 165
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-direct {v0, p1, p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    .line 166
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->startSamsungDecoderService()Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/decoder/SimeDecManager;)Lcom/samsung/inputmethod/SamsungIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/decoder/SimeDecManager;)Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/decoder/SimeDecManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->storeUDB()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->destroy()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/decoder/SimeDecManager;Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->notifyServiceConnected(Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;)V

    return-void
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 663
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SWIFTKEY_ENGINE_FEATURE:Z

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->destroy()V

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSamsungDecoderServiceConnection:Lcom/samsung/inputmethod/decoder/SimeDecManager$SamsungDecoderServiceConnection;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSamsungDecoderServiceConnection:Lcom/samsung/inputmethod/decoder/SimeDecManager$SamsungDecoderServiceConnection;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method

.method private notifyServiceConnected(Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;)V
    .locals 0
    .parameter "server"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setISamsungDecoderService(Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setXT9PredictDec(Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;)V

    .line 178
    return-void
.end method

.method private processContactDecoding(Ljava/lang/String;)I
    .locals 3
    .parameter "inputSpell"

    .prologue
    const/4 v1, -0x1

    return v1

    const/4 v0, 0x0

    .line 608
    .local v0, ret:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 609
    :cond_0
    const/4 v1, -0x1

    .line 619
    :goto_0
    return v1

    .line 611
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mContactDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecContact;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/decoder/SimeDecContact;->setComposingStr(Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mContactDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecContact;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecContact;->decoding()I

    move-result v1

    if-nez v1, :cond_2

    .line 613
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mContactDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecContact;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecContact;->getAllCandidates()I

    :goto_1
    move v1, v0

    .line 619
    goto :goto_0

    .line 616
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mContactDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecContact;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/decoder/SimeDecContact;->setComposingStr(Ljava/lang/String;)V

    .line 617
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private setCandNotifier(Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;)V
    .locals 1
    .parameter "notifier"

    .prologue
    .line 182
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SWIFTKEY_ENGINE_FEATURE:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyChnInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->setGetCandNotifier(Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;)V

    .line 184
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyEngInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->setGetCandNotifier(Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyKorInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->setGetCandNotifier(Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;)V

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->setGetCandNotifier(Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mContactDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecContact;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecContact;->setGetCandNotifier(Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;)V

    .line 195
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppComplectionDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAppComplection;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecAppComplection;->setGetCandNotifier(Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mMultiTabNumberInfo:Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->setGetCandNotifier(Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;)V

    .line 198
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9KorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->setGetCandNotifier(Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->setGetCandNotifier(Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->setGetCandNotifier(Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;)V

    goto :goto_0
.end method

.method private setISamsungDecoderService(Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;)V
    .locals 1
    .parameter "server"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    .line 202
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9KorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->setDecoderService(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->setDecoderService(Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->setDecoderService(Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method private setSwiftPredictDec(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V
    .locals 2
    .parameter "server"

    .prologue
    .line 227
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;

    invoke-direct {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;-><init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V

    .line 229
    .local v0, swiftPredict:Lcom/samsung/inputmethod/decoder/SimeDecSwiftPredictImpl;
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyChnInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->setPredict(Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;)V

    .line 230
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyEngInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->setPredict(Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;)V

    .line 231
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyKorInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->setPredict(Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;)V

    .line 233
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->setPredict(Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;)V

    .line 234
    return-void
.end method

.method private setSwiftkeyService(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V
    .locals 1
    .parameter "server"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    .line 210
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyChnInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->setDecoderService(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyEngInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->setDecoderService(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyKorInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->setDecoderService(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method private setXT9PredictDec(Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;)V
    .locals 2
    .parameter "server"

    .prologue
    .line 217
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;

    invoke-direct {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;-><init>(Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;)V

    .line 219
    .local v0, xt9Predict:Lcom/samsung/inputmethod/decoder/SimeDecXT9PredictImpl;
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9KorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->setPredict(Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;)V

    .line 220
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->setPredict(Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;)V

    .line 221
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->setPredict(Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;)V

    .line 222
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->setPredict(Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;)V

    .line 223
    return-void
.end method

.method private startSamsungDecoderService()Z
    .locals 5

    .prologue
    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    if-nez v2, :cond_1

    .line 764
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 765
    .local v1, serviceIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const-class v3, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 767
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSamsungDecoderServiceConnection:Lcom/samsung/inputmethod/decoder/SimeDecManager$SamsungDecoderServiceConnection;

    if-nez v2, :cond_0

    .line 768
    new-instance v2, Lcom/samsung/inputmethod/decoder/SimeDecManager$SamsungDecoderServiceConnection;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager$SamsungDecoderServiceConnection;-><init>(Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSamsungDecoderServiceConnection:Lcom/samsung/inputmethod/decoder/SimeDecManager$SamsungDecoderServiceConnection;

    .line 772
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSamsungDecoderServiceConnection:Lcom/samsung/inputmethod/decoder/SimeDecManager$SamsungDecoderServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 774
    const/4 v0, 0x1

    .line 779
    .end local v1           #serviceIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return v0

    .line 776
    .restart local v1       #serviceIntent:Landroid/content/Intent;
    :cond_2
    const-string v2, "SimeDecManager"

    const-string v3, "IME bind service fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startSwiftKeyService()Z
    .locals 2

    .prologue
    .line 684
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    if-nez v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, path:Ljava/lang/String;
    new-instance v1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-direct {v1, v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    .line 690
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private storeUDB()Z
    .locals 7

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 630
    .local v0, bRet:Z
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SWIFTKEY_ENGINE_FEATURE:Z

    if-eqz v5, :cond_2

    .line 632
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    if-eqz v5, :cond_1

    .line 633
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 634
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v4, 0x0

    .line 635
    .local v4, text:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 636
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 637
    .local v2, et:Landroid/view/inputmethod/ExtractedText;
    if-eqz v2, :cond_0

    .line 638
    iget-object v5, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 641
    .end local v2           #et:Landroid/view/inputmethod/ExtractedText;
    :cond_0
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->onInputFinished(Ljava/lang/String;)V

    .line 658
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v4           #text:Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 645
    :cond_2
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    if-eqz v5, :cond_1

    .line 648
    :try_start_0
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v5}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9StoreUdb()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    const/4 v0, 0x1

    goto :goto_0

    .line 651
    :catch_0
    move-exception v1

    .line 652
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "SimeDecManager"

    const-string v6, "enable component  failed..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addNumData(Ljava/lang/String;)V
    .locals 1
    .parameter "numVal"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mMultiTabNumberInfo:Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->addNumData(Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public candidatesFromApp()Z
    .locals 2

    .prologue
    .line 623
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public chooseAppCompletionCand(I)Z
    .locals 4
    .parameter "candIdx"

    .prologue
    .line 511
    const/4 v0, 0x0

    .line 513
    .local v0, bRet:Z
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v3, :cond_0

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v3, v3

    if-ge p1, v3, :cond_0

    .line 515
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v1, v3, p1

    .line 516
    .local v1, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v1, :cond_0

    .line 517
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 518
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v2, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 519
    const/4 v0, 0x1

    .line 522
    .end local v1           #ci:Landroid/view/inputmethod/CompletionInfo;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_0
    return v0
.end method

.method public chooseCandidate(I)I
    .locals 4
    .parameter "gIndex"

    .prologue
    .line 487
    const/4 v1, 0x1

    .line 493
    .local v1, retStatus:I
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDecoderCandNode(I)Lcom/samsung/inputmethod/decoder/SimeDecCandNode;

    move-result-object v0

    .line 496
    .local v0, listContent:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    if-eqz v0, :cond_0

    .line 497
    iget-object v2, v0, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->mDecoder:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    iget v3, v0, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->index:I

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->chooseCandidate(I)I

    .line 499
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->preparePredictions()I

    .line 500
    const/4 v1, 0x0

    .line 502
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetMultiTabNumberInfo()V

    .line 505
    .end local v0           #listContent:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    :cond_0
    return v1
.end method

.method public commitContactDialogData(I)V
    .locals 1
    .parameter "which"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mContactDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecContact;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecContact;->commitContactDialogData(I)V

    .line 745
    return-void
.end method

.method public configDecorder()V
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->configfeature()Z

    .line 402
    return-void
.end method

.method public decoding()I
    .locals 4

    .prologue
    .line 526
    const/4 v1, 0x1

    .line 530
    .local v1, retStatus:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    .line 531
    .local v0, activeDecoder:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->decoding()I

    move-result v1

    .line 533
    if-nez v1, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetCommonCandidates()V

    .line 535
    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->getPartCandidates(IZ)I

    .line 537
    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->processContactDecoding(Ljava/lang/String;)I

    .line 540
    :cond_0
    return v1
.end method

.method public delUdbPhrase(I)Z
    .locals 3
    .parameter "gIndex"

    .prologue
    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, bRet:Z
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCandDeletable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDecoderCandNode(I)Lcom/samsung/inputmethod/decoder/SimeDecCandNode;

    move-result-object v2

    iget v2, v2, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->index:I

    sub-int v1, p1, v2

    .line 697
    .local v1, delUdbIdx:I
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDecoderCandNode(I)Lcom/samsung/inputmethod/decoder/SimeDecCandNode;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->mDecoder:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->delUdbPhrase(I)Z

    .line 698
    const/4 v0, 0x1

    .line 700
    .end local v1           #delUdbIdx:I
    :cond_0
    return v0
.end method

.method public getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    .locals 2

    .prologue
    .line 337
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mMultiTabNumberInfo:Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->isNumInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getMultiTabNumDec()Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;

    move-result-object v0

    .line 356
    .local v0, mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    :goto_0
    return-object v0

    .line 340
    .end local v0           #mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionEnglish()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v0

    .restart local v0       #mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    goto :goto_0

    .line 343
    .end local v0           #mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Korean()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKorean()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 346
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v0

    .restart local v0       #mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    goto :goto_0

    .line 347
    .end local v0           #mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v1

    if-nez v1, :cond_4

    .line 349
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v0

    .restart local v0       #mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    goto :goto_0

    .line 353
    .end local v0           #mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    .restart local v0       #mActiveDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    goto :goto_0
.end method

.method public getActiveDecType()Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionEnglish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    sget-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9AWINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mActiveDecType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mActiveDecType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    return-object v0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Korean()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKorean()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    :cond_1
    sget-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9KORDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mActiveDecType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    goto :goto_0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    if-nez v0, :cond_3

    .line 370
    sget-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9DECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mActiveDecType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    goto :goto_0

    .line 374
    :cond_3
    sget-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->HWDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mActiveDecType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    goto :goto_0
.end method

.method public getAllCandidates()I
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->getAllCandidates()I

    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public getAppCompletions()[Landroid/view/inputmethod/CompletionInfo;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    return-object v0
.end method

.method public getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;
    .locals 1

    .prologue
    .line 300
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SWIFTKEY_ENGINE_FEATURE:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyChnInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;

    .line 303
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    goto :goto_0
.end method

.method public getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    return-object v0
.end method

.method public getContactData()[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mContactDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecContact;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecContact;->getContactData()[Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;

    move-result-object v0

    return-object v0
.end method

.method public getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;
    .locals 1

    .prologue
    .line 307
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SWIFTKEY_ENGINE_FEATURE:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyEngInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;

    .line 310
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    goto :goto_0
.end method

.method public getHWDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    return-object v0
.end method

.method public getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;
    .locals 1

    .prologue
    .line 314
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SWIFTKEY_ENGINE_FEATURE:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyKorInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;

    .line 317
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9KorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    goto :goto_0
.end method

.method public getMoreCandidate(I)I
    .locals 2
    .parameter "num"

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->getPartCandidates(IZ)I

    .line 449
    const/4 v0, 0x1

    return v0
.end method

.method public getMultiTabNumDec()Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mMultiTabNumberInfo:Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;

    return-object v0
.end method

.method public getNumData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mMultiTabNumberInfo:Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->getNumData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handwritePinyinDecode(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "spelling"
    .parameter "update"

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->reset()V

    .line 284
    if-nez p1, :cond_0

    .line 294
    :goto_0
    return v1

    .line 286
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 289
    if-eqz p2, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    .line 286
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->decoding()I

    goto :goto_2

    .line 294
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCandContact(I)Z
    .locals 2
    .parameter "gIndex"

    .prologue
    .line 753
    const/4 v0, 0x0

    .line 754
    .local v0, bRet:Z
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDetailInfo(I)Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->isContectTypeContact()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    const/4 v0, 0x1

    .line 758
    :cond_0
    return v0
.end method

.method public isCandDeletable(I)Z
    .locals 3
    .parameter "gIndex"

    .prologue
    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, bRet:Z
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDetailInfo(I)Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->isContentTypeUDB()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDecoderCandNode(I)Lcom/samsung/inputmethod/decoder/SimeDecCandNode;

    move-result-object v1

    .line 708
    .local v1, listContent:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->mDecoder:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->isWordDeleteSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 709
    const/4 v0, 0x1

    .line 712
    .end local v1           #listContent:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    :cond_0
    return v0
.end method

.method public isCandFetchOver()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->isCandFetchOver()Z

    move-result v0

    return v0
.end method

.method public isCommonCandidatesListEmpty()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->isCandidatesListEmpty()Z

    move-result v0

    return v0
.end method

.method public isNumInputCannotToggle()Z
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mMultiTabNumberInfo:Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->isNumInputCannotToggle()Z

    move-result v0

    return v0
.end method

.method public isNumInputMode()Z
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mMultiTabNumberInfo:Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->isNumInputMode()Z

    move-result v0

    return v0
.end method

.method public onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I
    .locals 4
    .parameter "msgID"
    .parameter "data"
    .parameter "where"

    .prologue
    .line 563
    packed-switch p1, :pswitch_data_0

    .line 586
    .end local p2
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 565
    .restart local p2
    :pswitch_0
    if-eqz p2, :cond_1

    instance-of v2, p2, Ljava/util/List;

    if-eqz v2, :cond_1

    move-object v1, p2

    .line 566
    check-cast v1, Ljava/util/List;

    .line 567
    .local v1, candList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p3, v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->addDecoderCands(Lcom/samsung/inputmethod/decoder/SimeDecAbstract;Ljava/util/List;)V

    .line 569
    .end local v1           #candList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setCandFetchOver(Z)V

    goto :goto_0

    .line 572
    :pswitch_1
    if-eqz p2, :cond_0

    instance-of v2, p2, Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 573
    check-cast v1, Ljava/util/List;

    .line 574
    .restart local v1       #candList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p3, v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->addDecoderCands(Lcom/samsung/inputmethod/decoder/SimeDecAbstract;Ljava/util/List;)V

    goto :goto_0

    .line 578
    .end local v1           #candList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    :pswitch_2
    if-eqz p2, :cond_0

    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 579
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 580
    .local v0, activeIdx:I
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p3, v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setDefaultActiveIndex(Lcom/samsung/inputmethod/decoder/SimeDecAbstract;I)Z

    goto :goto_0

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public prepareAppCompletions([Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 11
    .parameter "completions"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 410
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 412
    .local v5, mList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    if-eqz p1, :cond_0

    array-length v7, p1

    if-gtz v7, :cond_1

    :cond_0
    move v7, v8

    .line 442
    :goto_0
    return v7

    .line 414
    :cond_1
    const/4 v3, 0x0

    .line 415
    .local v3, j:I
    invoke-virtual {p1}, [Landroid/view/inputmethod/CompletionInfo;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/view/inputmethod/CompletionInfo;

    iput-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 416
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v7, v7

    if-ge v2, v7, :cond_3

    .line 417
    aget-object v1, p1, v2

    .line 418
    .local v1, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v1, :cond_2

    .line 419
    invoke-virtual {v1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 420
    .local v6, s:Ljava/lang/CharSequence;
    if-eqz v6, :cond_2

    .line 421
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-direct {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>()V

    .line 422
    .local v0, candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->setContentType(I)V

    .line 423
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->setContent(Ljava/lang/String;)V

    .line 424
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    iget-object v10, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v10, v10, v2

    aput-object v10, v7, v3

    move v3, v4

    .line 416
    .end local v0           #candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    .end local v4           #j:I
    .end local v6           #s:Ljava/lang/CharSequence;
    .restart local v3       #j:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 429
    .end local v1           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_3
    move v2, v3

    :goto_2
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v7, v7

    if-ge v2, v7, :cond_4

    .line 430
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppCompletions:[Landroid/view/inputmethod/CompletionInfo;

    const/4 v10, 0x0

    aput-object v10, v7, v2

    .line 429
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 433
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetCommonCandidates()V

    .line 434
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget-object v10, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mAppComplectionDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecAppComplection;

    invoke-virtual {v7, v10, v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->addDecoderCands(Lcom/samsung/inputmethod/decoder/SimeDecAbstract;Ljava/util/List;)V

    .line 435
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v7, v9}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setCandidatesFromApp(Z)V

    .line 436
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v7, v9}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setCandFetchOver(Z)V

    .line 439
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v7

    if-gtz v7, :cond_5

    move v7, v8

    .line 440
    goto :goto_0

    :cond_5
    move v7, v9

    .line 442
    goto :goto_0
.end method

.method public preparePredictions()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 468
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    .line 469
    .local v0, activeDecoder:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetCommonCandidates()V

    .line 470
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_1

    .line 471
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 472
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 473
    const/16 v3, 0x96

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 474
    .local v1, cs:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->preparePredicts(Ljava/lang/CharSequence;)V

    .line 481
    .end local v1           #cs:Ljava/lang/CharSequence;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return v5

    .line 479
    :cond_1
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v5}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->getPartCandidates(IZ)I

    goto :goto_0
.end method

.method public processBackspace()V
    .locals 3

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    .line 548
    .local v0, activeDecoder:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
    if-nez v0, :cond_0

    .line 558
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->processBackspace()I

    .line 552
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetCommonCandidates()V

    .line 554
    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->getPartCandidates(IZ)I

    .line 557
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->processContactDecoding(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reLoadSwiftKeyLanguage()V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->reLoadLanguage()V

    .line 680
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 256
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SWIFTKEY_ENGINE_FEATURE:Z

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyChnInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->reset()V

    .line 261
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyEngInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->reset()V

    .line 262
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyKorInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->reset()V

    .line 273
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->reset()V

    .line 274
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mContactDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecContact;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecContact;->reset()V

    .line 275
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mMultiTabNumberInfo:Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->reset()V

    .line 276
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetCommonCandidates()V

    .line 277
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9KorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->reset()V

    .line 269
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->reset()V

    .line 270
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->reset()V

    goto :goto_0
.end method

.method public resetCommonCandidates()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mCommonCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->reset()V

    .line 387
    return-void
.end method

.method public resetMultiTabNumberInfo()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mMultiTabNumberInfo:Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->reset()V

    .line 741
    return-void
.end method

.method public setActivePrefixSuffix(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v0

    .line 595
    .local v0, chnDecoder:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;
    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->setActivePrefixSuffix(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetCommonCandidates()V

    .line 597
    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->getPartCandidates(IZ)I

    .line 598
    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->processContactDecoding(Ljava/lang/String;)I

    .line 601
    :cond_0
    return-void
.end method

.method public setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 1
    .parameter "inputModeSwitcher"

    .prologue
    .line 239
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SWIFTKEY_ENGINE_FEATURE:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyChnInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyEngInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mSwiftKeyKorInfo:Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mHWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 252
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 253
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9KorDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 247
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9DecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 248
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecXT9English;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    goto :goto_0
.end method

.method public setNumInputCannotToggle(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mMultiTabNumberInfo:Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->setNumInputCannotToggle(Z)V

    .line 733
    return-void
.end method

.method public setNumInputMode(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mMultiTabNumberInfo:Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->setNumInputMode(Z)V

    .line 729
    return-void
.end method

.method public stopGetCandidate()I
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->stopGetCandidates()I

    .line 462
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mContactDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecContact;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager;->mContactDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecContact;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecContact;->stopGetCandidates()I

    .line 464
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
