.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;
.super Landroid/widget/FrameLayout;
.source "KeyguardSignatureView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;,
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

#the value of this static final field might be set in the static constructor
.field private static final DBG_TOUCH:Z = false

.field private static final MAX_SIGNATURE_ATTEMPTS:I = 0x2

.field private static final REGISTRED_SIGNATURE_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KeyguardSignatureView"

.field private static mState:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;


# instance fields
.field private mBoundToSignService:Z

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mEcaView:Landroid/view/View;

.field private mEngineStarted:Z

.field private mFailedAttempts:I

.field private mGuideText:Ljava/lang/String;

.field private mHelpText:Landroid/widget/TextView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSignService:Lcom/android/internal/policy/ISignServiceInterface;

.field private final mSignServiceRunningLock:Ljava/lang/Object;

.field private mSignView:Lcom/android/internal/widget/SignView;

.field private mVerificationLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->DBG_TOUCH:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;

    .line 251
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 91
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mFailedAttempts:I

    .line 93
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mFailedAttempts:I

    return v0
.end method

.method static synthetic access$1008(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mFailedAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mFailedAttempts:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput-object p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    return-object p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->DBG_TOUCH:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method private initSignView()V
    .locals 20

    .prologue
    .line 125
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;->INIT:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 127
    const/16 v1, 0x16

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .line 128
    .local v16, properties:[I
    const/16 v1, 0x58

    new-array v0, v1, [B

    move-object/from16 v18, v0

    .line 130
    .local v18, stored:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getSignatureLockInfo()[B

    move-result-object v18

    .line 133
    if-eqz v18, :cond_0

    .line 134
    const/4 v14, 0x0

    .local v14, index:I
    :goto_0
    const/16 v1, 0x16

    if-ge v14, v1, :cond_0

    .line 135
    mul-int/lit8 v1, v14, 0x4

    aget-byte v1, v18, v1

    shl-int/lit8 v1, v1, 0x18

    mul-int/lit8 v2, v14, 0x4

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, v18, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    mul-int/lit8 v2, v14, 0x4

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, v18, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    mul-int/lit8 v2, v14, 0x4

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, v18, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    aput v1, v16, v14

    .line 134
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 142
    .end local v14           #index:I
    :cond_0
    const/16 v1, 0x8

    aget v1, v16, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v19, 0x1

    .line 143
    .local v19, useBezier:Z
    :goto_1
    if-eqz v19, :cond_2

    .line 144
    new-instance v1, Lcom/android/internal/widget/BezierSignView;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/BezierSignView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    .line 151
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v1}, Lcom/android/internal/widget/SignView;->setVerifySign()V

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_signature_verification_level"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mVerificationLevel:I

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mVerificationLevel:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setVerificationLevel(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v2, 0x7

    aget v2, v16, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setSettingInputType(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v2, 0x6

    aget v2, v16, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setStrokeCount(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setSignatureVisible(Z)V

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SignView;->setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    const/16 v1, 0x9

    aget v1, v16, v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SignView;->enableUsingHistoricalEvent(Z)V

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    const/16 v2, 0xa

    aget v2, v16, v2

    const/16 v3, 0xb

    aget v3, v16, v3

    const/16 v4, 0xc

    aget v4, v16, v4

    const/16 v5, 0xd

    aget v5, v16, v5

    const/16 v6, 0xe

    aget v6, v16, v6

    const/16 v7, 0xf

    aget v7, v16, v7

    const/16 v8, 0x10

    aget v8, v16, v8

    const/16 v9, 0x11

    aget v9, v16, v9

    const/16 v10, 0x12

    aget v10, v16, v10

    const/16 v11, 0x13

    aget v11, v16, v11

    const/16 v12, 0x14

    aget v12, v16, v12

    const/16 v13, 0x15

    aget v13, v16, v13

    invoke-virtual/range {v1 .. v13}, Lcom/android/internal/widget/SignView;->setThresholdValues(IIIIIIIIIIII)V

    .line 175
    const v1, 0x1020381

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 176
    .local v17, signViewContainer:Landroid/widget/LinearLayout;
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v15, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 178
    .local v15, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    return-void

    .line 142
    .end local v15           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v17           #signViewContainer:Landroid/widget/LinearLayout;
    .end local v19           #useBezier:Z
    :cond_1
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 147
    .restart local v19       #useBezier:Z
    :cond_2
    new-instance v1, Lcom/android/internal/widget/BeautySignView;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/BeautySignView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    goto/16 :goto_2

    .line 167
    :cond_3
    const/4 v1, 0x0

    goto :goto_3
.end method


# virtual methods
.method public bindToSignatureLock()V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 249
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEcaView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 243
    return-void
.end method

.method public isSignatureRecognitionFailed()Z
    .locals 2

    .prologue
    .line 295
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 98
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->initSignView()V

    .line 103
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "unlock_text"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 105
    .local v0, helpTextEnabled:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 106
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407e9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    .line 110
    :goto_1
    const v1, 0x1020382

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mHelpText:Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mHelpText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 114
    const v1, 0x10202fe

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEcaView:Landroid/view/View;

    .line 117
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    if-nez v1, :cond_0

    .line 118
    const-string v1, "KeyguardSignatureView"

    const-string v3, "sign service is called from constructor"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->bindToSignatureLock()V

    .line 120
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    .line 122
    :cond_0
    return-void

    .line 103
    .end local v0           #helpTextEnabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    .restart local v0       #helpTextEnabled:Z
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 198
    const-string v0, "KeyguardSignatureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause(), mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    .line 205
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 210
    const-string v0, "KeyguardSignatureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->bindToSignatureLock()V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    .line 217
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 184
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 189
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEcaView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 238
    return-void
.end method

.method public showUsabilityHint()V
    .locals 2

    .prologue
    .line 231
    const-string v0, "KeyguardSignatureView"

    const-string v1, "Requested showUsabilityHint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method
