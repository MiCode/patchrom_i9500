.class Lcom/android/settings_ex/DisplaySettings$6;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$6;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 332
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings$6;->this$0:Lcom/android/settings_ex/DisplaySettings;

    #getter for: Lcom/android/settings_ex/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/DisplaySettings;->access$400(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings$6;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 333
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$6;->this$0:Lcom/android/settings_ex/DisplaySettings;

    #getter for: Lcom/android/settings_ex/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$400(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 334
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 335
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/settings_ex/DisplaySettings$6$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DisplaySettings$6$1;-><init>(Lcom/android/settings_ex/DisplaySettings$6;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    return-void

    .end local v0           #mHandler:Landroid/os/Handler;
    :cond_0
    move v1, v2

    .line 332
    goto :goto_0
.end method
