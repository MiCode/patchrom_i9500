.class final Lcom/android/settings_ex/guide/BtSettingsGuider;
.super Lcom/android/settings_ex/guide/GuiderBase;
.source "BtSettingsGuider.java"

# interfaces
.implements Lcom/android/settings_ex/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/guide/BtSettingsGuider$7;,
        Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/android/settings_ex/guide/BtSettingsGuider$BluetoothBroadcastActions;,
        Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BtSettingsGuider"


# instance fields
.field private mBTEnabled:Z

.field private mBTReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mInitialBondedCount:I

.field private mShowedDialog:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

.field private mShowedLayout:I

.field private onCloseHelpDialogListener:Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/settings_ex/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 116
    sget-object v0, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedLayout:I

    .line 119
    iput-object v2, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 121
    iput-object v2, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 122
    iput-boolean v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 124
    iput v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 549
    new-instance v0, Lcom/android/settings_ex/guide/BtSettingsGuider$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/guide/BtSettingsGuider$6;-><init>(Lcom/android/settings_ex/guide/BtSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    invoke-static {v1, p1}, Lcom/android/settings_ex/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 134
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 136
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings_ex/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/guide/BtSettingsGuider;)Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/guide/BtSettingsGuider;Lcom/android/settings_ex/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/guide/BtSettingsGuider;->onReceive(Lcom/android/settings_ex/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V

    return-void
.end method

.method private handleDialogChange()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 329
    :cond_0
    return-void
.end method

.method private initHelpDialogContent(I)V
    .locals 3
    .parameter "resID"

    .prologue
    .line 442
    iget-object v2, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 443
    .local v0, bubbleView:Landroid/view/View;
    invoke-static {}, Lcom/android/settings_ex/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 444
    const v2, 0x7f091017

    if-eq p1, v2, :cond_0

    .line 445
    const v2, 0x7f0b017c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 447
    .local v1, summary:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 455
    .end local v1           #summary:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 453
    .restart local v1       #summary:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private initHelpDialogContent(II)V
    .locals 5
    .parameter "resID"
    .parameter "layout"

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 410
    .local v1, bubbleView:Landroid/view/View;
    invoke-static {}, Lcom/android/settings_ex/guide/GuideModeHelper;->isTablet()Z

    move-result v3

    if-nez v3, :cond_2

    .line 411
    const v3, 0x7f040079

    if-eq p2, v3, :cond_0

    .line 412
    const v3, 0x7f0b017c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 414
    .local v2, summary:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 422
    .end local v2           #summary:Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 424
    const v3, 0x7f0b0002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 427
    .local v0, btnClose:Landroid/widget/ImageButton;
    if-eqz v0, :cond_1

    .line 428
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 429
    new-instance v3, Lcom/android/settings_ex/guide/BtSettingsGuider$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/guide/BtSettingsGuider$3;-><init>(Lcom/android/settings_ex/guide/BtSettingsGuider;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    :cond_1
    return-void

    .line 418
    .end local v0           #btnClose:Landroid/widget/ImageButton;
    :cond_2
    const v3, 0x7f0b0006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 420
    .restart local v2       #summary:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private invalidateHelpDialog(Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V
    .locals 6
    .parameter "type"

    .prologue
    .line 354
    const/4 v1, -0x1

    .line 356
    .local v1, resID:I
    iget-object v2, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    if-nez v2, :cond_0

    .line 405
    :goto_0
    return-void

    .line 360
    :cond_0
    const v0, 0x7f040081

    .line 362
    .local v0, layout:I
    invoke-direct {p0, p1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->setFocus(Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V

    .line 364
    sget-object v2, Lcom/android/settings_ex/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 404
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    goto :goto_0

    .line 366
    :pswitch_0
    const v1, 0x7f091025

    .line 367
    goto :goto_1

    .line 369
    :pswitch_1
    const v1, 0x7f091023

    .line 370
    goto :goto_1

    .line 372
    :pswitch_2
    const v1, 0x7f091022

    .line 373
    goto :goto_1

    .line 375
    :pswitch_3
    const v1, 0x7f091017

    .line 376
    const v0, 0x7f040079

    .line 380
    invoke-static {}, Lcom/android/settings_ex/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 384
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings_ex/guide/BtSettingsGuider$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/guide/BtSettingsGuider$2;-><init>(Lcom/android/settings_ex/guide/BtSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onBluetoothStateChanged()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 619
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 627
    :cond_0
    return-void
.end method

.method private onDeviceBondStateChanged(II)V
    .locals 3
    .parameter "bondState"
    .parameter "prevBondState"

    .prologue
    const/4 v1, 0x0

    .line 636
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 638
    .local v0, bShowDialog:Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 670
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .end local v0           #bShowDialog:Z
    :cond_1
    move v0, v1

    .line 636
    goto :goto_0

    .line 640
    .restart local v0       #bShowDialog:Z
    :pswitch_1
    if-eqz v0, :cond_2

    .line 641
    sget-object v1, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V

    .line 643
    :cond_2
    iget v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_1

    .line 647
    :pswitch_2
    const/16 v2, 0xa

    if-eq p2, v2, :cond_3

    .line 649
    iget v2, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-lez v2, :cond_4

    .line 650
    iget v2, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 652
    if-nez v0, :cond_3

    .line 654
    sget-object v2, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    .line 661
    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_1

    .line 657
    :cond_4
    iput v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_2

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onReceive(Lcom/android/settings_ex/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 3
    .parameter "action"
    .parameter "intent"

    .prologue
    const/high16 v2, -0x8000

    .line 569
    sget-object v0, Lcom/android/settings_ex/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$BluetoothBroadcastActions:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 589
    :goto_0
    return-void

    .line 571
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->onBluetoothStateChanged()V

    goto :goto_0

    .line 575
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 579
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 583
    :pswitch_3
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->onDeviceBondStateChanged(II)V

    goto :goto_0

    .line 569
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 605
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 607
    :cond_1
    return-void
.end method

.method private setFocus(Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 769
    .local v1, activity:Landroid/app/Activity;
    sget-object v3, Lcom/android/settings_ex/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 773
    :pswitch_0
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/app/ListActivity;

    if-eqz v3, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/app/ListActivity;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 779
    :pswitch_1
    if-eqz v1, :cond_0

    .line 780
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 782
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 785
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 786
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 769
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showHelpDialog(IILcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V
    .locals 3
    .parameter "resID"
    .parameter "layout"
    .parameter "type"

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, created:Z
    iget-object v1, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    .line 295
    iget-object v1, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 296
    iget-object v1, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 297
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedLayout:I

    .line 298
    const/4 v0, 0x1

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    if-ne p3, v1, :cond_2

    sget-object v1, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;)V

    .line 305
    invoke-direct {p0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->handleDialogChange()V

    .line 307
    iget v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedLayout:I

    if-eq v1, p2, :cond_3

    .line 308
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    .line 313
    :goto_1
    if-eqz v0, :cond_1

    .line 314
    iget-object v1, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 317
    :cond_1
    iput-object p3, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    .line 318
    iput p2, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedLayout:I

    .line 319
    return-void

    .line 301
    :cond_2
    sget-object v1, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    goto :goto_0

    .line 310
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->initHelpDialogContent(I)V

    goto :goto_1
.end method


# virtual methods
.method protected changeHelpDialogState(Z)V
    .locals 3
    .parameter "isScanning"

    .prologue
    .line 208
    iget-boolean v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBTEnabled:Z

    if-nez v1, :cond_0

    .line 209
    sget-object v1, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V

    .line 229
    :goto_0
    return-void

    .line 211
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    :cond_1
    sget-object v1, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v2, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 215
    sget-object v1, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->getCachedDevicesNumber(Landroid/content/Context;)I

    move-result v0

    .line 221
    .local v0, cachedDevices:I
    iget v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-le v0, v1, :cond_4

    .line 222
    sget-object v1, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 224
    :cond_4
    sget-object v1, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0
.end method

.method public dismissHelpDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 342
    iput-object v1, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    .line 344
    invoke-direct {p0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->handleDialogChange()V

    .line 346
    sget-object v0, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    .line 347
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedLayout:I

    .line 348
    iput-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 350
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 151
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->invalidateHelpDialog(Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V

    .line 336
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 146
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->finish()V

    .line 198
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/16 v6, 0x6f

    const/16 v5, 0x42

    .line 679
    const/4 v1, 0x0

    .line 680
    .local v1, isHandled:Z
    const/4 v2, 0x1

    .line 684
    .local v2, passToView:Z
    sget-object v3, Lcom/android/settings_ex/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    iget-object v4, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 744
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 745
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 747
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 748
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 749
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 756
    .end local v0           #focus:Landroid/view/View;
    :cond_1
    :goto_1
    return v1

    .line 687
    :pswitch_0
    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_2

    const/16 v3, 0x17

    if-eq p1, v3, :cond_2

    const/16 v3, 0x14

    if-eq p1, v3, :cond_2

    const/16 v3, 0x15

    if-eq p1, v3, :cond_2

    const/16 v3, 0x16

    if-eq p1, v3, :cond_2

    const/16 v3, 0x13

    if-eq p1, v3, :cond_2

    const/16 v3, 0x75

    if-eq p1, v3, :cond_2

    const/16 v3, 0x76

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3d

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5c

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5d

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7b

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7a

    if-eq p1, v3, :cond_2

    .line 702
    const/4 v1, 0x1

    goto :goto_0

    .line 703
    :cond_2
    if-ne p1, v5, :cond_0

    .line 704
    const/4 v2, 0x0

    .line 705
    const/4 v1, 0x1

    .line 707
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings_ex/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings_ex/helpdialog/TwHelpDialog;)V

    goto :goto_0

    .line 713
    :pswitch_1
    if-ne p1, v6, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 715
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 716
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->showCompleteDialog()V

    .line 717
    const/4 v2, 0x0

    .line 718
    const/4 v1, 0x1

    goto :goto_0

    .line 720
    :cond_3
    if-ne p1, v5, :cond_0

    .line 721
    const/4 v2, 0x0

    .line 722
    const/4 v1, 0x1

    .line 724
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings_ex/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings_ex/helpdialog/TwHelpDialog;)V

    goto :goto_0

    .line 731
    :pswitch_2
    if-ne p1, v5, :cond_0

    .line 732
    const/4 v2, 0x0

    .line 733
    const/4 v1, 0x1

    .line 735
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings_ex/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings_ex/helpdialog/TwHelpDialog;)V

    goto/16 :goto_0

    .line 751
    .restart local v0       #focus:Landroid/view/View;
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 675
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 520
    invoke-static {}, Lcom/android/settings_ex/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 525
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings_ex/guide/BtSettingsGuider$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/guide/BtSettingsGuider$5;-><init>(Lcom/android/settings_ex/guide/BtSettingsGuider;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 536
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 155
    iget-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v2, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 163
    sget-object v1, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V

    .line 171
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    sget-object v2, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 172
    return-void

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    sget-object v2, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    sget-object v2, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    if-eq v1, v2, :cond_1

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_0
.end method

.method public setEnabler(Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;)V
    .locals 0
    .parameter "enabler"

    .prologue
    .line 541
    return-void
.end method

.method protected setGuidedActionBarClickable(Z)V
    .locals 4
    .parameter "clickable"

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 466
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 468
    .local v0, ab:Landroid/app/ActionBar;
    :goto_0
    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 472
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 473
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 474
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 475
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 479
    :cond_0
    if-eqz p1, :cond_1

    .line 480
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 484
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-void

    .line 466
    .end local v0           #ab:Landroid/app/ActionBar;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCompleteDialog()V
    .locals 5

    .prologue
    .line 488
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 489
    .local v0, builderstart:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 491
    .local v1, res:Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    .line 493
    const v2, 0x7f09101f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09101e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090357

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/guide/BtSettingsGuider$4;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/guide/BtSettingsGuider$4;-><init>(Lcom/android/settings_ex/guide/BtSettingsGuider;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 511
    :cond_0
    return-void

    .line 489
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 546
    return-void
.end method

.method public showHelpDialog(Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v4, 0x7f040081

    .line 232
    invoke-direct {p0, p1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->setFocus(Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 240
    sget-object v0, Lcom/android/settings_ex/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 283
    :goto_1
    sget-object v0, Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 242
    :pswitch_0
    const v0, 0x7f091025

    invoke-direct {p0, v0, v4, p1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 245
    :pswitch_1
    const v0, 0x7f091023

    invoke-direct {p0, v0, v4, p1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 249
    :pswitch_2
    new-instance v0, Lcom/android/settings_ex/guide/BtSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/guide/BtSettingsGuider$1;-><init>(Lcom/android/settings_ex/guide/BtSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings_ex/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 254
    const v0, 0x7f091022

    invoke-direct {p0, v0, v4, p1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 258
    :pswitch_3
    invoke-static {}, Lcom/android/settings_ex/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/settings_ex/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 259
    const v0, 0x7f091017

    const v3, 0x7f040079

    invoke-direct {p0, v0, v3, p1}, Lcom/android/settings_ex/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings_ex/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    :cond_1
    move v0, v2

    .line 258
    goto :goto_3

    .line 272
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 283
    goto :goto_2

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
