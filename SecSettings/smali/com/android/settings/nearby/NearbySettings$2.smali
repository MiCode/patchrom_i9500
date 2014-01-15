.class Lcom/android/settings_ex/nearby/NearbySettings$2;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nearby/NearbySettings;->requestWifiSettingPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nearby/NearbySettings;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/settings_ex/nearby/NearbySettings$2;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 799
    const-string v0, "AllshareSetting: "

    const-string v1, "requestWifiSettingPopup"

    const-string v2, "BUTTON - cancel"

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings$2;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/nearby/NearbySettings;->bWifiPopupShown:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1002(Lcom/android/settings_ex/nearby/NearbySettings;Z)Z

    .line 801
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings$2;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/nearby/NearbySettings;->access$300(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings$2;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/nearby/NearbySettings;->access$300(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 803
    :cond_0
    return-void
.end method
