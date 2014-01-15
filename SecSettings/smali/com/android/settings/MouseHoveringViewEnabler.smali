.class public final Lcom/android/settings_ex/MouseHoveringViewEnabler;
.super Ljava/lang/Object;
.source "MouseHoveringViewEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MouseHoveringViewEnabler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsTablet:Z

.field private mMouseHoveringObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v2, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mIsTablet:Z

    .line 81
    new-instance v0, Lcom/android/settings_ex/MouseHoveringViewEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/MouseHoveringViewEnabler$1;-><init>(Lcom/android/settings_ex/MouseHoveringViewEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mMouseHoveringObserver:Landroid/database/ContentObserver;

    .line 97
    iput-object p1, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 101
    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mIsTablet:Z

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/MouseHoveringViewEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/MouseHoveringViewEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/MouseHoveringViewEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings_ex/MouseHoveringViewEnabler;->broadcastMouseHoveringChanged(Z)V

    return-void
.end method

.method private broadcastMouseHoveringChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    iget-object v1, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 315
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090b89

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090b88

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/MouseHoveringViewEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/MouseHoveringViewEnabler$3;-><init>(Lcom/android/settings_ex/MouseHoveringViewEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings_ex/MouseHoveringViewEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/MouseHoveringViewEnabler$2;-><init>(Lcom/android/settings_ex/MouseHoveringViewEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 281
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 286
    const/4 v5, 0x0

    .line 287
    .local v5, informationPreview:I
    iget-object v9, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "mouse_hovering_information_preview"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 289
    iget-object v9, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "mouse_hovering_icon_label"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 291
    .local v0, IconLabels:I
    iget-object v9, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "mouse_hovering_list_scroll"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 293
    .local v1, ListScroll:I
    iget-object v9, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "mouse_hovering_highlight"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 295
    .local v4, highlight:I
    iget-object v9, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "mouse_hovering_full_text"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 297
    .local v3, fullText:I
    const/4 v6, 0x0

    .line 298
    .local v6, progressBarPreview:I
    iget-object v9, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "mouse_hovering_progress_bar_preview"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 300
    iget-object v9, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "mouse_hovering_magnetic_ui"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 302
    .local v2, MagneticUI:I
    or-int v9, v5, v0

    or-int/2addr v9, v4

    or-int/2addr v9, v4

    or-int/2addr v9, v3

    or-int/2addr v9, v6

    or-int/2addr v9, v2

    if-ge v9, v7, :cond_0

    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    if-eqz p2, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/android/settings_ex/MouseHoveringViewEnabler;->makeTalkBackDisablePopup()V

    .line 191
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering_highlight"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    invoke-static {p2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    .line 167
    invoke-direct {p0, p2}, Lcom/android/settings_ex/MouseHoveringViewEnabler;->broadcastMouseHoveringChanged(Z)V

    .line 169
    const-string v0, "MouseHoveringViewEnabler"

    const-string v1, "switch is on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    invoke-static {p2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    .line 181
    invoke-direct {p0, p2}, Lcom/android/settings_ex/MouseHoveringViewEnabler;->broadcastMouseHoveringChanged(Z)V

    .line 183
    const-string v0, "MouseHoveringViewEnabler"

    const-string v1, "switch is off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mMouseHoveringObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/MouseHoveringViewEnabler;->updateSwitch()V

    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mMouseHoveringObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    iput-object p1, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings_ex/MouseHoveringViewEnabler;->updateSwitch()V

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public updateSwitch()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 197
    iget-object v1, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mouse_hovering"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 201
    .local v0, state:I
    if-ne v0, v3, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 225
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings_ex/MouseHoveringViewEnabler;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mIsTablet:Z

    if-nez v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/MouseHoveringViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
