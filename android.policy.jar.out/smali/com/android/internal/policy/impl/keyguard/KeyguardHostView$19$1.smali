.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19$1;
.super Ljava/lang/Thread;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;)V
    .locals 0

    .prologue
    .line 2442
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->formatExtStorage()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I

    .line 2445
    return-void
.end method
