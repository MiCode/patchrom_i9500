.class Lcom/android/settings_ex/nearby/NearbySettings$4;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nearby/NearbySettings;->requestDBUpdatedPopup()V
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
    .line 821
    iput-object p1, p0, Lcom/android/settings_ex/nearby/NearbySettings$4;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 823
    const-string v0, "AllshareSetting: "

    const-string v1, "requestDBUpdatedPopup"

    const-string v2, "BUTTON - Negative"

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings$4;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #setter for: Lcom/android/settings_ex/nearby/NearbySettings;->bAutoStart:Z
    invoke-static {v0, v3}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1102(Lcom/android/settings_ex/nearby/NearbySettings;Z)Z

    .line 825
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings$4;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/nearby/NearbySettings;->access$400(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AutoDMS"

    iget-object v2, p0, Lcom/android/settings_ex/nearby/NearbySettings$4;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->bAutoStart:Z
    invoke-static {v2}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1100(Lcom/android/settings_ex/nearby/NearbySettings;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 827
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings$4;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/nearby/NearbySettings;->access$300(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 828
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings$4;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #setter for: Lcom/android/settings_ex/nearby/NearbySettings;->bDBCanceled:Z
    invoke-static {v0, v4}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1202(Lcom/android/settings_ex/nearby/NearbySettings;Z)Z

    .line 829
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings$4;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings$4;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/nearby/NearbySettings;->access$300(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 830
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbySettings$4;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/nearby/NearbySettings;->access$300(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 831
    return-void
.end method
