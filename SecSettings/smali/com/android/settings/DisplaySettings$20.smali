.class Lcom/android/settings_ex/DisplaySettings$20;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DisplaySettings;->showTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$20;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v0, 0x1

    .line 1632
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$20;->this$0:Lcom/android/settings_ex/DisplaySettings;

    #getter for: Lcom/android/settings_ex/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->access$400(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings$20;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_window_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1633
    return-void

    .line 1632
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
