.class public final Lcom/android/settings_ex/DrivingModeEnabler;
.super Landroid/preference/PreferenceActivity;
.source "DrivingModeEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final KEY_DRIVING_MODE:Ljava/lang/String; = "driving_mode_settings"

.field private static final TAG:Ljava/lang/String; = "DrivingModeEnabler"


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mCheck:I

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsInMainMenu:Z

.field private mPosition:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mIsInMainMenu:Z

    .line 35
    iput-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 36
    iput v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mPosition:I

    .line 38
    iput-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 39
    new-instance v0, Lcom/android/settings_ex/DrivingModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DrivingModeEnabler$1;-><init>(Lcom/android/settings_ex/DrivingModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    iput-object p1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 55
    iput v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->state:I

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.DRIVINGMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Z)V
    .locals 0
    .parameter "context"
    .parameter "switch_"
    .parameter "in_main_menu"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DrivingModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 62
    iput-boolean p3, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mIsInMainMenu:Z

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DrivingModeEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DrivingModeEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DrivingModeEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mPosition:I

    return v0
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 176
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0909a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0909a5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/DrivingModeEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/DrivingModeEnabler$2;-><init>(Lcom/android/settings_ex/DrivingModeEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 196
    return-void
.end method


# virtual methods
.method public areAllDrivingModeOptionsDisabled()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 199
    iget-object v8, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_incoming_call_notification"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 200
    .local v2, incomingCall:I
    iget-object v8, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_message_notification"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 201
    .local v3, message:I
    iget-object v8, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_email_notification"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 202
    .local v1, email:I
    iget-object v8, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_voice_mail_notification"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 203
    .local v6, voiceMail:I
    iget-object v8, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_alarm_notification"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 204
    .local v0, alarm:I
    iget-object v8, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_schedule_notification"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 205
    .local v4, scheduleNotification:I
    iget-object v8, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_unlock_screen_contents"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 207
    .local v5, unlockScreen:I
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-nez v6, :cond_0

    if-nez v0, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 209
    const/4 v7, 0x1

    .line 211
    :cond_0
    return v7
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 150
    .local v1, state:I
    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/settings_ex/DrivingModeEnabler;->areAllDrivingModeOptionsDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mIsInMainMenu:Z

    if-eqz v2, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/android/settings_ex/DrivingModeEnabler;->showAllOptionDisabledDialog()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 155
    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    const-string v2, "DrivingModeEnabler"

    const-string v3, "switch is on"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.DRIVINGMODE_SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    if-nez p2, :cond_0

    if-ne v1, v5, :cond_0

    .line 161
    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 162
    const/4 v1, 0x0

    .line 163
    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    const-string v2, "DrivingModeEnabler"

    const-string v3, "switch is off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.DRIVINGMODE_SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DRIVINGMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DrivingModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v1, "DrivingModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DRIVINGTMODE_ONOFF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mCheck:I

    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 115
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    return-void

    .line 117
    :cond_0
    const-string v1, "changed"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 92
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, state:I
    const-string v1, "DrivingModeEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput v0, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mCheck:I

    .line 97
    if-ne v0, v3, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.DRIVINGMODE_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 68
    iput p2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mPosition:I

    .line 69
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 129
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    iput-object p1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 134
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, state:I
    if-ne v0, v3, :cond_1

    .line 139
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 144
    :goto_1
    const-string v1, "DrivingModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch DRIVINGMODE_ONOFF ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    return-void
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 74
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 76
    .local v0, isChecked:Z
    const-string v2, "DrivingModeEnabler"

    const-string v3, "updateSwitch"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    if-ne v1, v5, :cond_1

    .line 80
    if-nez v0, :cond_0

    .line 81
    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    if-eqz v0, :cond_0

    .line 85
    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
