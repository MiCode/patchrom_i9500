.class Lcom/android/settings_ex/SoundSettings$6;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SoundSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SoundSettings;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 581
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    #calls: Lcom/android/settings_ex/SoundSettings;->setSystemSound()V
    invoke-static {v1}, Lcom/android/settings_ex/SoundSettings;->access$800(Lcom/android/settings_ex/SoundSettings;)V

    .line 584
    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    #calls: Lcom/android/settings_ex/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/SoundSettings;->access$900(Lcom/android/settings_ex/SoundSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vibrate"

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    #calls: Lcom/android/settings_ex/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/SoundSettings;->access$900(Lcom/android/settings_ex/SoundSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mute"

    if-ne v1, v2, :cond_2

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/SoundSettings;->access$1000(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 589
    :cond_1
    :goto_0
    return-void

    .line 587
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/SoundSettings;->access$1000(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
