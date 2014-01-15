.class Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$24;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$24;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 482
    const-string v0, "WifiApWarning"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$24;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1200(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Lcom/android/settings_ex/wifi/WifiApDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    const-string v0, "WifiApWarning"

    const-string v1, "mDialogConfigure.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$24;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1200(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Lcom/android/settings_ex/wifi/WifiApDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$24;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #calls: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$800(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    .line 488
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$24;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 489
    return-void
.end method
