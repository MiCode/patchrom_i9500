.class public Lcom/android/settings_ex/SoundSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DIALOG_NOT_DOCKED:I = 0x1

.field public static final ERM_ACTUATOR:I = 0x0

.field private static final FALLBACK_EMERGENCY_TONE_VALUE:I = 0x0

.field public static final GPS_SET:Ljava/lang/String; = "GPSSoundSettings"

.field private static final KEY_AUTO_HAPTIC:Ljava/lang/String; = "autohaptic_settings"

.field private static final KEY_CATEGORY_CALLS:Ljava/lang/String; = "category_calls_and_notification"

.field private static final KEY_DOCK_AUDIO_MEDIA_ENABLED:Ljava/lang/String; = "dock_audio_media_enabled"

.field private static final KEY_DOCK_AUDIO_SETTINGS:Ljava/lang/String; = "dock_audio"

.field private static final KEY_DOCK_CATEGORY:Ljava/lang/String; = "dock_category"

.field private static final KEY_DOCK_SOUNDS:Ljava/lang/String; = "dock_sounds"

.field private static final KEY_DS_RING_TONE:Ljava/lang/String; = "ds_ring_tone"

.field private static final KEY_DTMF_TONE:Ljava/lang/String; = "dtmf_tone"

.field private static final KEY_EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field private static final KEY_GPS_NOTIFICATION_SOUNDS:Ljava/lang/String; = "gps_notification_sounds"

.field private static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback"

.field public static final KEY_LEVEL:Ljava/lang/String; = "reverb_level"

.field private static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "lock_sounds"

.field private static final KEY_MORE_SETTINGS:Ljava/lang/String; = "category_more_settings"

.field private static final KEY_MUSICFX:Ljava/lang/String; = "musicfx"

.field private static final KEY_MY_SOUND:Ljava/lang/String; = "my_sound"

.field private static final KEY_NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field private static final KEY_PHONE_PROFILE:Ljava/lang/String; = "phone_profile"

.field private static final KEY_PHONE_VIBRATION:Ljava/lang/String; = "phone_vibration"

.field public static final KEY_REVERB_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowDialog"

.field public static final KEY_REVERB_ENABLE:Ljava/lang/String; = "enable"

.field private static final KEY_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final KEY_RINGTONE2:Ljava/lang/String; = "ringtone2"

.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "sound_effects"

.field private static final KEY_SOUND_SETTINGS:Ljava/lang/String; = "sound_settings"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate_when_ringing"

.field public static final LRA_ACTUATOR:I = 0x2

.field private static final MENU_HELP:I = 0x1

.field private static final MSG_LOAD_SOUNDEFFECT:I = 0x3

.field private static final MSG_UNLOAD_SOUNDEFFECT:I = 0x4

.field private static final MSG_UPDATE_NOTIFICATION_SUMMARY:I = 0x2

.field private static final MSG_UPDATE_RINGTONE2_SUMMARY:I = 0x5

.field private static final MSG_UPDATE_RINGTONE_SUMMARY:I = 0x1

.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String; = null

.field public static final PIEZO_ACTUATOR:I = 0x4

.field private static final REQUEST_AUDIO_RINGTONE:I = 0x1

.field private static final REQUEST_AUDIO_RINGTONE_2:I = 0x2

.field public static final REVERB_SHARED_PREFS:Ljava/lang/String; = "com.android.settings_ex_reverb"

.field public static final REVERB_URI:Landroid/net/Uri; = null

.field private static final SILENT_MODE_MUTE:Ljava/lang/String; = "mute"

.field private static final SILENT_MODE_OFF:Ljava/lang/String; = "off"

.field private static final SILENT_MODE_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final SIM_CARD_ID:Ljava/lang/String; = "sim Id"

.field public static final SOUND_TITLE:Ljava/lang/String; = "sound title"

.field public static final TAB_INDEX_SIM:I = 0x0

.field public static final TAB_INDEX_SIM2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoundSettings"

.field private static myContext:Landroid/content/Context;


# instance fields
.field GpsSoundSettings:Landroid/content/SharedPreferences;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

.field private mAutoHapticDialog:Landroid/app/AlertDialog;

