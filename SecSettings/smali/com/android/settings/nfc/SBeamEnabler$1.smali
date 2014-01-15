.class Lcom/android/settings_ex/nfc/SBeamEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "SBeamEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/SBeamEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/SBeamEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/SBeamEnabler;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/settings_ex/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings_ex/nfc/SBeamEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 391
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings_ex/nfc/SBeamEnabler;

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/settings_ex/nfc/SBeamEnabler;->changedNfcState(ILandroid/content/Intent;)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    const-string v1, "com.android.settings_ex.action.SBEAM_STATE_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.settings_ex.action.SBEAM_OFF_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SBeamEnabler$1;->this$0:Lcom/android/settings_ex/nfc/SBeamEnabler;

    #calls: Lcom/android/settings_ex/nfc/SBeamEnabler;->changedSbeamState(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/settings_ex/nfc/SBeamEnabler;->access$000(Lcom/android/settings_ex/nfc/SBeamEnabler;Landroid/content/Intent;)V

    goto :goto_0

    .line 398
    :cond_3
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    invoke-static {p1}, Lcom/android/settings_ex/nfc/SBeamEnabler;->isAllowWifiByDevicePolicy(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    const-string v1, "[SBeam]"

    const-string v2, "SBeamStateReceiver : apply eas policy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v1, 0x0

    invoke-static {p1, v1, v3}, Lcom/android/settings_ex/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method
