.class public Lcom/android/settings_ex/nfc/SBeamStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SBeamStateReceiver.java"


# static fields
.field private static final ACTION_ADAPTER_STATE_CHANGE_READER:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

.field private static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final ACTION_UPDTE_ABEAM:Ljava/lang/String; = "android.nfc.action.ABEAM_STATE_CHANGED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 21
    invoke-static {p1, p2}, Lcom/android/settings_ex/nfc/SBeamEnabler;->procAbeamChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 26
    invoke-static {p1}, Lcom/android/settings_ex/nfc/SBeamEnabler;->initPreferenceForSbeam(Landroid/content/Context;)V

    goto :goto_0

    .line 30
    :cond_2
    const-string v5, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 31
    const-string v5, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 32
    .local v2, newState:I
    if-ne v9, v2, :cond_0

    .line 33
    const-string v5, "android.nfc.extra.PREF_ADAPTER_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1}, Lcom/android/settings_ex/nfc/SBeamEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 35
    :cond_3
    const-string v5, "[SBeam]"

    const-string v6, "SBeamStateReceiver : NFC turn off"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {p1, v8, v8}, Lcom/android/settings_ex/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 41
    .end local v2           #newState:I
    :cond_4
    const-string v5, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 42
    const-string v5, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 43
    .restart local v2       #newState:I
    if-ne v10, v2, :cond_0

    .line 44
    const-string v5, "[SBeam]"

    const-string v6, "SBeamStateReceiver : R/W P2P turn off"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {p1, v8, v8}, Lcom/android/settings_ex/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 50
    .end local v2           #newState:I
    :cond_5
    const-string v5, "com.android.settings_ex.action.SBEAM_STATE_UPDATED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    const-string v5, "turn_on"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 52
    .local v1, bOn:Z
    const-string v5, "[SBeam]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SBeamStateReceiver : updated ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {p1, v1, v9}, Lcom/android/settings_ex/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    .line 56
    if-eqz v1, :cond_0

    .line 57
    invoke-static {p1}, Lcom/android/settings_ex/nfc/SBeamEnabler;->isAllowWifiByDevicePolicy(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 58
    invoke-static {p1, v8, v9}, Lcom/android/settings_ex/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    .line 59
    invoke-static {p1}, Lcom/android/settings_ex/nfc/SBeamEnabler;->showNotAllowWifi(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 63
    :cond_6
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 64
    .local v3, nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 65
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 66
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 69
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    .line 70
    .local v4, state:I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    .line 71
    :cond_7
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 73
    :cond_8
    if-ne v4, v10, :cond_9

    .line 74
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 76
    :cond_9
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 77
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto/16 :goto_0
.end method