.field mAutoHapticNoPopup:Z

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

.field private mDockAudioSettings:Landroid/preference/Preference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field mEditor:Landroid/content/SharedPreferences$Editor;

.field private mGSMRingtone:Lcom/android/settings_ex/DefaultRingtonePreference;

.field private mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mLoadSoundEffectRunnable:Ljava/lang/Runnable;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMusicFx:Landroid/preference/Preference;

.field private mMySound:Landroid/preference/PreferenceScreen;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mPhoneProfile:Landroid/preference/Preference;

.field private mPhoneVibration:Landroid/preference/Preference;

.field private mProfileMode:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Lcom/android/settings_ex/DefaultRingtonePreference;

.field private mRingtone2Preference:Landroid/preference/Preference;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mRingtonePreference_DS:Landroid/preference/Preference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mVolume:Lcom/android/settings_ex/RingerVolumePreference;

.field private offset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ringtone2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .line 202
    const-string v0, "content://com.android.settings.reverb.params"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/SoundSettings;->REVERB_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 205
    iput-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 206
    iput-boolean v0, p0, Lcom/android/settings_ex/SoundSettings;->mAutoHapticNoPopup:Z

    .line 210
    iput v0, p0, Lcom/android/settings_ex/SoundSettings;->mDirect:I

    .line 211
    iput-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mDirectUri:Landroid/net/Uri;

    .line 229
    new-instance v0, Lcom/android/settings_ex/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SoundSettings$1;-><init>(Lcom/android/settings_ex/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mHandler:Landroid/os/Handler;

    .line 253
    new-instance v0, Lcom/android/settings_ex/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SoundSettings$2;-><init>(Lcom/android/settings_ex/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/SoundSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mLoadSoundEffectRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/SoundSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/SoundSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SoundSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/SoundSettings;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/SoundSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/settings_ex/SoundSettings;->setSystemSound()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/SoundSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/settings_ex/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .parameter "context"
    .parameter "ringtoneUri"

    .prologue
    .line 1134
    const-string v0, "SoundSettings"

    const-string v1, "inside canSetRingtone ringtone uri is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const/4 v0, 0x1

    return v0
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 949
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 950
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0904ca

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 951
    const v1, 0x7f0904cb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 952
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 953
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 658
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 651
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 653
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 655
    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 897
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 898
    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 900
    .local v0, dockState:I
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    move v1, v4

    .line 903
    .local v1, isBluetooth:Z
    :goto_0
    iput-object p1, p0, Lcom/android/settings_ex/SoundSettings;->mDockIntent:Landroid/content/Intent;

    .line 905
    if-eqz v0, :cond_6

    .line 908
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :goto_1
    if-eqz v1, :cond_2

    .line 914
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 938
    .end local v0           #dockState:I
    .end local v1           #isBluetooth:Z
    :cond_0
    :goto_2
    return-void

    .restart local v0       #dockState:I
    :cond_1
    move v1, v5

    .line 900
    goto :goto_0

    .line 916
    .restart local v1       #isBluetooth:Z
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 917
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 918
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 919
    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 921
    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 924
    :cond_3
    const-string v3, "dock_audio_media_enabled"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    .line 926
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 927
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    const-string v6, "dock_audio_media_enabled"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    .line 931
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 935
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 909
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private initDockSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 879
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 881
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/settings_ex/SoundSettings;->needsDockSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 882
    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    .line 883
    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 884
    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v1, "dock_sounds_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 886
    const-string v1, "dock_audio"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    .line 887
    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 894
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 884
    goto :goto_0

    .line 889
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_category"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 890
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_audio"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 891
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_sounds"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 892
    const-string v1, "dock_audio_media_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 739
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 740
    return-void
.end method

.method private needsDockSettings()Z
    .locals 1

    .prologue
    .line 875
    const/4 v0, 0x0

    return v0
.end method

.method private setSystemSound()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 695
    const-string v0, "off"

    invoke-direct {p0}, Lcom/android/settings_ex/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 697
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 698
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 704
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 701
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 702
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private startRingtoneSetting()V
    .locals 5

    .prologue
    .line 629
    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, SimState:Ljava/lang/String;
    const-string v3, "gsm.sim.state2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, SimState2:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 632
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings_ex"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string v3, "ABSENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ABSENT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 635
    const-string v3, "sound title"

    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 636
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings_ex.RingtoneSettingTabActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    :goto_0
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 646
    return-void

    .line 637
    :cond_0
    const-string v3, "1"

    const-string v4, "ril.MSIMM"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 639
    :cond_1
    const-string v3, "sim Id"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 640
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings_ex.DualSoundRingtoneSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 642
    :cond_2
    const-string v3, "sim Id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings_ex.DualSoundRingtoneSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12
    .parameter "originalUri"

    .prologue
    const/4 v6, 0x0

    .line 1140
    const-string v9, "SoundSettings"

    const-string v10, "UpdateMediaDB"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1142
    .local v3, filePath:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1143
    .local v2, extension:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1144
    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1145
    .local v0, dotPos:I
    if-ltz v0, :cond_0

    .line 1146
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1151
    .end local v0           #dotPos:I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1153
    .local v4, mimeType:Ljava/lang/String;
    const-string v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMediaDB - extension("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), mimeType("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    if-nez v4, :cond_2

    const-string v9, "3ga"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1158
    const-string v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMediaDB - no mimeType, but it\'s audio file extension - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1184
    .local v5, newSoundFile:Ljava/io/File;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1185
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "_data"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const-string v9, "title"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string v9, "mime_type"

    const-string v10, "audio/*"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string v9, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1190
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1191
    .local v7, tempUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_data=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1192
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1193
    .local v6, newUri:Landroid/net/Uri;
    const-string v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMediaDB - tempUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), newUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #newSoundFile:Ljava/io/File;
    .end local v6           #newUri:Landroid/net/Uri;
    .end local v7           #tempUri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    :goto_0
    return-object v6

    .line 1159
    .restart local v4       #mimeType:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v9, "audio"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1160
    const-string v9, "SoundSettings"

    const-string v10, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1163
    .end local v4           #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1164
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "SoundSettings"

    const-string v10, "updateMediaDB - exception is Occured - return null"

    invoke-static {v9, v10, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateRingtoneData(I)V
    .locals 3
    .parameter "ringtoneType"

    .prologue
    const/4 v1, 0x1

    .line 1199
    if-ne p1, v1, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-direct {p0, v1, v0, v1}, Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1205
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1206
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 10
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 707
    if-nez p2, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 709
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 710
    const/4 v1, 0x0

    .line 711
    .local v1, ringtoneUri:Landroid/net/Uri;
    const v0, 0x10405e4

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 713
    .local v9, summary:Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 718
    :goto_1
    if-nez v1, :cond_3

    .line 719
    const v0, 0x10405e2

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 735
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 714
    :catch_0
    move-exception v8

    .line 715
    .local v8, e:Ljava/lang/NullPointerException;
    const-string v0, "SoundSettings"

    const-string v2, "No data for ringtoneUri"

    invoke-static {v0, v2, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 723
    .end local v8           #e:Ljava/lang/NullPointerException;
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 725
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 726
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 727
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 729
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 731
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private updateState(Z)V
    .locals 10
    .parameter "force"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 663
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    .line 666
    .local v8, ringerMode:I
    const-string v1, "CTC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CMCC"

    const-string v2, "OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CHM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    :cond_2
    iget v1, p0, Lcom/android/settings_ex/SoundSettings;->mProfileMode:I

    if-nez v1, :cond_3

    .line 670
    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v2, 0x7f090b35

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 687
    :goto_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 688
    .local v9, values:Landroid/content/ContentValues;
    const-string v1, "profile_silent"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 689
    const-string v1, "content://com.android.settings/profile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/SoundSettings;->mProfileMode:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 690
    .local v6, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v6, v9, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 671
    .end local v6           #_uri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_3
    iget v1, p0, Lcom/android/settings_ex/SoundSettings;->mProfileMode:I

    if-ne v1, v3, :cond_4

    .line 672
    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v2, 0x7f090dee

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 673
    :cond_4
    iget v1, p0, Lcom/android/settings_ex/SoundSettings;->mProfileMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 674
    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v2, 0x7f090def

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 675
    :cond_5
    iget v1, p0, Lcom/android/settings_ex/SoundSettings;->mProfileMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 676
    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v2, 0x7f090df0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 677
    :cond_6
    iget v1, p0, Lcom/android/settings_ex/SoundSettings;->mProfileMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 678
    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v2, 0x7f090df1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 680
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 681
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "content://com.android.settings/profile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "profile_name"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings_ex/SoundSettings;->mProfileMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 682
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 683
    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const-string v2, "profile_name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 684
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 870
    const v0, 0x7f090a17

    return v0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 7
    .parameter "pickedUri"
    .parameter "ringtoneType"

    .prologue
    const v6, 0x7f0904c1

    const/4 v5, 0x0

    .line 1058
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1059
    :cond_0
    const-string v2, "SoundSettings"

    const-string v3, "handleRingtonePicked() : Not changed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_1
    :goto_0
    const-string v2, "SoundSettings"

    const-string v3, "updateRingtoneData(ringtoneType)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-direct {p0, p2}, Lcom/android/settings_ex/SoundSettings;->updateRingtoneData(I)V

    .line 1101
    :goto_1
    return-void

    .line 1068
    :cond_2
    const-string v2, "SoundSettings"

    const-string v3, "handleRingtonePicked updating media DB"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1070
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SoundSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1072
    if-nez p1, :cond_3

    .line 1073
    const-string v2, "SoundSettings"

    const-string v3, "handleRingtonePicked - pickedUri is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1079
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1080
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1083
    const-string v2, "SoundSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingtonePicked - pickedUri("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ringtoneType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings;->offset:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1091
    const/16 v2, 0x8

    if-ne p2, v2, :cond_4

    .line 1092
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time_2"

    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "SoundSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingtonePicked(IllegalArgumentException): pickedUri is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1095
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time"

    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 1012
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1014
    packed-switch p1, :pswitch_data_0

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1016
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 1017
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1018
    .local v1, pickedUri:Landroid/net/Uri;
    const-string v3, "highlight_offset"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/SoundSettings;->offset:Ljava/lang/String;

    .line 1019
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->offset:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1020
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?highlight_offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->offset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, paramaterString:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1022
    .local v2, splitUri:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1024
    .end local v0           #paramaterString:Ljava/lang/String;
    .end local v2           #splitUri:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ex/SoundSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1029
    .end local v1           #pickedUri:Landroid/net/Uri;
    :pswitch_1
    if-ne p2, v3, :cond_0

    .line 1030
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1031
    .restart local v1       #pickedUri:Landroid/net/Uri;
    const-string v3, "highlight_offset"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/SoundSettings;->offset:Ljava/lang/String;

    .line 1032
    iget-object v3, p0, Lcom/android/settings_ex/SoundSettings;->offset:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?highlight_offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->offset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    .restart local v0       #paramaterString:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1035
    .restart local v2       #splitUri:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1037
    .end local v0           #paramaterString:Ljava/lang/String;
    .end local v2           #splitUri:Ljava/lang/String;
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ex/SoundSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1014
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .parameter "savedInstanceState"

    .prologue
    .line 267
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 269
    .local v17, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    .line 271
    .local v3, activePhoneType:I
    const-string v20, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/media/AudioManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 273
    const v20, 0x7f07007e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 277
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 281
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 282
    const-string v20, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/android/settings_ex/DefaultRingtonePreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mRingtone:Lcom/android/settings_ex/DefaultRingtonePreference;

    .line 286
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mRingtone:Lcom/android/settings_ex/DefaultRingtonePreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DefaultRingtonePreference;->setObject(Lcom/android/settings_ex/SoundSettings;)V

    .line 287
    const-string v20, "ringtone2"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/android/settings_ex/DefaultRingtonePreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mGSMRingtone:Lcom/android/settings_ex/DefaultRingtonePreference;

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mGSMRingtone:Lcom/android/settings_ex/DefaultRingtonePreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DefaultRingtonePreference;->setObject(Lcom/android/settings_ex/SoundSettings;)V

    .line 289
    const-string v20, "ring_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/android/settings_ex/RingerVolumePreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mVolume:Lcom/android/settings_ex/RingerVolumePreference;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mVolume:Lcom/android/settings_ex/RingerVolumePreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/RingerVolumePreference;->setObject(Lcom/android/settings_ex/SoundSettings;)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 293
    .local v4, activity:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mDirectUri:Landroid/net/Uri;

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mDirectUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mDirectUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/SoundSettings;->mDirect:I

    .line 296
    const-string v20, "Direct"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mDirect : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SoundSettings;->mDirect:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const-string v21, "com.android.settings_ex"

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v20

    sput-object v20, Lcom/android/settings_ex/SoundSettings;->myContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_1
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v0, v3, :cond_2

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    const-string v21, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0001

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-nez v20, :cond_3

    .line 316
    const-string v20, "ring_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 320
    :cond_3
    const-string v20, "gps_notification_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    const-string v20, "vibrate_when_ringing"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "vibrate_when_ringing"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_d

    const/16 v20, 0x1

    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 330
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v20

    const-string v21, "vibrate"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v20

    const-string v21, "mute"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 331
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 335
    :goto_3
    const-string v20, "dtmf_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "dtmf_tone"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_f

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 339
    const-string v20, "sound_effects"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "sound_effects_enabled"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_10

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 343
    const-string v20, "haptic_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "haptic_feedback_enabled"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_11

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 351
    const-string v20, "lock_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "lockscreen_sounds_enabled"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_12

    const/16 v20, 0x1

    :goto_7
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 356
    const-string v20, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 357
    const-string v20, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 358
    const-string v20, "ds_ring_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 359
    const-string v20, "ringtone2"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    .line 361
    const-string v20, "autohaptic_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 364
    const-string v20, "phone_vibration"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    .line 366
    const-string v20, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/Vibrator;

    .line 367
    .local v19, vibrator:Landroid/os/Vibrator;
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v20

    if-nez v20, :cond_13

    .line 368
    :cond_5
    const-string v20, "vibrate_when_ringing"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 369
    const-string v20, "haptic_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    const-string v21, "vibration_feedback_intensity"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 371
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    :cond_6
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 388
    const-string v20, "vibrate_when_ringing"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 391
    :cond_7
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v0, v3, :cond_8

    .line 392
    const-string v20, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    .line 394
    .local v9, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v20, "emergency_tone"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 420
    .end local v9           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 421
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 424
    const-string v20, "sound_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    const-string v21, "phone_profile"

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    .line 427
    const-string v20, "CTC"

    const-string v21, "ro.csc.sales_code"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    const-string v20, "CMCC"

    const-string v21, "OPEN"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    const-string v20, "CHM"

    const-string v21, "ro.csc.sales_code"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    const-string v21, "musicfx"

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    .line 434
    new-instance v10, Landroid/content/Intent;

    const-string v20, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v10, i:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 436
    .local v13, p:Landroid/content/pm/PackageManager;
    const/16 v20, 0x200

    move/from16 v0, v20

    invoke-virtual {v13, v10, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 437
    .local v18, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_a

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 446
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_16

    .line 447
    sget-object v5, Lcom/android/settings_ex/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_9
    if-ge v11, v12, :cond_15

    aget-object v15, v5, v11

    .line 448
    .local v15, prefKey:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 449
    .local v14, pref:Landroid/preference/Preference;
    if-eqz v14, :cond_b

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 447
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 284
    .end local v4           #activity:Landroid/content/Intent;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i:Landroid/content/Intent;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #p:Landroid/content/pm/PackageManager;
    .end local v14           #pref:Landroid/preference/Preference;
    .end local v15           #prefKey:Ljava/lang/String;
    .end local v18           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19           #vibrator:Landroid/os/Vibrator;
    :cond_c
    const-string v20, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/android/settings_ex/DefaultRingtonePreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mRingtone:Lcom/android/settings_ex/DefaultRingtonePreference;

    goto/16 :goto_0

    .line 304
    .restart local v4       #activity:Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 305
    .local v8, e:Ljava/lang/Exception;
    const-string v20, "SoundSettings"

    const-string v21, "GPS sound settings: error getting activity of create package context"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 327
    .end local v8           #e:Ljava/lang/Exception;
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 333
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 337
    :cond_f
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 341
    :cond_10
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 345
    :cond_11
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 353
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 381
    .restart local v19       #vibrator:Landroid/os/Vibrator;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_14

    .line 382
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 384
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 453
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v10       #i:Landroid/content/Intent;
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #p:Landroid/content/pm/PackageManager;
    .restart local v18       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_15
    const-string v20, "category_calls_and_notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 454
    .local v6, callsAndNotificationCategory:Landroid/preference/PreferenceCategory;
    const v20, 0x7f090862

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 457
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v6           #callsAndNotificationCategory:Landroid/preference/PreferenceCategory;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :cond_16
    new-instance v20, Lcom/android/settings_ex/SoundSettings$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SoundSettings$3;-><init>(Lcom/android/settings_ex/SoundSettings;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 475
    new-instance v20, Lcom/android/settings_ex/SoundSettings$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SoundSettings$4;-><init>(Lcom/android/settings_ex/SoundSettings;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mLoadSoundEffectRunnable:Ljava/lang/Runnable;

    .line 482
    new-instance v20, Lcom/android/settings_ex/SoundSettings$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SoundSettings$5;-><init>(Lcom/android/settings_ex/SoundSettings;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

    .line 491
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 492
    .local v7, download_contents:Ljava/lang/String;
    const-string v20, "Ringtone"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_17

    .line 493
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    const-string v21, "download_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 496
    :cond_17
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v20

    if-eqz v20, :cond_18

    .line 498
    const-string v20, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/ListPreference;

    .line 499
    .local v16, removable:Landroid/preference/ListPreference;
    if-eqz v16, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 502
    .end local v16           #removable:Landroid/preference/ListPreference;
    :cond_18
    const-string v20, "my_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SoundSettings;->mMySound:Landroid/preference/PreferenceScreen;

    .line 522
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SoundSettings;->initDockSettings()V

    .line 523
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 942
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 943
    invoke-direct {p0}, Lcom/android/settings_ex/SoundSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 945
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 1214
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1216
    const/4 v0, 0x1

    const v1, 0x7f090f77

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02017d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1218
    return-void
.end method

.method public onMusicPickerChosen(I)V
    .locals 3
    .parameter "ringtoneType"

    .prologue
    const/4 v2, 0x1

    .line 1044
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1045
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1048
    const-string v1, "enable_ringtone_recommender"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1049
    if-ne p1, v2, :cond_0

    .line 1050
    invoke-virtual {p0, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1055
    :goto_0
    return-void

    .line 1053
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1229
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1224
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1225
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "ringtone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1226
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1227
    const/4 v1, 0x1

    goto :goto_0

    .line 1222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 616
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 618
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 620
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 626
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 830
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 831
    .local v5, key:Ljava/lang/String;
    const-string v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceChange : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const-string v9, "emergency_tone"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 834
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 835
    .local v6, value:I
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "emergency_tone"

    invoke-static {v7, v9, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    .end local v6           #value:I
    :cond_0
    :goto_0
    return v8

    .line 837
    :catch_0
    move-exception v2

    .line 838
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v7, "SoundSettings"

    const-string v9, "could not persist emergency tone setting"

    invoke-static {v7, v9, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 840
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v9, "autohaptic_settings"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 841
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 843
    .local v4, enable:Z
    if-eqz v4, :cond_2

    .line 845
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "com.android.settings_ex_reverb"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 846
    .local v0, ReverbSharedPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_2

    .line 847
    const-string v9, "DoNotShowDialog"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 848
    .local v1, doNotShow:Z
    if-nez v1, :cond_2

    iget-boolean v9, p0, Lcom/android/settings_ex/SoundSettings;->mAutoHapticNoPopup:Z

    if-nez v9, :cond_2

    .line 849
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->showGuideDialog()V

    .line 851
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 852
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v9, "com.ensight.android.radioalarm"

    const-string v10, "disabled"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 853
    const-string v9, "com.google.android.apps.books"

    const-string v10, "disabled"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 854
    const-string v9, "com.samsung.SMT"

    const-string v10, "disabled"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 855
    const-string v9, "com.google.android.tts"

    const-string v10, "disabled"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 856
    const-string v9, "com.sec.android.app.dmb"

    const-string v10, "disabled"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 857
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 861
    .end local v0           #ReverbSharedPrefs:Landroid/content/SharedPreferences;
    .end local v1           #doNotShow:Z
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_2
    iput-boolean v7, p0, Lcom/android/settings_ex/SoundSettings;->mAutoHapticNoPopup:Z

    .line 862
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    if-ne v4, v8, :cond_3

    move v7, v8

    :cond_3
    const/4 v10, 0x6

    const/4 v11, -0x1

    invoke-static {v9, v7, v10, v11}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->storeReverbSettings(Landroid/content/ContentResolver;III)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 744
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_2

    .line 745
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "vibrate_when_ringing"

    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 826
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    :goto_2
    return v6

    .line 745
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 747
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_4

    .line 748
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dtmf_tone"

    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 751
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_6

    .line 756
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "gps_noti_sound_enabled"

    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_4
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 758
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_b

    .line 759
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 760
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 761
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 762
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings_ex/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 774
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sound_effects_enabled"

    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    :goto_6
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 764
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 765
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings_ex/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 768
    :cond_8
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 769
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->loadSoundEffects()V

    goto :goto_5

    .line 771
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_5

    .line 774
    :cond_a
    const/4 v6, 0x0

    goto :goto_6

    .line 777
    :cond_b
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_d

    .line 778
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "haptic_feedback_enabled"

    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    :goto_7
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    const/4 v6, 0x0

    goto :goto_7

    .line 781
    :cond_d
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_f

    .line 782
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lockscreen_sounds_enabled"

    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    :goto_8
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    .line 785
    :cond_f
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    if-ne p2, v6, :cond_10

    .line 787
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 788
    :cond_10
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-ne p2, v6, :cond_16

    .line 789
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v7, "android.intent.extra.DOCK_STATE"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 793
    .local v0, dockState:I
    :goto_9
    if-nez v0, :cond_12

    .line 794
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_1

    .line 789
    .end local v0           #dockState:I
    :cond_11
    const/4 v0, 0x0

    goto :goto_9

    .line 796
    .restart local v0       #dockState:I
    :cond_12
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    if-eqz v6, :cond_13

    const/4 v4, 0x1

    .line 798
    .local v4, isBluetooth:Z
    :goto_a
    if-eqz v4, :cond_14

    .line 799
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 800
    .local v2, i:Landroid/content/Intent;
    const-string v6, "com.android.settings_ex.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/settings_ex/bluetooth/DockEventReceiver;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 802
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 796
    .end local v2           #i:Landroid/content/Intent;
    .end local v4           #isBluetooth:Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_a

    .line 804
    .restart local v4       #isBluetooth:Z
    :cond_14
    iget-object v5, p0, Lcom/android/settings_ex/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 805
    .local v5, ps:Landroid/preference/PreferenceScreen;
    invoke-virtual {v5}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 806
    .local v1, extras:Landroid/os/Bundle;
    const-string v7, "checked"

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "dock_audio_media_enabled"

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_15

    const/4 v6, 0x1

    :goto_b
    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 809
    invoke-super {p0, v5, v5}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 806
    :cond_15
    const/4 v6, 0x0

    goto :goto_b

    .line 812
    .end local v0           #dockState:I
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v4           #isBluetooth:Z
    .end local v5           #ps:Landroid/preference/PreferenceScreen;
    :cond_16
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_18

    .line 813
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dock_sounds_enabled"

    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v6, 0x1

    :goto_c
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_17
    const/4 v6, 0x0

    goto :goto_c

    .line 815
    :cond_18
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_1a

    .line 816
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dock_audio_media_enabled"

    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    :goto_d
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_19
    const/4 v6, 0x0

    goto :goto_d

    .line 818
    :cond_1a
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    if-ne p2, v6, :cond_1b

    .line 819
    invoke-direct {p0}, Lcom/android/settings_ex/SoundSettings;->startRingtoneSetting()V

    goto/16 :goto_1

    .line 820
    :cond_1b
    iget-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mMySound:Landroid/preference/PreferenceScreen;

    if-ne p2, v6, :cond_0

    .line 821
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.hearingadjust.launch"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 527
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 529
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 530
    .local v2, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 533
    iget v4, p0, Lcom/android/settings_ex/SoundSettings;->mDirect:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 534
    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mVolume:Lcom/android/settings_ex/RingerVolumePreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/RingerVolumePreference;->directVolume()V

    .line 545
    :cond_0
    :goto_0
    iput v6, p0, Lcom/android/settings_ex/SoundSettings;->mDirect:I

    .line 548
    const-string v4, "CTC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "CMCC"

    const-string v5, "OPEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "CHM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 551
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sound_profile_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/SoundSettings;->mProfileMode:I

    .line 554
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/settings_ex/SoundSettings;->updateState(Z)V

    .line 557
    invoke-direct {p0}, Lcom/android/settings_ex/SoundSettings;->lookupRingtoneNames()V

    .line 560
    invoke-virtual {p0}, Lcom/android/settings_ex/SoundSettings;->updateDeviceVibrationName()V

    .line 563
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.settings_ex_reverb"

    invoke-virtual {v4, v5, v7}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 564
    .local v0, ReverbSharedPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_3

    .line 565
    const-string v4, "enable"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 566
    .local v1, enable:Z
    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 567
    if-eqz v1, :cond_6

    .line 568
    iput-boolean v7, p0, Lcom/android/settings_ex/SoundSettings;->mAutoHapticNoPopup:Z

    .line 573
    .end local v1           #enable:Z
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 574
    invoke-direct {p0}, Lcom/android/settings_ex/SoundSettings;->setSystemSound()V

    .line 576
    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_4

    .line 577
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 578
    .local v3, mfilter:Landroid/content/IntentFilter;
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    new-instance v4, Lcom/android/settings_ex/SoundSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/SoundSettings$6;-><init>(Lcom/android/settings_ex/SoundSettings;)V

    iput-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 591
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 612
    .end local v3           #mfilter:Landroid/content/IntentFilter;
    :cond_4
    :goto_2
    return-void

    .line 536
    .end local v0           #ReverbSharedPrefs:Landroid/content/SharedPreferences;
    :cond_5
    iget v4, p0, Lcom/android/settings_ex/SoundSettings;->mDirect:I

    if-ne v4, v7, :cond_0

    .line 542
    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mRingtone:Lcom/android/settings_ex/DefaultRingtonePreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/DefaultRingtonePreference;->directRingtone()V

    goto/16 :goto_0

    .line 570
    .restart local v0       #ReverbSharedPrefs:Landroid/content/SharedPreferences;
    .restart local v1       #enable:Z
    :cond_6
    iput-boolean v6, p0, Lcom/android/settings_ex/SoundSettings;->mAutoHapticNoPopup:Z

    goto :goto_1

    .line 595
    .end local v1           #enable:Z
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_4

    .line 596
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 597
    .restart local v3       #mfilter:Landroid/content/IntentFilter;
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 598
    new-instance v4, Lcom/android/settings_ex/SoundSettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/SoundSettings$7;-><init>(Lcom/android/settings_ex/SoundSettings;)V

    iput-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 609
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 958
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 959
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 960
    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 961
    iput-object v6, p0, Lcom/android/settings_ex/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 964
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 965
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04005c

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 966
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b004a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 968
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f090e94

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 969
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 970
    const v4, 0x7f090e93

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 971
    const v4, 0x7f090699

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 972
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 973
    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 974
    iget-object v4, p0, Lcom/android/settings_ex/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings_ex/SoundSettings$8;

    invoke-direct {v5, p0, v2}, Lcom/android/settings_ex/SoundSettings$8;-><init>(Lcom/android/settings_ex/SoundSettings;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 987
    return-void
.end method

.method public updateDeviceVibrationName()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 991
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 994
    .local v7, temp:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 995
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 996
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 1001
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1003
    .restart local v6       #c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1004
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1005
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1006
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
