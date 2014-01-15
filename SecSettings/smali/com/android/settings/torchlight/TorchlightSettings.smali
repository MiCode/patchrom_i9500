.class public Lcom/android/settings_ex/torchlight/TorchlightSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "TorchlightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/torchlight/TorchlightSettings$OrientationObserver;
    }
.end annotation


# static fields
.field private static final DIALOG_ERASE_BACKUP:I = 0x2

.field private static FALLBACK_TORCHLIGHT_TIMEOUT_VALUE:I = 0x0

.field private static final KEY_TORCHLIGHT_ENABLE:Ljava/lang/String; = "torchlight_enable"

.field private static final KEY_TORCHLIGHT_TIMEOUT:Ljava/lang/String; = "torchlight_timeout"

.field private static final TAG:Ljava/lang/String; = "TorchlightSettings"

.field public static final TORCH_FILE:Ljava/lang/String; = "/sys/devices/virtual/torch/torch/torch_ctl"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDialogType:I

.field private mOrientationObserver:Lcom/android/settings_ex/torchlight/TorchlightSettings$OrientationObserver;

.field private mTorchEnable:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x7530

    sput v0, Lcom/android/settings_ex/torchlight/TorchlightSettings;->FALLBACK_TORCHLIGHT_TIMEOUT_VALUE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/torchlight/TorchlightSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/torchlight/TorchlightSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/torchlight/TorchlightSettings;->mTorchEnable:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private updateState(Z)V
    .locals 4
    .parameter "force"

    .prologue
    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lcom/android/settings_ex/torchlight/TorchlightSettings;->mTorchEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torchlight_enable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 104
    return-void
.end method


# virtual methods
.method public TorchModeFlashSet(I)V
    .locals 7
    .parameter "torchTime"

    .prologue
    .line 140
    const-string v4, "TorchlightSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Torch Time Out ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 143
    .local v1, inputTime:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, out:Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/devices/virtual/torch/torch/torch_ctl"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v2           #out:Ljava/io/FileWriter;
    .local v3, out:Ljava/io/FileWriter;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 155
    if-eqz v3, :cond_0

    .line 157
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v2, v3

    .line 164
    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/io/IOException;
    :goto_2
    if-eqz v2, :cond_1

    .line 157
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 158
    :catch_1
    move-exception v4

    goto :goto_1

    .line 155
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_2

    .line 157
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 160
    :cond_2
    :goto_4
    throw v4

    .line 158
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 155
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    goto :goto_3

    .line 150
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, resolver:Landroid/content/ContentResolver;
    iput-object v0, p0, Lcom/android/settings_ex/torchlight/TorchlightSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 73
    new-instance v3, Lcom/android/settings_ex/torchlight/TorchlightSettings$OrientationObserver;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/torchlight/TorchlightSettings$OrientationObserver;-><init>(Lcom/android/settings_ex/torchlight/TorchlightSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/torchlight/TorchlightSettings;->mOrientationObserver:Lcom/android/settings_ex/torchlight/TorchlightSettings$OrientationObserver;

    .line 75
    const v3, 0x7f070089

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 76
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 78
    .local v1, screen:Landroid/preference/PreferenceScreen;
    const-string v3, "torchlight_enable"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/torchlight/TorchlightSettings;->mTorchEnable:Landroid/preference/CheckBoxPreference;

    .line 81
    const-string v3, "torchlight_timeout"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 83
    .local v2, torchTimePreference:Landroid/preference/ListPreference;
    const-string v3, "torchlight_timeout"

    sget v4, Lcom/android/settings_ex/torchlight/TorchlightSettings;->FALLBACK_TORCHLIGHT_TIMEOUT_VALUE:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, key:Ljava/lang/String;
    const-string v3, "torchlight_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    const/4 v3, 0x0

    .line 184
    .end local p2
    :goto_0
    return v3

    .line 175
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 177
    .local v2, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "torchlight_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v2           #value:I
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 179
    .restart local v2       #value:I
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "TorchlightSettings"

    const-string v4, "could not persist torch timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "torchlight_enable"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, flashEnable:I
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "torchlight_timeout"

    const/16 v6, 0x7530

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 124
    .local v1, flashTime:I
    iget-object v4, p0, Lcom/android/settings_ex/torchlight/TorchlightSettings;->mTorchEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "torchlight_enable"

    iget-object v6, p0, Lcom/android/settings_ex/torchlight/TorchlightSettings;->mTorchEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/torchlight/TorchlightSettings;->TorchModeFlashSet(I)V

    .line 135
    :goto_1
    return v3

    :cond_0
    move v2, v3

    .line 126
    goto :goto_0

    :cond_1
    move v3, v2

    .line 135
    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/torchlight/TorchlightSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "torchlight_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/torchlight/TorchlightSettings;->mOrientationObserver:Lcom/android/settings_ex/torchlight/TorchlightSettings$OrientationObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/torchlight/TorchlightSettings;->updateState(Z)V

    .line 94
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/torchlight/TorchlightSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings_ex/torchlight/TorchlightSettings;->mOrientationObserver:Lcom/android/settings_ex/torchlight/TorchlightSettings$OrientationObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 110
    return-void
.end method
