.class Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$7;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$7;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 701
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$7;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x7

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;I)V

    .line 702
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$7;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDismissDialog:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->access$802(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;Z)Z

    .line 703
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$7;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    #setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mContinueOpen:Z
    invoke-static {v0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->access$502(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;Z)Z

    .line 704
    const-string v0, "WifiApSettings"

    const-string v1, "selects Continue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$7;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->access$900(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;I)V

    .line 706
    return-void
.end method
