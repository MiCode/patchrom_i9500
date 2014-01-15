.class public final Lcom/android/settings_ex/ContextualPageEnabler;
.super Ljava/lang/Object;
.source "ContextualPageEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextualPageEnabler"


# instance fields
.field private mCheck:I

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/settings_ex/ContextualPageEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ContextualPageEnabler$1;-><init>(Lcom/android/settings_ex/ContextualPageEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.CONTEXTUALPAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ContextualPageEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 141
    iget-object v9, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_s_pen"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 142
    .local v5, SpenScreen:I
    iget-object v9, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_earphone"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 143
    .local v3, EarphoneScreen:I
    iget-object v9, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_audio_dock"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 144
    .local v2, DockScreen:I
    iget-object v9, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_car_cradle"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 145
    .local v0, CarCardleScreen:I
    iget-object v9, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_desk_cardle"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 146
    .local v1, DeskCradleScreen:I
    iget-object v9, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_roaming"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 149
    .local v4, RoamingScreen:I
    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v4, :cond_0

    move v6, v7

    .line 156
    .local v6, retVal:Z
    :goto_0
    if-eqz v6, :cond_1

    if-nez v2, :cond_1

    move v6, v7

    .line 159
    :goto_1
    const-string v7, "ContextualPageEnabler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAllOptionDisabled() : SpenScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " EarphoneSCreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " DockScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " CarCardleScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " DeskCradleScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RoamingScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " retVal : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v6

    .end local v6           #retVal:Z
    :cond_0
    move v6, v8

    .line 149
    goto :goto_0

    .restart local v6       #retVal:Z
    :cond_1
    move v6, v8

    .line 156
    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_page"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, state:I
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 130
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_page"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    const-string v1, "ContextualPageEnabler"

    const-string v2, "switch is on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    if-nez p2, :cond_0

    if-ne v0, v4, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_page"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    const-string v1, "ContextualPageEnabler"

    const-string v2, "switch is off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CONTEXTUALPAGE_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ContextualPageEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v1, "ContextualPageEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contextual page = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contextual_page"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mCheck:I

    iget-object v2, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 93
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void

    .line 95
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

    .line 67
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_page"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, state:I
    const-string v1, "ContextualPageEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput v0, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mCheck:I

    .line 71
    if-ne v0, v3, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 73
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.CONTEXTUALPAGE_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/ContextualPageEnabler;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    iput-object p1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    .line 107
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_page"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, state:I
    if-ne v0, v3, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 123
    :goto_1
    const-string v1, "ContextualPageEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contextualpage State ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/ContextualPageEnabler;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method
