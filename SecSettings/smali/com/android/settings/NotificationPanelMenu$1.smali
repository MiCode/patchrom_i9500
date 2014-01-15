.class Lcom/android/settings_ex/NotificationPanelMenu$1;
.super Landroid/database/ContentObserver;
.source "NotificationPanelMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/NotificationPanelMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/NotificationPanelMenu;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/NotificationPanelMenu;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings_ex/NotificationPanelMenu$1;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    .line 89
    iget-object v1, p0, Lcom/android/settings_ex/NotificationPanelMenu$1;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    #getter for: Lcom/android/settings_ex/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/NotificationPanelMenu;->access$000(Lcom/android/settings_ex/NotificationPanelMenu;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/NotificationPanelMenu$1;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_panel_brightness_adjustment"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
