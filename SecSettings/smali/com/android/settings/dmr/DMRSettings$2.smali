.class Lcom/android/settings_ex/dmr/DMRSettings$2;
.super Ljava/lang/Object;
.source "DMRSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dmr/DMRSettings;->requestWifiSettingPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dmr/DMRSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dmr/DMRSettings;)V
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Lcom/android/settings_ex/dmr/DMRSettings$2;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 908
    const-string v0, "Settings"

    const-string v1, "DMR Setting: Wifi AlertDialog Select : cancel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v0, p0, Lcom/android/settings_ex/dmr/DMRSettings$2;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/dmr/DMRSettings;->bWifiPopupShown:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/dmr/DMRSettings;->access$302(Lcom/android/settings_ex/dmr/DMRSettings;Z)Z

    .line 912
    iget-object v0, p0, Lcom/android/settings_ex/dmr/DMRSettings$2;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    #getter for: Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/dmr/DMRSettings;->access$000(Lcom/android/settings_ex/dmr/DMRSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/settings_ex/dmr/DMRSettings$2;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    #getter for: Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/dmr/DMRSettings;->access$000(Lcom/android/settings_ex/dmr/DMRSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 916
    :cond_0
    return-void
.end method
