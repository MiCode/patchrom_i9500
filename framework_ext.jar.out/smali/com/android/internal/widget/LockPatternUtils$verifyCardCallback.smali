.class abstract Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "verifyCardCallback"
.end annotation


# instance fields
.field mVerifyCallback:Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback$1;-><init>(Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;->mVerifyCallback:Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/LockPatternUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onComplete(I)V
.end method
