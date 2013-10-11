.class abstract Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "registerCardCallback"
.end annotation


# instance fields
.field mVerifyCallback:Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$registerCardCallback$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils$registerCardCallback$1;-><init>(Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;->mVerifyCallback:Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/LockPatternUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onComplete(I)V
.end method
