.class public Lcom/samsung/commonimsservice/SamsungAPCommonService;
.super Ljava/lang/Object;
.source "SamsungAPCommonService.java"

# interfaces
.implements Lcom/samsung/commonimsservice/ICommonIMSService;


# static fields
.field private static final DBG:Z = true

.field private static final IMS_CALL_END_CALL_NW_HANDOVER:I = 0x4

.field private static final IMS_CALL_END_CALL_NW_SRVCC:I = 0x8

.field public static final IMS_CALL_LOW_BATTERY:I = 0x6

.field private static final IMS_CALL_NORMAL_DISCONNECT:I = 0x5

.field public static final IMS_CONN_ACTION:Ljava/lang/String; = "com.sec.android.ims.IMSService"

.field private static final IMS_SVC_USER_REJECT_REASON_USR_BUSY:I = 0x2

.field private static final IMS_SVC_USER_REJECT_REASON_USR_DECLINE:I = 0x3

.field public static final IMS_USER_REJECT_REASON_USR_BUSY_CS_CALL:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungAPCommonService"

.field private static final MMTELSVCHDL:I = 0x0

.field private static final MSG_IMS_SERVICE_CONNECTED:I = 0x65

.field private static final MSG_IMS_SERVICE_DISCONNECTED:I = 0x66

.field private static final SIPURI_TYPE:Ljava/lang/String; = "0"

.field private static final SIPURI_VAL:I = 0x1

.field private static final SMS_SIP_SIPURI_PREFIX:Ljava/lang/String; = "sipuriprefix"

.field private static final SMS_SIP_URI_TYPE:Ljava/lang/String; = "uritype"

.field private static final TELURI_TYPE:Ljava/lang/String; = "1"

.field private static final TELURI_VAL:I = 0x3

.field private static final VDBG:Z


# instance fields
.field private H:Landroid/os/Handler;

.field private isSpeakerOn:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mIMSCallStateListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/commonimsservice/IIMSCallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIMSRegListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/commonimsservice/IIMSRegisterStateListener;",
            ">;"
        }
    .end annotation
.end field

.field mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

.field private mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

.field private mMuted:Z

.field private final mServiceConnectionListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/commonimsservice/IImsServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private params:Lcom/samsung/commonimsservice/ImsParams;

.field private regExpiry:I

.field private regUri:Ljava/lang/String;

.field private registrationStatus:Z

