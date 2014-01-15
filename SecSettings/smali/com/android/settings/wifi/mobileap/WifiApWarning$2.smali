.class Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$2;
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

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$2;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x1

    .line 165
    const/4 v1, 0x0

    .line 167
    .local v1, wifiSavedState:I
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$2;->val$cr:Landroid/content/ContentResolver;

    const-string v3, "wifi_saved_state"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 171
    :goto_0
    if-ne v1, v4, :cond_1

    .line 173
    const-wide/16 v2, 0x258

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$2;->val$cr:Landroid/content/ContentResolver;

    const-string v3, "wifi_saved_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 182
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 184
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 168
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method
