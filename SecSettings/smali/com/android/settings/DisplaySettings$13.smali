.class Lcom/android/settings_ex/DisplaySettings$13;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DisplaySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
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
    .line 1425
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$13;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$13;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "desk_home_screen_display"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1429
    new-instance v0, Lcom/android/settings_ex/DreamBackend;

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$13;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DreamBackend;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DreamBackend;->setEnabled(Z)V

    .line 1430
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$13;->this$0:Lcom/android/settings_ex/DisplaySettings;

    #calls: Lcom/android/settings_ex/DisplaySettings;->updateScreenSaverSummary()V
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$800(Lcom/android/settings_ex/DisplaySettings;)V

    .line 1431
    return-void
.end method
