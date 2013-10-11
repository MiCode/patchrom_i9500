.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$1;
.super Landroid/os/Handler;
.source "KeyguardShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->reloadBadges()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
    .end packed-switch
.end method
