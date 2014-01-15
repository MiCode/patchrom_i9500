.class Lcom/android/settings_ex/wfd/WfdPickerActivity$9;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WfdPickerActivity;->createDongleRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 1735
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$9;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iput-object p2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$9;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$9;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1900(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$9;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1738
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$9;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$9;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1900(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->setDeviceName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2900(Lcom/android/settings_ex/wfd/WfdPickerActivity;Ljava/lang/String;)V

    .line 1739
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$9;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$9;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1900(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2000(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1740
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$9;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$9;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1900(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setWifiDisplayDeviceName(Ljava/lang/String;)V

    .line 1741
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$9;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$9;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1742
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1743
    return-void
.end method
