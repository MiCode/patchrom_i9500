.class public final Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;
.super Ljava/lang/Object;
.source "PowerSavingEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerSavingEnabler"


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mCheck:I

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsInMainMenu:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSupportBrowser:Z

.field private mSwitch:Lmiui/widget/SlidingButton;

.field private mSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    .line 50
    iput-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mIsInMainMenu:Z

    .line 57
    iput-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 59
    new-instance v0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;-><init>(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-object p1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    const-string v1, "com.android.browser"

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSupportBrowser:Z

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->refresh_SwitchPreference()V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/widget/SlidingButton;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    .line 50
    iput-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mIsInMainMenu:Z

    .line 57
    iput-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 59
    new-instance v0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$1;-><init>(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iput-object p1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    const-string v1, "com.android.browser"

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSupportBrowser:Z

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/widget/SlidingButton;Z)V
    .locals 0
    .parameter "context"
    .parameter "switch_"
    .parameter "in_main_menu"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Lmiui/widget/SlidingButton;)V

    .line 112
    iput-boolean p3, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mIsInMainMenu:Z

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Lmiui/widget/SlidingButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Landroid/preference/SwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 250
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090f9a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090b0f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler$2;-><init>(Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 264
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 268
    iget-object v6, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_switch"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 269
    .local v4, powersavingState:I
    iget-object v6, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_cpu_clock"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 270
    .local v1, cpu:I
    iget-object v6, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_display"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 271
    .local v2, display:I
    iget-object v6, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_background_colour"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 272
    .local v0, back:I
    iget-object v6, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_haptic_feedback"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 275
    .local v3, haptic:I
    const-string v6, "PowerSavingEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cpu : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", display : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", back : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", haptic : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    move v5, v7

    .line 280
    .local v5, retVal:Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    const-string v9, "vibrator"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 281
    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    move v5, v7

    .line 283
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSupportBrowser:Z

    if-eqz v6, :cond_1

    .line 284
    if-eqz v5, :cond_4

    if-nez v0, :cond_4

    move v5, v7

    .line 287
    :cond_1
    :goto_2
    return v5

    .end local v5           #retVal:Z
    :cond_2
    move v5, v8

    .line 278
    goto :goto_0

    .restart local v5       #retVal:Z
    :cond_3
    move v5, v8

    .line 281
    goto :goto_1

    :cond_4
    move v5, v8

    .line 284
    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 291
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 299
    .local v0, powersavingState:I
    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mIsInMainMenu:Z

    if-eqz v1, :cond_1

    .line 301
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->showAllOptionDisabledDialog()V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v4}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 304
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    const-string v1, "PowerSavingEnabler"

    const-string v2, "switch is on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    :cond_2
    if-nez p2, :cond_0

    if-ne v0, v4, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 311
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    const-string v1, "PowerSavingEnabler"

    const-string v2, "switch is off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 320
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 322
    .local v1, powersavingState:I
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 330
    .local v0, isChecked:Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 331
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 332
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    const-string v2, "PowerSavingEnabler"

    const-string v3, "switch is on"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    :goto_0
    return v4

    .line 336
    :cond_1
    if-nez v0, :cond_0

    if-ne v1, v4, :cond_0

    .line 337
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 338
    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    const-string v2, "PowerSavingEnabler"

    const-string v3, "switch is off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PowerSavingEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v1, "PowerSavingEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSM_SWITCH = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_switch"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mCheck:I

    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 189
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    return-void

    .line 191
    :cond_1
    const-string v1, "changed"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public refresh_SwitchPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 201
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 203
    .local v0, powersavingState:I
    if-ne v0, v3, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 215
    :cond_0
    :goto_0
    const-string v1, "PowerSavingEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powersavingState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 128
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, powersavingState:I
    const-string v1, "PowerSavingEnabler"

    const-string v2, "resume()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    if-nez v1, :cond_0

    const-string v1, "PowerSavingEnabler"

    const-string v2, "mSwitch == null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    const-string v1, "PowerSavingEnabler"

    const-string v2, "mSwitchPref == null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    iput v0, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mCheck:I

    .line 133
    if-ne v0, v3, :cond_6

    .line 134
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 142
    :cond_3
    const-string v1, "PowerSavingEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    if-eqz v1, :cond_5

    .line 177
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.POWERSAVING_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    return-void

    .line 144
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    if-eqz v1, :cond_7

    .line 145
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v4}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 147
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    .line 148
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSwitch(Lmiui/widget/SlidingButton;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 219
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    if-ne v1, p1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 223
    iput-object p1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    .line 224
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 226
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 228
    .local v0, powersavingState:I
    if-ne v0, v3, :cond_1

    .line 229
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 230
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 241
    :goto_1
    const-string v1, "PowerSavingEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powersavingState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerSavingEnabler;->mSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v4}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_1
.end method
