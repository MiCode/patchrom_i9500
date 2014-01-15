.class public Lcom/android/settings_ex/SmartNetworkPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SmartNetworkPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartNetworkPreference"


# instance fields
.field private endPowerKeyEndChecked:Z

.field private mGuideDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-object v0, p0, Lcom/android/settings_ex/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    .line 50
    return-void
.end method

.method private showGuideDialog(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 117
    iget-object v4, p0, Lcom/android/settings_ex/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 118
    iget-object v4, p0, Lcom/android/settings_ex/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 119
    iput-object v7, p0, Lcom/android/settings_ex/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    .line 122
    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 123
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04012e

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 124
    .local v3, layout:Landroid/view/View;
    const v4, 0x7f0b00c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 126
    .local v0, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    .local v1, guideDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090017

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings_ex/SmartNetworkPreference$1;

    invoke-direct {v6, p0, p1, v0}, Lcom/android/settings_ex/SmartNetworkPreference$1;-><init>(Lcom/android/settings_ex/SmartNetworkPreference;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    .line 141
    iget-object v4, p0, Lcom/android/settings_ex/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 142
    iget-object v4, p0, Lcom/android/settings_ex/SmartNetworkPreference;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 143
    return-void
.end method


# virtual methods
.method public checkSmartNetwork(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SmartNetworkPreference;->shouldShowGuideDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SmartNetworkPreference;->showGuideDialog(Landroid/content/Context;)V

    .line 113
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SmartNetworkPreference;->updateSmartNetworkPreference(Landroid/content/Context;)V

    .line 114
    return-void

    .line 109
    :cond_0
    const-string v0, "SmartNetworkPreference"

    const-string v1, "checkSmartNetwork - toggleValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SmartNetworkPreference;->toggleValue(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public disableGuideDialog(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 66
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "smart_network_guide_sharedpref"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method

.method public shouldShowGuideDialog(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 57
    const/4 v1, 0x1

    .line 59
    .local v1, result:Z
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "smart_network_guide_sharedpref"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 62
    return v1
.end method

.method public toggleValue(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_network"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    move v1, v3

    .line 76
    .local v1, isOn:Z
    :goto_0
    const-string v5, "statusbar"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 77
    .local v2, mStatusBar:Landroid/app/StatusBarManager;
    const-string v5, "smart_network"

    const v6, 0x7f0203ee

    invoke-virtual {v2, v5, v6, v4, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 79
    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "smart_network"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_sleep_policy"

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    const-string v3, "smart_network"

    invoke-virtual {v2, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 93
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.phone.smartnetwork.widget_reload_action"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, broadcastIntent:Landroid/content/Intent;
    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 95
    return-void

    .end local v0           #broadcastIntent:Landroid/content/Intent;
    .end local v1           #isOn:Z
    .end local v2           #mStatusBar:Landroid/app/StatusBarManager;
    :cond_0
    move v1, v4

    .line 73
    goto :goto_0

    .line 86
    .restart local v1       #isOn:Z
    .restart local v2       #mStatusBar:Landroid/app/StatusBarManager;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_network"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_sleep_policy"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    const-string v4, "smart_network"

    invoke-virtual {v2, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public updateSmartNetworkPreference(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_network"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 101
    .local v0, isOn:Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SmartNetworkPreference;->setChecked(Z)V

    .line 102
    return-void
.end method
