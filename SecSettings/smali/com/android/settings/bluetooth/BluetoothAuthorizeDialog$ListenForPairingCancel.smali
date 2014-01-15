.class Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAuthorizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenForPairingCancel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 236
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 238
    :cond_0
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 239
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->access$100(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 242
    invoke-static {}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->access$300()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090d24

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 245
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->access$300()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090d30

    invoke-static {v2, v1, v3}, Lcom/android/settings_ex/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 246
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->access$400(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;)V

    .line 252
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #name:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 250
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->access$400(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;)V

    goto :goto_0
.end method
