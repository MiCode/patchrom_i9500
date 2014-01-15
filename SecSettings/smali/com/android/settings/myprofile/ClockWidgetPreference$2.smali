.class Lcom/android/settings_ex/myprofile/ClockWidgetPreference$2;
.super Ljava/lang/Object;
.source "ClockWidgetPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myprofile/ClockWidgetPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myprofile/ClockWidgetPreference;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference$2;->this$0:Lcom/android/settings_ex/myprofile/ClockWidgetPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x0

    .line 188
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference$2;->this$0:Lcom/android/settings_ex/myprofile/ClockWidgetPreference;

    #getter for: Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mDualclock:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->access$100(Lcom/android/settings_ex/myprofile/ClockWidgetPreference;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference$2;->this$0:Lcom/android/settings_ex/myprofile/ClockWidgetPreference;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->access$000(Lcom/android/settings_ex/myprofile/ClockWidgetPreference;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dualclock_menu_settings"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 189
    return-void
.end method
