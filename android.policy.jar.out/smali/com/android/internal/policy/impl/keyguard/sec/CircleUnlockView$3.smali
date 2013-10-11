.class Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$3;
.super Ljava/lang/Object;
.source "CircleUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->showUnlockAffordance(JLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->playUnlockAffordance()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)V

    .line 763
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isPlayAffordance:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$1102(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;Z)Z

    .line 764
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->affordanceRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$1202(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 765
    return-void
.end method
