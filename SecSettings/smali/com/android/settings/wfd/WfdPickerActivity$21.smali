.class Lcom/android/settings_ex/wfd/WfdPickerActivity$21;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WfdPickerActivity;->scanDevice()V
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
    .line 2516
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$21;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 2522
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$21;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->finishScanDevice(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$4400(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)V

    .line 2524
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 2518
    const-string v0, "WfdPickerActivity"

    const-string v1, "discoverPeers success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$21;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const/4 v1, 0x3

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1002(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)I

    .line 2520
    return-void
.end method
