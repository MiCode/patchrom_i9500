.class Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$8;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 281
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$8;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$8;->val$av:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$8;->val$av:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$8;->val$av:Landroid/app/Activity;

    invoke-static {p1, p2, v1}, Lcom/android/settings_ex/guide/GuideFragment;->onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V

    .line 290
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$8;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 293
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$8;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 294
    return-void
.end method
