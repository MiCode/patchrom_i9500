.class Lcom/android/settings_ex/wfd/WfdPickerActivity$18;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WfdPickerActivity;->cancelWfdConnect()V
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
    .line 2095
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$18;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 2105
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelWfdConnect removeGroup fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$18;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    .line 2108
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 2098
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect removeGroup success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$18;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    .line 2101
    return-void
.end method