.field private serviceConnStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z

    .line 67
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->isSpeakerOn:Z

    .line 68
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mMuted:Z

    .line 69
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regExpiry:I

    .line 73
    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regUri:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {v0}, Lcom/samsung/commonimsservice/ImsParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 79
    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    .line 93
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    .line 100
    new-instance v0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;

    invoke-direct {v0, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->H:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;

    invoke-direct {v0, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mConnection:Landroid/content/ServiceConnection;

    .line 182
    new-instance v0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;

    invoke-direct {v0, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    .line 114
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    .line 115
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    .line 116
    invoke-direct {p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->createSipService()V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->onImsServiceConnected()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->onImsServiceDisconnected()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/commonimsservice/SamsungAPCommonService;IILcom/sec/android/internal/ims/IIMSParams;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(IILcom/sec/android/internal/ims/IIMSParams;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regExpiry:I

    return p1
.end method

.method static synthetic access$1202(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->onBadRequest(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/commonimsservice/SamsungAPCommonService;Lcom/sec/android/internal/ims/IIMSService;)Lcom/sec/android/internal/ims/IIMSService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->VDBG:Z

    return v0
.end method

.method private createSipService()V
    .locals 4

    .prologue
    .line 120
    const-string v1, "SamsungAPCommonService"

    const-string v2, "Trying to connect to ims service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.ims.IMSService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 124
    return-void
.end method

.method private getCallMessageByteLength(Ljava/lang/String;)I
    .locals 5
    .parameter "pLetteringData"

    .prologue
    .line 2653
    const/4 v0, 0x0

    .line 2655
    .local v0, callMessageByteLength:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2657
    .local v1, callMessageLength:I
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v0, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2662
    :goto_1
    const/16 v3, 0x18

    if-gt v0, v3, :cond_0

    .line 2667
    return v0

    .line 2658
    :catch_0
    move-exception v2

    .line 2659
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2665
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2666
    goto :goto_0
.end method

.method private getCallType(II)I
    .locals 5
    .parameter "appType"
    .parameter "subType"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x6

    .line 2381
    const/4 v0, -0x1

    .line 2383
    .local v0, callType:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallType ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2385
    if-ne p1, v4, :cond_6

    .line 2386
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 2387
    const/4 v0, 0x5

    .line 2405
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallType ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2407
    return v0

    .line 2388
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 2389
    const/4 v0, 0x2

    goto :goto_0

    .line 2390
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 2391
    const/4 v0, 0x1

    goto :goto_0

    .line 2392
    :cond_3
    if-ne p2, v3, :cond_4

    .line 2393
    const/4 v0, 0x7

    goto :goto_0

    .line 2394
    :cond_4
    if-ne p2, v4, :cond_5

    .line 2395
    const/16 v0, 0x8

    goto :goto_0

    .line 2396
    :cond_5
    const/16 v1, 0x9

    if-ne p2, v1, :cond_0

    .line 2397
    const/16 v0, 0x9

    goto :goto_0

    .line 2399
    :cond_6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_7

    .line 2400
    const/4 v0, 0x2

    goto :goto_0

    .line 2401
    :cond_7
    if-ne p1, v3, :cond_0

    .line 2402
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getCallType(IILcom/sec/android/internal/ims/IIMSParams;)I
    .locals 6
    .parameter "appType"
    .parameter "subType"
    .parameter "param"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x6

    .line 2412
    const/4 v0, -0x1

    .line 2414
    .local v0, callType:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallType param api ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2416
    if-ne p1, v5, :cond_8

    .line 2417
    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    .line 2418
    const/4 v1, 0x0

    .line 2420
    .local v1, isConfCall:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 2421
    invoke-virtual {p3}, Lcom/sec/android/internal/ims/IIMSParams;->getIsConferenceCall()Ljava/lang/String;

    move-result-object v1

    .line 2423
    :cond_0
    if-eqz v1, :cond_2

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2424
    const-string v2, "SamsungAPCommonService"

    const-string v3, "getCallType Convert to video conference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    const/4 v0, 0x7

    .line 2446
    .end local v1           #isConfCall:Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallType param api["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2448
    return v0

    .line 2427
    .restart local v1       #isConfCall:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 2429
    .end local v1           #isConfCall:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    .line 2430
    const/4 v0, 0x2

    goto :goto_0

    .line 2431
    :cond_4
    const/4 v2, 0x1

    if-ne p2, v2, :cond_5

    .line 2432
    const/4 v0, 0x1

    goto :goto_0

    .line 2433
    :cond_5
    if-ne p2, v4, :cond_6

    .line 2434
    const/4 v0, 0x7

    goto :goto_0

    .line 2435
    :cond_6
    if-ne p2, v5, :cond_7

    .line 2436
    const/16 v0, 0x8

    goto :goto_0

    .line 2437
    :cond_7
    const/16 v2, 0x9

    if-ne p2, v2, :cond_1

    .line 2438
    const/16 v0, 0x9

    goto :goto_0

    .line 2440
    :cond_8
    const/4 v2, 0x4

    if-ne p1, v2, :cond_9

    .line 2441
    const/4 v0, 0x2

    goto :goto_0

    .line 2442
    :cond_9
    if-ne p1, v4, :cond_1

    .line 2443
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getDeviceSpeakerStatus()Z
    .locals 2

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method private isSpeakerOn()Z
    .locals 2

    .prologue
    .line 2365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside isSpeakerOn  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->isSpeakerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2367
    iget-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->isSpeakerOn:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 142
    const-string v0, "SamsungAPCommonService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method private notifyConnectionListeners(Z)V
    .locals 3
    .parameter "isConnected"

    .prologue
    .line 169
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 170
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;

    .line 171
    .local v1, listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    if-eqz v1, :cond_0

    .line 172
    iput-boolean p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z

    .line 173
    if-eqz p1, :cond_1

    .line 174
    invoke-interface {v1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onConnected()V

    .line 169
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    invoke-interface {v1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onDisconnected()V

    goto :goto_1

    .line 180
    .end local v1           #listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    :cond_2
    return-void
.end method

.method private onBadRequest(I)V
    .locals 4
    .parameter "sessionID"

    .prologue
    .line 2356
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2357
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 2358
    .local v1, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v1, :cond_0

    .line 2359
    const/16 v2, 0x190

    const-string v3, "Bad Request"

    invoke-interface {v1, p1, v2, v3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 2356
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2362
    .end local v1           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_1
    return-void
.end method

.method private onCaptureSuccess(ZLjava/lang/String;)V
    .locals 6
    .parameter "isForNearEnd"
    .parameter "filename"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside onCaptureSuccess() : nearEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; filename="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1404
    if-nez p2, :cond_0

    .line 1423
    :goto_0
    return-void

    .line 1407
    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    .line 1408
    .local v1, path:[Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    .line 1410
    .local v0, mimetype:[Ljava/lang/String;
    aput-object p2, v1, v4

    .line 1411
    if-eqz p1, :cond_1

    .line 1412
    const-string v2, "videocallimages/jpeg"

    aput-object v2, v0, v4

    .line 1417
    :goto_1
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/commonimsservice/SamsungAPCommonService$4;

    invoke-direct {v3, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$4;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    invoke-static {v2, v1, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0

    .line 1414
    :cond_1
    const-string v2, "videocallimages/jpeg-scramble"

    aput-object v2, v0, v4

    goto :goto_1
.end method

.method private onImsServiceConnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 149
    const-string v1, "NULL IMS service received!!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 150
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V

    .line 161
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    iget-object v2, v2, Lcom/sec/android/ims/IMSEventListener;->callback:Lcom/sec/android/internal/ims/IIMSEventListener;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/internal/ims/IIMSService;->registerListener(Lcom/sec/android/internal/ims/IIMSEventListener;I)V

    .line 153
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS event listener registration failed!!! with exception e - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    .line 159
    invoke-direct {p0, v4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V

    goto :goto_0
.end method

.method private onImsServiceDisconnected()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V

    .line 166
    return-void
.end method

.method private setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;
    .locals 5
    .parameter "params"
    .parameter "peerUri"

    .prologue
    .line 2017
    const-string v3, "\\$"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2018
    .local v2, sCallerNos:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 2019
    array-length v1, v2

    .line 2020
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-gt v0, v3, :cond_0

    .line 2021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Individual Uris"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2022
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {p1, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2024
    :cond_0
    const-string v3, "UriCount"

    invoke-virtual {p1, v3, v1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2025
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Individual Uris"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2029
    .end local v0           #i:I
    .end local v1           #n:I
    :goto_1
    return-object p1

    .line 2027
    :cond_1
    const-string v3, "setUriListForConference returned failure"

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateMuteState(Z)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 2375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating mute state to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2376
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 2377
    iput-boolean p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mMuted:Z

    .line 2378
    return-void
.end method


# virtual methods
.method public acceptChangeRequest(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1758
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1759
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot accept change request R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1762
    :cond_0
    const/4 v0, -0x1

    .line 1763
    .local v0, callId:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1764
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "Type"

    const-string v4, "accept"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xf

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    return-void

    .line 1768
    :catch_0
    move-exception v1

    .line 1769
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Accept change request failed R[Service is not up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addUserForConferenceCall(ILjava/lang/String;I)I
    .locals 9
    .parameter "sessionID"
    .parameter "peerUri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1827
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v5, :cond_0

    .line 1828
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v6, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1830
    :cond_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sipuriprefix"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1831
    .local v4, uriPrefix:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "uritype"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1832
    .local v0, dialType:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 1833
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot make call R[invalid URI ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1835
    :cond_1
    const/4 v3, -0x1

    .line 1836
    .local v3, sessid:I
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1838
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1839
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1840
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1841
    const/4 v1, 0x1

    .line 1842
    .local v1, dialTypeVal:I
    if-eqz v0, :cond_3

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1843
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1844
    const/4 v1, 0x3

    .line 1851
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DialType ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] DialTypeVal ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1852
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriType"

    invoke-virtual {v5, v6, v1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1854
    if-eqz v4, :cond_4

    .line 1855
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    :goto_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {p0, v5, p2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 1864
    :try_start_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v6, 0x15

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v8}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, p1, v8}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1868
    return v3

    .line 1846
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1849
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 1857
    :cond_4
    const-string v5, "UriPrefix is NULL"

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1858
    const-string v4, "Sip"

    .line 1859
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1865
    :catch_0
    move-exception v2

    .line 1866
    .local v2, e:Landroid/os/RemoteException;
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v6, "Cannot make call R[Service Not Up]"

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public addUserForNWayConferenceCall(ILjava/lang/String;III)I
    .locals 12
    .parameter "sessionID"
    .parameter "peerUri"
    .parameter "type"
    .parameter "noOfExsistingParticipents"
    .parameter "heldCallSessionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1872
    const-string v1, "addUserForNWayConferenceCall"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1873
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1874
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1876
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sipuriprefix"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1877
    .local v11, uriPrefix:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "uritype"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1878
    .local v7, dialType:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 1879
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot make call R[invalid URI ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1881
    :cond_1
    const/4 v10, -0x1

    .line 1882
    .local v10, sessid:I
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v1}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1884
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v1}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1885
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "AppType"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1886
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "CallType"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1889
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "NumExitingParticipents"

    move/from16 v0, p4

    invoke-virtual {v1, v2, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1890
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "HeldCallSessionId"

    move/from16 v0, p5

    invoke-virtual {v1, v2, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1895
    const/4 v8, 0x1

    .line 1896
    .local v8, dialTypeVal:I
    if-eqz v7, :cond_3

    const-string v1, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1897
    const-string v1, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1898
    const/4 v8, 0x3

    .line 1905
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialType ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] DialTypeVal ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1906
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "RmtUriType"

    invoke-virtual {v1, v2, v8}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1908
    if-eqz v11, :cond_4

    .line 1909
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "RmtUriPrefix"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    :goto_1
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {p0, v1, p2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 1919
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v2, 0x17

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v4}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;Z)I

    move-result v10

    .line 1920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conf sessid ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1924
    return v10

    .line 1900
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 1903
    :cond_3
    const/4 v8, 0x1

    goto :goto_0

    .line 1911
    :cond_4
    const-string v1, "UriPrefix is NULL"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1912
    const-string v11, "Sip"

    .line 1913
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "RmtUriPrefix"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1921
    :catch_0
    move-exception v9

    .line 1922
    .local v9, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot make call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public answerCall(I)V
    .locals 5
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1493
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1494
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1497
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v1}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1498
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "eVVFtrType"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1501
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v4}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1506
    return-void

    .line 1503
    :catch_0
    move-exception v0

    .line 1504
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public answerCallAudioOnly(I)V
    .locals 5
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1477
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1478
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call audio only R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1481
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v1}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1482
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "eVVFtrType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1484
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v4}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    return-void

    .line 1486
    :catch_0
    move-exception v0

    .line 1487
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cancelCall(II)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2242
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2243
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot cancel call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2246
    :cond_0
    const/4 v0, -0x1

    .line 2248
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 2249
    const/4 v0, 0x2

    .line 2257
    :goto_0
    const/4 v2, -0x1

    .line 2258
    .local v2, svcRet:I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2262
    return-void

    .line 2250
    .end local v2           #svcRet:I
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 2251
    const/4 v0, 0x1

    goto :goto_0

    .line 2253
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 2259
    .restart local v2       #svcRet:I
    :catch_0
    move-exception v1

    .line 2260
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t end the call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public captureSurfaceImage(ZI)V
    .locals 3
    .parameter "isNearEnd"
    .parameter "onGoingCallType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2558
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2559
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot captureSurfaceEndImage"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2563
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/internal/ims/IIMSService;->captureSurfaceImage(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2567
    return-void

    .line 2564
    :catch_0
    move-exception v0

    .line 2565
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot captureSurfaceEndImage"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public changeCall(III)V
    .locals 4
    .parameter "sessionID"
    .parameter "currentType"
    .parameter "newType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 2337
    if-ne p3, v3, :cond_2

    .line 2338
    if-eq p2, v0, :cond_0

    if-eq p2, v1, :cond_0

    if-ne p2, v2, :cond_1

    .line 2340
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->downgradeCall(III)V

    .line 2353
    :cond_1
    :goto_0
    return-void

    .line 2341
    :cond_2
    if-eq p3, v1, :cond_3

    if-ne p3, v2, :cond_5

    .line 2342
    :cond_3
    if-ne p2, v0, :cond_4

    .line 2343
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->downgradeCall(III)V

    goto :goto_0

    .line 2344
    :cond_4
    if-ne p2, v3, :cond_1

    .line 2345
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->upgradeCall(III)V

    goto :goto_0

    .line 2347
    :cond_5
    if-ne p3, v0, :cond_1

    .line 2348
    if-eq p2, v1, :cond_6

    if-eq p2, v2, :cond_6

    if-ne p2, v3, :cond_1

    .line 2350
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->upgradeCall(III)V

    goto :goto_0
.end method

.method public continueVideo(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1673
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1674
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot continue video R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1677
    :cond_0
    const/4 v1, -0x1

    .line 1678
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1679
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1682
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xe

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1687
    return-void

    .line 1684
    :catch_0
    move-exception v0

    .line 1685
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot continue call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deRegisterForCallStateListener(Lcom/samsung/commonimsservice/IIMSCallStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeRegistering for call state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2485
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing call state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2487
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2489
    :cond_0
    return-void
.end method

.method public deRegisterForRegStateListener(Lcom/samsung/commonimsservice/IIMSRegisterStateListener;)V
    .locals 2
    .parameter "regListener"

    .prologue
    .line 2492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeRegistering for register state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2493
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing register state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2495
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2497
    :cond_0
    return-void
.end method

.method public deRegisterForServiceConnectionListener(Lcom/samsung/commonimsservice/IImsServiceConnectionListener;)V
    .locals 2
    .parameter "connListener"

    .prologue
    .line 2500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeRegistering for connection state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2501
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing connection state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2503
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2505
    :cond_0
    return-void
.end method

.method public deinitSurface(Z)V
    .locals 3
    .parameter "isNearEnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2572
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2573
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot deinitSurface"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2577
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->deinitSurface(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2581
    return-void

    .line 2578
    :catch_0
    move-exception v0

    .line 2579
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot deinitSurface"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public downgradeCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "currentType"
    .parameter "newType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x5

    .line 2266
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2267
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2270
    :cond_0
    const/4 v2, -0x1

    .line 2271
    .local v2, svcId:I
    const/4 v0, -0x1

    .line 2272
    .local v0, appType:I
    if-ne p3, v5, :cond_1

    if-ne p2, v4, :cond_1

    .line 2273
    const/4 v0, 0x1

    .line 2284
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2285
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "appType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2287
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v4, 0xe

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2291
    return-void

    .line 2274
    :cond_1
    if-ne p3, v5, :cond_2

    if-ne p2, v6, :cond_2

    .line 2275
    const/4 v0, 0x3

    goto :goto_0

    .line 2276
    :cond_2
    if-ne p3, v6, :cond_3

    if-ne p2, v4, :cond_3

    .line 2277
    const/4 v0, 0x4

    goto :goto_0

    .line 2278
    :cond_3
    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    if-ne p2, v4, :cond_4

    .line 2279
    const/4 v0, 0x4

    goto :goto_0

    .line 2281
    :cond_4
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Down grade is not allowed"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2288
    :catch_0
    move-exception v1

    .line 2289
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public endCall(II)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2216
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2217
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot end call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2220
    :cond_0
    const/4 v0, -0x1

    .line 2222
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 2223
    const/4 v0, 0x2

    .line 2230
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2231
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eDisconnectRsn"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2234
    const/4 v2, -0x1

    .line 2235
    .local v2, svcRet:I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2239
    return-void

    .line 2224
    .end local v2           #svcRet:I
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 2225
    const/4 v0, 0x1

    goto :goto_0

    .line 2227
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 2236
    .restart local v2       #svcRet:I
    :catch_0
    move-exception v1

    .line 2237
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t end the call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public endCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2135
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2136
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot end call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2139
    :cond_0
    const/4 v2, -0x1

    .line 2140
    .local v2, svcRet:I
    const/4 v0, -0x1

    .line 2142
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 2143
    const/4 v0, 0x2

    .line 2150
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2152
    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    .line 2153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End Call due to reason IMS_CALL_END_CALL_NW_HANDOVER"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2154
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eDisconnectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2165
    :cond_1
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2166
    return-void

    .line 2144
    :cond_2
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 2145
    const/4 v0, 0x1

    goto :goto_0

    .line 2147
    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    .line 2156
    :cond_4
    const/4 v3, 0x6

    if-ne p3, v3, :cond_5

    .line 2157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End Call due to reason IMS_CALL_LOW_BATTERY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2158
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eDisconnectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto :goto_1

    .line 2159
    :cond_5
    const/16 v3, 0x8

    if-ne p3, v3, :cond_1

    .line 2160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End Call due to reason IMS_CALL_END_CALL_NW_SRVCC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2161
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eDisconnectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto :goto_1

    .line 2167
    :catch_0
    move-exception v1

    .line 2168
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t end call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getCurrentLatchedNetwork()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2584
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 2585
    const-string v2, "Ims interface is null !!"

    invoke-direct {p0, v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2593
    :goto_0
    return-object v1

    .line 2590
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->getCurrentLatchedNetwork()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2591
    :catch_0
    move-exception v0

    .line 2592
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getMaxVolume(I)I
    .locals 2
    .parameter "sessionID"

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public holdCall(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1426
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1427
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1430
    :cond_0
    const/4 v1, -0x1

    .line 1431
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1432
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1434
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0x8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    return-void

    .line 1436
    :catch_0
    move-exception v0

    .line 1437
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public holdVideo(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1656
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1657
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1660
    :cond_0
    const/4 v1, -0x1

    .line 1661
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1662
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1664
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xe

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1670
    return-void

    .line 1666
    :catch_0
    move-exception v0

    .line 1667
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call: Service Not Up"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isDeviceOnEHRPD()Z
    .locals 3

    .prologue
    .line 2074
    const/4 v1, 0x0

    .line 2075
    .local v1, ret:Z
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v2, :cond_0

    .line 2077
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->isOnEHRPD()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2083
    :cond_0
    :goto_0
    return v1

    .line 2078
    :catch_0
    move-exception v0

    .line 2079
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 2080
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isDeviceOnLTE()Z
    .locals 3

    .prologue
    .line 2061
    const/4 v1, 0x0

    .line 2062
    .local v1, ret:Z
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v2, :cond_0

    .line 2064
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->isOnLTE()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2070
    :cond_0
    :goto_0
    return v1

    .line 2065
    :catch_0
    move-exception v0

    .line 2066
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 2067
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isFrontCamInUse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2087
    const/4 v1, 0x0

    .line 2088
    .local v1, ret:Z
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v3, :cond_0

    .line 2090
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v3}, Lcom/sec/android/internal/ims/IIMSService;->isFrontCamInUse()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2091
    .local v2, retVal:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2092
    const/4 v1, 0x1

    .line 2101
    .end local v2           #retVal:I
    :cond_0
    :goto_0
    return v1

    .line 2094
    .restart local v2       #retVal:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2096
    .end local v2           #retVal:I
    :catch_0
    move-exception v0

    .line 2097
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 2098
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isIMSEnabledOnWifi()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2598
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 2599
    const-string v2, "Ims interface is null !!"

    invoke-direct {p0, v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2606
    :goto_0
    return v1

    .line 2603
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->isIMSEnabledOnWifi()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2604
    :catch_0
    move-exception v0

    .line 2605
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isImsForbidden()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2611
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2612
    const-string v1, "Ims interface is null !!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2613
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot check for isImsForbidden"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2616
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->isImsForbidden()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2617
    :catch_0
    move-exception v0

    .line 2618
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2619
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot check for isImsForbidden"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isMuted(I)Z
    .locals 2
    .parameter "sessionID"

    .prologue
    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMuted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1589
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public makeMediaCall(Ljava/lang/String;ILjava/lang/String;)I
    .locals 14
    .parameter "peerUri"
    .parameter "type"
    .parameter "pLetteringText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1927
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1928
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot make media call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1931
    :cond_0
    const/4 v11, -0x1

    .line 1932
    .local v11, sessid:I
    const/4 v6, 0x0

    .line 1934
    .local v6, isVirtualNo:Z
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sipuriprefix"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1935
    .local v12, uriPrefix:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "uritype"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1936
    .local v8, dialType:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1937
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot make call R[invalid URI ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1940
    :cond_1
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1947
    :cond_2
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v1}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1949
    const/4 v1, 0x5

    move/from16 v0, p2

    if-ne v0, v1, :cond_8

    .line 1950
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "AppType"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1951
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "CallType"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1964
    :goto_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "RmtDialNum"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    const/4 v1, 0x7

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    .line 1966
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {p0, v1, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 1969
    :cond_3
    const/4 v9, 0x1

    .line 1970
    .local v9, dialTypeVal:I
    if-eqz v8, :cond_c

    const-string v1, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1971
    const-string v1, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1972
    const/4 v9, 0x3

    .line 1979
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialType ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] DialTypeVal ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1980
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "RmtUriType"

    invoke-virtual {v1, v2, v9}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1982
    if-eqz v12, :cond_d

    .line 1983
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "RmtUriPrefix"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    :goto_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " DisplayName (PLetteringText) - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1992
    const-string v1, "\\"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\\\\"

    const-string v2, "\\\\\\\\"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1993
    :cond_4
    const-string v1, "\""

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "\""

    const-string v2, "\\\\\""

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1994
    :cond_5
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallMessageByteLength(Ljava/lang/String;)I

    move-result v7

    .line 1995
    .local v7, callMessageMaxByteLength:I
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "CallMessageMaxLength"

    invoke-virtual {v1, v2, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1996
    const-string v1, ";"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ";"

    const-string v2, "\\\\;"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1997
    :cond_6
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "DisplayName"

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    .end local v7           #callMessageMaxByteLength:I
    :cond_7
    iget-object v13, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    monitor-enter v13

    .line 2002
    const/4 v1, 0x7

    move/from16 v0, p2

    if-ne v0, v1, :cond_e

    .line 2003
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #isVirtualNo:Z
    move-result v11

    .line 2010
    :goto_3
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v11

    .line 1952
    .end local v9           #dialTypeVal:I
    .restart local v6       #isVirtualNo:Z
    :cond_8
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_9

    .line 1953
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "AppType"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1954
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "CallType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1955
    :cond_9
    const/4 v1, 0x7

    move/from16 v0, p2

    if-ne v0, v1, :cond_a

    .line 1956
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "AppType"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1957
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "CallType"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1959
    :cond_a
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "AppType"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1960
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "CallType"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1974
    .restart local v9       #dialTypeVal:I
    :cond_b
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1977
    :cond_c
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1985
    :cond_d
    const-string v1, "UriPrefix is NULL"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1986
    const-string v12, "Sip"

    .line 1987
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "RmtUriPrefix"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2005
    :cond_e
    :try_start_2
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;Z)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v11

    goto :goto_3

    .line 2007
    .end local v6           #isVirtualNo:Z
    :catch_0
    move-exception v10

    .line 2008
    .local v10, e:Landroid/os/RemoteException;
    :try_start_3
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot make call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2011
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public registerForCallStateListener(Lcom/samsung/commonimsservice/IIMSCallStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register call state change listener ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2452
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for call state change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2454
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2458
    :goto_0
    return-void

    .line 2456
    :cond_0
    const-string v0, "Can\'t registered for call state change"

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerForRegStateListener(Lcom/samsung/commonimsservice/IIMSRegisterStateListener;)V
    .locals 2
    .parameter "regListener"

    .prologue
    .line 2461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register register status state change listener ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2462
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for register state change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2464
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2468
    :goto_0
    return-void

    .line 2466
    :cond_0
    const-string v0, "Can\'t registered for register status state change"

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerForServiceConnectionListener(Lcom/samsung/commonimsservice/IImsServiceConnectionListener;)V
    .locals 2
    .parameter "connListener"

    .prologue
    .line 2471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register connection status state change listener ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2472
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for connection state change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2474
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2475
    iget-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z

    if-eqz v0, :cond_1

    .line 2476
    invoke-interface {p1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onConnected()V

    .line 2481
    :cond_0
    :goto_0
    return-void

    .line 2478
    :cond_1
    invoke-interface {p1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onDisconnected()V

    goto :goto_0
.end method

.method public rejectCall(II)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2105
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2106
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot reject call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2109
    :cond_0
    const/4 v2, -0x1

    .line 2110
    .local v2, svcRet:I
    const/4 v0, -0x1

    .line 2112
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 2113
    const/4 v0, 0x2

    .line 2120
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2122
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2123
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eVVFtrType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2126
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2131
    return-void

    .line 2114
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 2115
    const/4 v0, 0x1

    goto :goto_0

    .line 2117
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 2127
    :catch_0
    move-exception v1

    .line 2128
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t reject call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public rejectCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v5, 0x2

    .line 2174
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2175
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot reject call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2178
    :cond_0
    const/4 v2, -0x1

    .line 2179
    .local v2, svcRet:I
    const/4 v0, -0x1

    .line 2181
    .local v0, callType:I
    if-ne p2, v5, :cond_2

    .line 2182
    const/4 v0, 0x2

    .line 2189
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2192
    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    .line 2193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reject Call due to reason IMS_CALL_END_CALL_NW_HANDOVER: reason["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2194
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2205
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eVVFtrType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2208
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2213
    return-void

    .line 2183
    :cond_2
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 2184
    const/4 v0, 0x1

    goto :goto_0

    .line 2186
    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    .line 2196
    :cond_4
    if-ne p3, v4, :cond_5

    .line 2197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reject Call due to reason IMS_CALL_LOW_BATTERY: reason["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2198
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto :goto_1

    .line 2200
    :cond_5
    if-eq p3, v5, :cond_6

    const/4 v3, 0x7

    if-ne p3, v3, :cond_1

    .line 2201
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reject Call due to reason IMS_SVC_USER_REJECT_REASON_USR_BUSY: reason["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2202
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto :goto_1

    .line 2209
    :catch_0
    move-exception v1

    .line 2210
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t reject call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public rejectChangeRequest(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1775
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1776
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot reject change request R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1779
    :cond_0
    const/4 v0, -0x1

    .line 1780
    .local v0, callId:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1781
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "Type"

    const-string v4, "reject"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0x10

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1788
    return-void

    .line 1785
    :catch_0
    move-exception v1

    .line 1786
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Reject change request failed R[Service is not up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public resetCameraID()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2508
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v1, :cond_0

    .line 2510
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->resetCameraID()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2518
    :goto_0
    return-void

    .line 2511
    :catch_0
    move-exception v0

    .line 2512
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2515
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "Ims interface is null stop we can not reset camera ID now!!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeCall(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1442
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1443
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot resume call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1446
    :cond_0
    const/4 v1, -0x1

    .line 1447
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1448
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1449
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "ssId"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1451
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xb

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    return-void

    .line 1453
    :catch_0
    move-exception v0

    .line 1454
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot continue call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public sendDtmf(II)Z
    .locals 7
    .parameter "sessionID"
    .parameter "code"

    .prologue
    .line 1791
    const/4 v1, 0x0

    .line 1792
    .local v1, ret:Z
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    move v2, v1

    .line 1808
    .end local v1           #ret:Z
    .local v2, ret:I
    :goto_0
    return v2

    .line 1796
    .end local v2           #ret:I
    .restart local v1       #ret:Z
    :cond_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1797
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "keyvalue"

    invoke-virtual {v3, v4, p2}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1798
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "KeyeventType"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1801
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1803
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 1808
    .restart local v2       #ret:I
    goto :goto_0

    .line 1804
    .end local v2           #ret:I
    :catch_0
    move-exception v0

    .line 1805
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public sendLiveVideo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2545
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2546
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot swipe video surface R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2550
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->sendLiveVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2554
    return-void

    .line 2551
    :catch_0
    move-exception v0

    .line 2552
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendReInvite(I)V
    .locals 5
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1460
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1461
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot send reInvite R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1464
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v1}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1465
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "appType"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1467
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v2, 0x18

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v4}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    return-void

    .line 1469
    :catch_0
    move-exception v0

    .line 1470
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot send reInvite R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendStillImage(Ljava/lang/String;)V
    .locals 3
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2533
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2534
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot swipe video surface R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2538
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->sendStillImage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2542
    return-void

    .line 2539
    :catch_0
    move-exception v0

    .line 2540
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAudioMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2640
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2641
    const-string v1, "Ims interface is null !!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2650
    :goto_0
    return-void

    .line 2646
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->setAudioMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2647
    :catch_0
    move-exception v0

    .line 2648
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setAutoResponse(II)V
    .locals 4
    .parameter "flag"
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2033
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2034
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot set auto response R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2037
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 2046
    :goto_0
    return-void

    .line 2042
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, p2, v3}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2043
    :catch_0
    move-exception v0

    .line 2044
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot make call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCameraOrientation(I)V
    .locals 3
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2049
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2050
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot hold call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2054
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->setOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2058
    return-void

    .line 2055
    :catch_0
    move-exception v0

    .line 2056
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot make call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDisplay(ILandroid/graphics/SurfaceTexture;Ljava/lang/String;)V
    .locals 7
    .parameter "sessionID"
    .parameter "holder"
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1636
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 1637
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot set display R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1639
    :cond_0
    const/4 v1, 0x0

    .line 1641
    .local v1, surface:Landroid/view/Surface;
    :try_start_0
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1642
    .end local v1           #surface:Landroid/view/Surface;
    .local v2, surface:Landroid/view/Surface;
    :try_start_1
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v2, v4, v5, p3}, Lcom/sec/android/internal/ims/IIMSService;->startVideoRenderer(Landroid/view/Surface;IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1646
    if-eqz v2, :cond_2

    .line 1647
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 1648
    const/4 v1, 0x0

    .line 1649
    .end local v2           #surface:Landroid/view/Surface;
    .restart local v1       #surface:Landroid/view/Surface;
    const-string v3, "SamsungAPCommonService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDisplay Inside Finally Block :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :goto_0
    return-void

    .line 1643
    :catch_0
    move-exception v0

    .line 1644
    .local v0, e:Landroid/os/RemoteException;
    :goto_1
    :try_start_2
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t set display R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1646
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 1647
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1648
    const/4 v1, 0x0

    .line 1649
    const-string v4, "SamsungAPCommonService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDisplay Inside Finally Block :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_1
    throw v3

    .end local v1           #surface:Landroid/view/Surface;
    .restart local v2       #surface:Landroid/view/Surface;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #surface:Landroid/view/Surface;
    .restart local v1       #surface:Landroid/view/Surface;
    goto :goto_2

    .line 1643
    .end local v1           #surface:Landroid/view/Surface;
    .restart local v2       #surface:Landroid/view/Surface;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #surface:Landroid/view/Surface;
    .restart local v1       #surface:Landroid/view/Surface;
    goto :goto_1

    .end local v1           #surface:Landroid/view/Surface;
    .restart local v2       #surface:Landroid/view/Surface;
    :cond_2
    move-object v1, v2

    .end local v2           #surface:Landroid/view/Surface;
    .restart local v1       #surface:Landroid/view/Surface;
    goto :goto_0
.end method

.method public setDisplay(ILandroid/view/SurfaceHolder;Ljava/lang/String;)V
    .locals 5
    .parameter "sessionID"
    .parameter "holder"
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1623
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1624
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot set display R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1628
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-interface {v1, v2, v3, v4, p3}, Lcom/sec/android/internal/ims/IIMSService;->startVideoRenderer(Landroid/view/Surface;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    return-void

    .line 1629
    :catch_0
    move-exception v0

    .line 1630
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Can\'t set display R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSpeakerMode(IZ)V
    .locals 1
    .parameter "sessionID"
    .parameter "speakerMode"

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1620
    return-void
.end method

.method public setVolume(II)V
    .locals 3
    .parameter "sessionID"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 1690
    if-gez p2, :cond_0

    .line 1698
    :goto_0
    return-void

    .line 1692
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getMaxVolume(I)I

    move-result v0

    if-le p2, v0, :cond_1

    .line 1693
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 1695
    :cond_1
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public startAudio(I)V
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1705
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1706
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot hold call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1710
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->startAudio()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1715
    return-void

    .line 1711
    :catch_0
    move-exception v0

    .line 1712
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Start audio failed R[Service is not up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startCamera(IILandroid/graphics/SurfaceTexture;ZZLjava/lang/String;)I
    .locals 12
    .parameter "sessionID"
    .parameter "cameraID"
    .parameter "surfaceHolder"
    .parameter "isCallEstablished"
    .parameter "isConference"
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v0, :cond_0

    .line 1533
    new-instance v0, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot start camera R[Service Not Up]"

    invoke-direct {v0, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1535
    :cond_0
    const/4 v11, 0x0

    .line 1537
    .local v11, surface:Landroid/view/Surface;
    if-eqz p3, :cond_2

    .line 1538
    :try_start_0
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    .end local v11           #surface:Landroid/view/Surface;
    .local v1, surface:Landroid/view/Surface;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/internal/ims/IIMSService;->startCamera(Landroid/view/Surface;IIIZZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1548
    :goto_0
    if-eqz v1, :cond_1

    .line 1549
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1550
    const/4 v1, 0x0

    .line 1551
    const-string v0, "SamsungAPCommonService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCamera Inside Finally Block : Surface :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1544
    .end local v1           #surface:Landroid/view/Surface;
    .restart local v11       #surface:Landroid/view/Surface;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v2 .. v9}, Lcom/sec/android/internal/ims/IIMSService;->startCamera(Landroid/view/Surface;IIIZZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v11

    .end local v11           #surface:Landroid/view/Surface;
    .restart local v1       #surface:Landroid/view/Surface;
    goto :goto_0

    .line 1545
    .end local v1           #surface:Landroid/view/Surface;
    .restart local v11       #surface:Landroid/view/Surface;
    :catch_0
    move-exception v10

    move-object v1, v11

    .line 1546
    .end local v11           #surface:Landroid/view/Surface;
    .restart local v1       #surface:Landroid/view/Surface;
    .local v10, e:Landroid/os/RemoteException;
    :goto_1
    :try_start_3
    new-instance v0, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Camera cannot be acquired"

    invoke-direct {v0, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1548
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 1549
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1550
    const/4 v1, 0x0

    .line 1551
    const-string v2, "SamsungAPCommonService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startCamera Inside Finally Block : Surface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_3
    throw v0

    .end local v1           #surface:Landroid/view/Surface;
    .restart local v11       #surface:Landroid/view/Surface;
    :catchall_1
    move-exception v0

    move-object v1, v11

    .end local v11           #surface:Landroid/view/Surface;
    .restart local v1       #surface:Landroid/view/Surface;
    goto :goto_2

    .line 1545
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method public startCamera(IILandroid/view/SurfaceHolder;ZZLjava/lang/String;)I
    .locals 9
    .parameter "sessionID"
    .parameter "cameraID"
    .parameter "surfaceHolder"
    .parameter "isCallEstablished"
    .parameter "isConference"
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v0, :cond_0

    .line 1511
    new-instance v0, Lcom/samsung/commonimsservice/IMSException;

    const-string v1, "Cannot start camera R[Service Not Up]"

    invoke-direct {v0, v1}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1515
    :cond_0
    if-eqz p3, :cond_1

    .line 1516
    :try_start_0
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move v4, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/internal/ims/IIMSService;->startCamera(Landroid/view/Surface;IIIZZLjava/lang/String;)V

    .line 1525
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1520
    :cond_1
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/internal/ims/IIMSService;->startCamera(Landroid/view/Surface;IIIZZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1521
    :catch_0
    move-exception v8

    .line 1522
    .local v8, e:Landroid/os/RemoteException;
    new-instance v0, Lcom/samsung/commonimsservice/IMSException;

    const-string v1, "Camera cannot be acquired"

    invoke-direct {v0, v1}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startMedia(I)V
    .locals 0
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1731
    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->startAudio(I)V

    .line 1732
    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->startVideo(I)V

    .line 1733
    return-void
.end method

.method public startVideo(I)V
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1718
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1719
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Start video failed R[Service not up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1723
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->startVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1728
    return-void

    .line 1724
    :catch_0
    move-exception v0

    .line 1725
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Start video failed R[Service not up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopCamera(I)I
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1812
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1813
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot stop camera R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1817
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->stopCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1822
    const/4 v1, 0x0

    return v1

    .line 1818
    :catch_0
    move-exception v0

    .line 1819
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1820
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Camera not stopped"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public swapVideoSurface(I)V
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2521
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2522
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot swipe video surface R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2526
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->swapVideoSurface()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2530
    return-void

    .line 2527
    :catch_0
    move-exception v0

    .line 2528
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public switchCamera()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1574
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1575
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot switch camera R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1579
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->switchCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1584
    return-void

    .line 1580
    :catch_0
    move-exception v0

    .line 1581
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Camera cannot be acquired"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toggleMute(I)V
    .locals 2
    .parameter "sessionID"

    .prologue
    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toggle mute before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1746
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1753
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toggle mute after = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1755
    return-void

    .line 1750
    :cond_0
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    goto :goto_0
.end method

.method public upgradeCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .parameter "newType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 2295
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2296
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2299
    :cond_0
    const/4 v2, -0x1

    .line 2300
    .local v2, svcId:I
    const/4 v0, -0x1

    .line 2302
    .local v0, appType:I
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2304
    const/4 v3, 0x5

    if-ne v3, p3, :cond_3

    .line 2305
    if-ne v4, p2, :cond_2

    .line 2306
    const/4 v0, 0x5

    .line 2311
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "appType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2313
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v4, 0xe

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2333
    :cond_1
    :goto_1
    return-void

    .line 2308
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2314
    :catch_0
    move-exception v1

    .line 2315
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Upgrade failed R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2317
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    if-ne p3, v4, :cond_1

    .line 2319
    if-ne v4, p2, :cond_4

    .line 2320
    const/4 v0, 0x7

    .line 2324
    :goto_2
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "appType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2327
    :try_start_1
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v4, 0x13

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2328
    :catch_1
    move-exception v1

    .line 2329
    .restart local v1       #e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2322
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    const/4 v0, 0x2

    goto :goto_2
.end method

.method public voiceRecord(IILjava/lang/String;)V
    .locals 3
    .parameter "command"
    .parameter "sessionID"
    .parameter "mFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1560
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1561
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot start camera R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1564
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1, p3}, Lcom/sec/android/internal/ims/IIMSService;->voiceRecord(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1571
    return-void

    .line 1566
    :catch_0
    move-exception v0

    .line 1567
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Camera cannot be acquired"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeErrorData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errorCode"
    .parameter "errorString"

    .prologue
    .line 2625
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2638
    :goto_0
    return-void

    .line 2632
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ims interface is writeErrorData... !!errorCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...errorString"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2633
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/internal/ims/IIMSService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2634
    :catch_0
    move-exception v0

    .line 2636
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
