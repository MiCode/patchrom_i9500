.class Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$7;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

.field final synthetic val$av:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$7;->val$av:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$600(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 270
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$7;->val$av:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$7;->val$av:Landroid/app/Activity;

    invoke-static {p1, v1, v2}, Lcom/android/settings_ex/guide/GuideFragment;->onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V

    .line 275
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 279
    return-void
.end method
