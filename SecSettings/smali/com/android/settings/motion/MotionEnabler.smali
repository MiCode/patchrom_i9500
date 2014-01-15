.class public final Lcom/android/settings_ex/motion/MotionEnabler;
.super Ljava/lang/Object;
.source "MotionEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionEnabler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 41
    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 44
    iput-object p1, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/motion/MotionEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/motion/MotionEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings_ex/motion/MotionEnabler;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/motion/MotionEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    return-void
.end method

.method private showMotionUnlockDialog(I)V
    .locals 4
    .parameter "message_res_id"

    .prologue
    const/4 v3, 0x0

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 114
    iput-object v3, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 117
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090bde

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090699

    new-instance v2, Lcom/android/settings_ex/motion/MotionEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/motion/MotionEnabler$1;-><init>(Lcom/android/settings_ex/motion/MotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090143

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings_ex/motion/MotionEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/motion/MotionEnabler$2;-><init>(Lcom/android/settings_ex/motion/MotionEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 137
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 78
    if-nez p2, :cond_7

    .line 79
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v2, 0x0

    .line 81
    .local v2, motion_unlock:Z
    const/4 v0, 0x0

    .line 82
    .local v0, camera_short_cut:Z
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_motion_tilt_to_unlock"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const/4 v2, 0x1

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "motion_unlock_camera_short_cut"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    const/4 v0, 0x1

    .line 92
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 93
    const v3, 0x7f090c34

    invoke-direct {p0, v3}, Lcom/android/settings_ex/motion/MotionEnabler;->showMotionUnlockDialog(I)V

    .line 108
    .end local v0           #camera_short_cut:Z
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #motion_unlock:Z
    :goto_0
    return-void

    .line 94
    .restart local v0       #camera_short_cut:Z
    .restart local v1       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .restart local v2       #motion_unlock:Z
    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 95
    const v3, 0x7f090c33

    invoke-direct {p0, v3}, Lcom/android/settings_ex/motion/MotionEnabler;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 96
    :cond_3
    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 97
    const v3, 0x7f090c32

    invoke-direct {p0, v3}, Lcom/android/settings_ex/motion/MotionEnabler;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 99
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "master_motion"

    if-eqz p2, :cond_5

    move v3, v4

    :goto_1
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "motion_engine"

    if-eqz p2, :cond_6

    :goto_2
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    invoke-direct {p0, p2}, Lcom/android/settings_ex/motion/MotionEnabler;->broadcastMotionChanged(Z)V

    goto :goto_0

    :cond_5
    move v3, v5

    .line 99
    goto :goto_1

    :cond_6
    move v4, v5

    .line 100
    goto :goto_2

    .line 104
    .end local v0           #camera_short_cut:Z
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #motion_unlock:Z
    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "master_motion"

    if-eqz p2, :cond_8

    move v3, v4

    :goto_3
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    iget-object v3, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "motion_engine"

    if-eqz p2, :cond_9

    :goto_4
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    invoke-direct {p0, p2}, Lcom/android/settings_ex/motion/MotionEnabler;->broadcastMotionChanged(Z)V

    goto :goto_0

    :cond_8
    move v3, v5

    .line 104
    goto :goto_3

    :cond_9
    move v4, v5

    .line 105
    goto :goto_4
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    iput-object p1, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 62
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, motionState:I
    if-ne v0, v4, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
