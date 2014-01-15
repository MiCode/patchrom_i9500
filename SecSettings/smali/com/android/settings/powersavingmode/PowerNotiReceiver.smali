.class public Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotiReceiver.java"


# static fields
.field private static final POWERSAVING_CHANGED:Ljava/lang/String; = "android.settings.POWERSAVING_CHANGED"

.field public static final PREF_SIOP_CLOCK:Ljava/lang/String; = "pref_siop_clock"

.field public static final PREF_SIOP_RENDERING:Ljava/lang/String; = "pref_siop_rendering"

.field private static final PSM_BACKUP_HAPTIC:Ljava/lang/String; = "psm_backup_haptic_feedback"

.field private static final TAG:Ljava/lang/String; = "PowerNotiReceiver"

.field private static mArmFreqLimitHelper:Landroid/os/DVFSHelper;

.field private static mSupportedArmFrequency:[I


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    sput-object v0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    .line 113
    sput-object v0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mSupportedArmFrequency:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private doCpuPowersaving()V
    .locals 7

    .prologue
    .line 115
    sget-object v0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "POWER_SAVING_MODE"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    .line 117
    sget-object v0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mSupportedArmFrequency:[I

    .line 118
    sget-object v0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mSupportedArmFrequency:[I

    if-nez v0, :cond_0

    .line 119
    const-string v0, "PowerNotiReceiver"

    const-string v1, "error : mSupportedArmFrequency == null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return-void

    .line 123
    :cond_0
    sget-object v0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    const-wide v1, 0x3fe6666666666666L

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximum(D)I

    move-result v6

    .line 124
    .local v6, max_cpu_clock:I
    const-string v0, "PowerNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max_cpu_clock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-lez v6, :cond_1

    .line 126
    sget-object v0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 130
    .end local v6           #max_cpu_clock:I
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psm_cpu_clock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 131
    sget-object v0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_0

    .line 133
    :cond_2
    const-string v0, "PowerNotiReceiver"

    const-string v1, "[PSM_CPU] , do not change CPU clock because PSM_CPU is unchecked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->restoreCpuPowersaving()V

    goto :goto_0
.end method

.method private doDisplayPowersaving()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 146
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_display"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 148
    .local v0, mPowerManager:Landroid/os/PowerManager;
    const-string v1, "PowerNotiReceiver"

    const-string v2, "doAction : doDisplayPowersaving"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    .line 162
    invoke-virtual {v0, v4}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 167
    .end local v0           #mPowerManager:Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v1, "PowerNotiReceiver"

    const-string v2, "[PSM_DISPLAY] , do not change UI rendering and brightness because PSM_DISPLAY is unchecked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->restoreDisplayPowersaving()V

    goto :goto_0
.end method

.method private doPowerSaveAction()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->doCpuPowersaving()V

    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->doDisplayPowersaving()V

    .line 104
    return-void
.end method

.method private restoreCpuPowersaving()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "PowerNotiReceiver"

    const-string v1, "restoreCpuPowersaving"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 143
    :cond_0
    return-void
.end method

.method private restoreDisplayPowersaving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 171
    .local v0, mPowerManager:Landroid/os/PowerManager;
    const-string v1, "PowerNotiReceiver"

    const-string v2, "restoreDisplayPowersaving"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    .line 186
    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 187
    return-void
.end method

.method private restoreHaptic()V
    .locals 6

    .prologue
    .line 204
    const-string v1, "PowerNotiReceiver"

    const-string v2, "restoreHaptic"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_backup_haptic_feedback"

    iget-object v3, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, restore_haptic:I
    const-string v1, "PowerNotiReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore_haptic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    return-void
.end method

.method private restorePowerSaveAction()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->restoreCpuPowersaving()V

    .line 108
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->restoreDisplayPowersaving()V

    .line 110
    return-void
.end method

.method private turnOffHaptic()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 191
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_haptic_feedback"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 193
    .local v0, backup_haptic:I
    const-string v1, "PowerNotiReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup the value before do action : backup_haptic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_backup_haptic_feedback"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    const-string v1, "PowerNotiReceiver"

    const-string v2, "doAction : turnOffHaptic"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    .end local v0           #backup_haptic:I
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string v1, "PowerNotiReceiver"

    const-string v2, "[PSM_HAPTIC] , do not disable HAPTIC_FEEDBACK because PSM_HAPTIC is unchecked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const v7, 0x7f090b0d

    const/4 v6, 0x1

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    iput-object p1, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    :cond_0
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    .line 57
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    iget-object v3, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_switch"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 59
    .local v1, powersavingState:I
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "powersavingState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    if-ne v1, v6, :cond_2

    .line 62
    iget-object v3, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 64
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    .line 98
    :cond_2
    :goto_0
    return-void

    .line 67
    :cond_3
    const-string v3, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    if-ne v1, v6, :cond_6

    .line 69
    const-string v3, "changed"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, strMsg:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 71
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 72
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v3, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    goto :goto_0

    .line 77
    :cond_4
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    goto :goto_0

    .line 85
    .end local v2           #strMsg:Ljava/lang/String;
    :cond_6
    const-string v3, "changed"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .restart local v2       #strMsg:Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 87
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 88
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_0

    .line 91
    :cond_7
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 94
    :cond_8
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_0
.end method
