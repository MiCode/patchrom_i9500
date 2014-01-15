.class Lcom/android/settings_ex/SoundSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SoundSettings;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/settings_ex/SoundSettings$2;->this$0:Lcom/android/settings_ex/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 256
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$2;->this$0:Lcom/android/settings_ex/SoundSettings;

    #calls: Lcom/android/settings_ex/SoundSettings;->handleDockChange(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/settings_ex/SoundSettings;->access$500(Lcom/android/settings_ex/SoundSettings;Landroid/content/Intent;)V

    .line 259
    :cond_0
    return-void
.end method
