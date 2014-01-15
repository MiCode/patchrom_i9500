.class Lcom/android/settings_ex/WirelessSettings$1;
.super Landroid/database/ContentObserver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/WirelessSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings$1;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 361
    const-string v0, "WirelessSettings"

    const-string v1, "mNFCpayment onChange() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings$1;->this$0:Lcom/android/settings_ex/WirelessSettings;

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$1;->this$0:Lcom/android/settings_ex/WirelessSettings;

    #getter for: Lcom/android/settings_ex/WirelessSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$000(Lcom/android/settings_ex/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->updatePreference(Landroid/preference/PreferenceScreen;)V

    .line 363
    return-void
.end method
