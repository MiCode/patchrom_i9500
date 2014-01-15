.class public final Lcom/android/settings_ex/dormantmode/DormantModeEnabler;
.super Landroid/preference/PreferenceActivity;
.source "DormantModeEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DormantModeEnabler"


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

    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mIsInMainMenu:Z

    .line 34
    iput-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 35
    iput v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mPosition:I

    .line 37
    iput-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 38
    new-instance v0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dormantmode/DormantModeEnabler$1;-><init>(Lcom/android/settings_ex/dormantmode/DormantModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 54
    iput v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->state:I

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Z)V
    .locals 0
    .parameter "context"
    .parameter "switch_"
    .parameter "in_main_menu"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 61
    iput-boolean p3, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mIsInMainMenu:Z

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/dormantmode/DormantModeEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/dormantmode/DormantModeEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/dormantmode/DormantModeEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mPosition:I

    return v0
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 187
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09109b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091087

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/dormantmode/DormantModeEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/dormantmode/DormantModeEnabler$2;-><init>(Lcom/android/settings_ex/dormantmode/DormantModeEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 207
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 211
    iget-object v5, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_incoming_calls"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 212
    .local v1, incoming:I
    iget-object v5, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_notifications"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 213
    .local v3, notification:I
    iget-object v5, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_alarm_and_timer"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 214
    .local v0, alarm:I
    iget-object v5, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dormant_disable_led_indicator"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 219
    .local v2, indicator:I
    const-string v5, "DormantModeEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllOptionDisabled()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 221
    const/4 v4, 0x1

    .line 223
    :cond_0
    return v4
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 159
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 161
    .local v1, state:I
    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->isAllOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mIsInMainMenu:Z

    if-eqz v2, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->showAllOptionDisabledDialog()V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 166
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    const-string v2, "DormantModeEnabler"

    const-string v3, "switch is on"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 171
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    if-nez p2, :cond_0

    if-ne v1, v5, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 173
    const/4 v1, 0x0

    .line 174
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    const-string v2, "DormantModeEnabler"

    const-string v3, "switch is off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DormantModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v1, "DormantModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DORMANTMODE_ONOFF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_switch_onoff"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mCheck:I

    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 120
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    return-void

    .line 122
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

    .line 91
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, state:I
    const-string v1, "DormantModeEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput v0, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mCheck:I

    .line 96
    if-ne v0, v3, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 98
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "header"
    .parameter "position"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 67
    iput p2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mPosition:I

    .line 68
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 134
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 138
    iput-object p1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 139
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, state:I
    if-ne v0, v3, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 155
    :goto_1
    const-string v1, "DormantModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch DORMANTMODE_ONOFF ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    return-void
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dormant_switch_onoff"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 73
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 75
    .local v0, isChecked:Z
    const-string v2, "DormantModeEnabler"

    const-string v3, "updateSwitch"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    if-ne v1, v5, :cond_1

    .line 79
    if-nez v0, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    if-eqz v0, :cond_0

    .line 84
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
