.class Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$21;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$21;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 618
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$21;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)Lcom/android/settings_ex/wifi/WifiApDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "mDialogConfigure.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$21;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)Lcom/android/settings_ex/wifi/WifiApDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 623
    :cond_0
    return-void
.end method
