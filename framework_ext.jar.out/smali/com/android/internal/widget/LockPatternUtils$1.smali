.class Lcom/android/internal/widget/LockPatternUtils$1;
.super Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternUtils;->registerPasswordWithCAC(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils;

.field final synthetic val$cv:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/ConditionVariable;)V
    .locals 1

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$1;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$cv:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;-><init>(Lcom/android/internal/widget/LockPatternUtils$1;)V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 349
    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerPasswordWithCAC: onComplete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->access$102(I)I

    .line 352
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->access$202(Z)Z

    .line 353
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 354
    return-void
.end method
