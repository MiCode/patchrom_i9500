.class Lcom/android/settings_ex/wfd/WfdPickerActivity$5;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WfdPickerActivity;->setDialogListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V
    .locals 0

    .prologue
    .line 1657
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 2

    .prologue
    .line 1669
    const-string v0, "WfdPickerActivity"

    const-string v1, " onAttached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    return-void
.end method

.method public onConnectionRequested(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 2
    .parameter "device"
    .parameter "config"

    .prologue
    .line 1659
    const-string v0, "WfdPickerActivity"

    const-string v1, "skip onConnectionRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    return-void
.end method

.method public onDetached(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 1674
    const-string v0, "WfdPickerActivity"

    const-string v1, " onDetached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    return-void
.end method

.method public onShowPinRequested(Ljava/lang/String;)V
    .locals 2
    .parameter "pin"

    .prologue
    .line 1664
    const-string v0, "WfdPickerActivity"

    const-string v1, " onShowPinRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    return-void
.end method
