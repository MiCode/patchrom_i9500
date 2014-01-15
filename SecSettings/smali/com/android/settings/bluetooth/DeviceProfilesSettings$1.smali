.class Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceProfilesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 98
    .local v1, state:I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 102
    .end local v1           #state:I
    :cond_0
    return-void
.end method
