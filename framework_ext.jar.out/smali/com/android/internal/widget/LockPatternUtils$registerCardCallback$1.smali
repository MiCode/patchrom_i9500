.class Lcom/android/internal/widget/LockPatternUtils$registerCardCallback$1;
.super Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$registerCardCallback$1;->this$0:Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;

    invoke-direct {p0}, Lcom/sec/smartcard/pinservice/ISmartCardRegisterCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$registerCardCallback$1;->this$0:Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;->onComplete(I)V

    .line 489
    return-void
.end method
