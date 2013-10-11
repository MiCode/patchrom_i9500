.class Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$11;
.super Ljava/lang/Object;
.source "LensFlareView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->showUnlockAffordance(JLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->playUnlockAffordance()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$1800(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    .line 872
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->isPlayAffordance:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$1902(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Z)Z

    .line 873
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$2002(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 874
    return-void
.end method
