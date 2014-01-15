.class Lcom/android/settings_ex/dormantmode/DormantmodeSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "DormantmodeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dormantmode/DormantmodeSettings;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.settings.DORMANTMODE_ACTIVITY_LAUNCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 122
    :cond_0
    return-void
.end method
