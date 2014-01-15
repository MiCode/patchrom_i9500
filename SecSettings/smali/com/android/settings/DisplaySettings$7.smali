.class Lcom/android/settings_ex/DisplaySettings$7;
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
    .line 343
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$7;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 346
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$7;->this$0:Lcom/android/settings_ex/DisplaySettings;

    #getter for: Lcom/android/settings_ex/DisplaySettings;->mSleep:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$500(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings$7;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "intelligent_sleep_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 347
    return-void
.end method
