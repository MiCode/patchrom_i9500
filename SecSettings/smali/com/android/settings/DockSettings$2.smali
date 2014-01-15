.class Lcom/android/settings_ex/DockSettings$2;
.super Ljava/lang/Object;
.source "DockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DockSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DockSettings;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/settings_ex/DockSettings$2;->this$0:Lcom/android/settings_ex/DockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/settings_ex/DockSettings$2;->this$0:Lcom/android/settings_ex/DockSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "desk_home_screen_display"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    new-instance v0, Lcom/android/settings_ex/DreamBackend;

    iget-object v1, p0, Lcom/android/settings_ex/DockSettings$2;->this$0:Lcom/android/settings_ex/DockSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 375
    .local v0, mBackend:Lcom/android/settings_ex/DreamBackend;
    invoke-virtual {v0}, Lcom/android/settings_ex/DreamBackend;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DreamBackend;->setEnabled(Z)V

    .line 377
    :cond_0
    return-void
.end method
