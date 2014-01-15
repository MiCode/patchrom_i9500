.class public final Lcom/android/settings_ex/guide/WifiSettingsGuider;
.super Lcom/android/settings_ex/guide/GuiderBase;
.source "WifiSettingsGuider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/android/settings_ex/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/guide/WifiSettingsGuider$7;,
        Lcom/android/settings_ex/guide/WifiSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;
    }
.end annotation


# static fields
.field private static final MAX_EMPTY_SCANRESULT_ATTEMPTS:I = 0x2

.field private static final MENU_ID_SCAN:I = 0x6

.field private static mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;


# instance fields
.field private mClosed:Z

.field private mConnecting:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mEmptyScanResultAttempts:I

.field private mEnableScanMenuItem:Z

.field private mFirstStart:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestorePrevDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

.field private mSecurityDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final mWiFiIntentFilter:Landroid/content/IntentFilter;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private onCloseHelpDialogListener:Lcom/android/settings_ex/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings_ex/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 77
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    .line 78
    iput-boolean v1, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mClosed:Z

    .line 81
    iput-boolean v3, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 82
    iput-boolean v3, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mConnecting:Z

    .line 83
    iput v1, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 85
    iput-object v2, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 86
    iput-object v2, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 94
    iput-boolean v1, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 99
    iput-object v2, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 109
    invoke-static {v1, p1}, Lcom/android/settings_ex/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 111
    new-instance v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider$1;-><init>(Lcom/android/settings_ex/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 127
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/guide/WifiSettingsGuider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mClosed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/guide/WifiSettingsGuider;)Lcom/android/settings_ex/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method public static checkSecurityPopup()Z
    .locals 2

    .prologue
    .line 956
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 957
    const/4 v0, 0x1

    .line 959
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initHelpDialogContent(II)V
    .locals 5
    .parameter "resID"
    .parameter "layout"

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 464
    .local v1, bubbleView:Landroid/view/View;
    invoke-static {}, Lcom/android/settings_ex/guide/GuideModeHelper;->isTablet()Z

    move-result v3

    if-nez v3, :cond_2

    .line 465
    const v3, 0x7f04008a

    if-eq p2, v3, :cond_0

    .line 466
    const v3, 0x7f0b017c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 468
    .local v2, summary:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 477
    .end local v2           #summary:Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 479
    const v3, 0x7f0b0002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 482
    .local v0, btnClose:Landroid/widget/ImageButton;
    if-eqz v0, :cond_1

    .line 483
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 484
    new-instance v3, Lcom/android/settings_ex/guide/WifiSettingsGuider$5;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider$5;-><init>(Lcom/android/settings_ex/guide/WifiSettingsGuider;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    :cond_1
    return-void

    .line 472
    .end local v0           #btnClose:Landroid/widget/ImageButton;
    :cond_2
    const v3, 0x7f0b0006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 474
    .restart local v2       #summary:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private invalidateHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V
    .locals 6
    .parameter "type"

    .prologue
    .line 390
    const/4 v0, -0x1

    .line 391
    .local v0, layout:I
    const/4 v1, -0x1

    .line 393
    .local v1, resID:I
    iget-object v2, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    if-nez v2, :cond_0

    .line 453
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->setFocus(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    .line 399
    sget-object v2, Lcom/android/settings_ex/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 452
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    goto :goto_0

    .line 401
    :pswitch_0
    const v1, 0x7f091018

    .line 402
    const v0, 0x7f04008b

    .line 403
    goto :goto_1

    .line 405
    :pswitch_1
    const v1, 0x7f09101b

    .line 406
    const v0, 0x7f04008f

    .line 407
    goto :goto_1

    .line 409
    :pswitch_2
    const v1, 0x7f09101a

    .line 410
    const v0, 0x7f04008f

    .line 411
    goto :goto_1

    .line 413
    :pswitch_3
    const v1, 0x7f091019

    .line 414
    const v0, 0x7f04008f

    .line 415
    goto :goto_1

    .line 417
    :pswitch_4
    const v1, 0x7f09101d

    .line 418
    const v0, 0x7f04008c

    .line 419
    goto :goto_1

    .line 421
    :pswitch_5
    const v1, 0x7f09101c

    .line 422
    const v0, 0x7f04008f

    .line 423
    goto :goto_1

    .line 425
    :pswitch_6
    const v1, 0x7f091017

    .line 426
    const v0, 0x7f04008a

    .line 430
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

    .line 434
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings_ex/guide/WifiSettingsGuider$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider$4;-><init>(Lcom/android/settings_ex/guide/WifiSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private restoreSecurityDialogFocus()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 767
    iget-object v8, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlertDialog;

    move-object v6, v8

    .line 769
    .local v6, securityDialog:Landroid/app/AlertDialog;
    :goto_0
    if-eqz v6, :cond_4

    .line 770
    const v8, 0x7f0b0455

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 771
    .local v0, identity:Landroid/view/View;
    const v8, 0x7f0b046d

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 772
    .local v1, identityContainer:Landroid/view/View;
    move-object v7, v0

    .line 773
    .local v7, viewToFocus:Landroid/view/View;
    const/4 v4, 0x0

    .line 775
    .local v4, isSingleEdit:Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_1

    .line 778
    :cond_0
    const v8, 0x7f0b03de

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 779
    const/4 v4, 0x1

    .line 782
    :cond_1
    if-eqz v7, :cond_3

    .line 784
    if-eqz v4, :cond_2

    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    move-object v8, v7

    .line 785
    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/TextView;->getImeOptions()I

    move-result v2

    .local v2, imeOptions:I
    move-object v8, v7

    .line 787
    check-cast v8, Landroid/widget/EditText;

    or-int/lit8 v10, v2, 0x6

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 790
    .end local v2           #imeOptions:I
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 792
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 794
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v10, "input_method"

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 795
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 800
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    const/4 v8, -0x2

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 802
    .local v5, negativeButton:Landroid/widget/Button;
    if-eqz v5, :cond_4

    .line 803
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 807
    .end local v0           #identity:Landroid/view/View;
    .end local v1           #identityContainer:Landroid/view/View;
    .end local v4           #isSingleEdit:Z
    .end local v5           #negativeButton:Landroid/widget/Button;
    .end local v7           #viewToFocus:Landroid/view/View;
    :cond_4
    iput-object v9, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 808
    return-void

    .end local v6           #securityDialog:Landroid/app/AlertDialog;
    :cond_5
    move-object v6, v9

    .line 767
    goto :goto_0
.end method

.method private setFocus(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 929
    .local v1, activity:Landroid/app/Activity;
    sget-object v3, Lcom/android/settings_ex/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 931
    :pswitch_0
    if-eqz v1, :cond_0

    .line 932
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 934
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 937
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 938
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 929
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private setGuidedActionBarClickable(Z)V
    .locals 4
    .parameter "clickable"

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 626
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 628
    .local v0, ab:Landroid/app/ActionBar;
    :goto_0
    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 631
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 632
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 633
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 634
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 637
    :cond_0
    if-eqz p1, :cond_1

    .line 638
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 642
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-void

    .line 626
    .end local v0           #ab:Landroid/app/ActionBar;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScanOptionEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 652
    iput-boolean p1, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 654
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 656
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 659
    :cond_0
    return-void
.end method

.method private showHelpDialog(IILcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;Z)V
    .locals 2
    .parameter "resID"
    .parameter "layout"
    .parameter "touchTransparency"
    .parameter "type"
    .parameter "needShowWrongToast"

    .prologue
    .line 378
    new-instance v0, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    .line 379
    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, p3}, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;)V

    .line 380
    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, p5}, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 383
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 386
    sput-object p4, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    .line 387
    return-void
.end method


# virtual methods
.method protected dismissAndRestorePreviousHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 359
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_2

    .line 362
    :cond_0
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_1

    .line 363
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    .line 371
    :cond_2
    return-void
.end method

.method public dismissHelpDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 300
    iput-object v3, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    .line 302
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    sget-object v1, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 319
    :goto_0
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    .line 320
    iput-object v3, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 322
    :cond_0
    return-void

    .line 304
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings_ex/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 305
    invoke-direct {p0, v2}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 308
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_0

    .line 311
    :sswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->restoreSecurityDialogFocus()V

    .line 312
    iput-object v3, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 302
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public dismissHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 330
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_0

    .line 331
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 348
    :goto_0
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    .line 349
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 351
    :cond_0
    return-void

    .line 333
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings_ex/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 334
    invoke-direct {p0, v2}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 337
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/settings_ex/guide/GuiderBase;->finish()V

    return-void
.end method

.method protected handleEvent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 498
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 503
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 504
    iget-object v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 509
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 512
    .local v2, network:Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_4

    .line 516
    iget v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    if-lt v4, v7, :cond_3

    .line 517
    sget-object v4, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    .line 582
    .end local v2           #network:Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    return-void

    .line 519
    .restart local v2       #network:Landroid/net/NetworkInfo;
    :cond_3
    sget-object v4, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 522
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_5

    .line 523
    iput v6, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 524
    iget-boolean v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v4, :cond_2

    .line 525
    sget-object v4, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 528
    :cond_5
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mFirstStart:Z

    if-eqz v4, :cond_6

    .line 529
    iput v6, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 530
    iput-boolean v6, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 531
    sget-object v4, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 533
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 534
    iput v6, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    goto :goto_0

    .line 538
    .end local v2           #network:Landroid/net/NetworkInfo;
    :cond_7
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 539
    const-string v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 542
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mFirstStart:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mConnecting:Z

    if-eqz v4, :cond_8

    .line 543
    iput-boolean v6, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 544
    sget-object v4, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 545
    :cond_8
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mConnecting:Z

    if-nez v4, :cond_9

    .line 546
    sget-object v4, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 547
    :cond_9
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 548
    iput-boolean v6, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 549
    iput-boolean v6, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mConnecting:Z

    .line 552
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_2

    sget-object v4, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-eq v4, v5, :cond_a

    sget-object v4, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-ne v4, v5, :cond_2

    .line 556
    :cond_a
    iget-object v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 558
    sget-object v4, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 560
    :cond_b
    sget-object v4, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 565
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_c
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 569
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 574
    .local v3, state:I
    const/4 v4, 0x3

    if-eq v3, v4, :cond_d

    if-eq v3, v7, :cond_d

    iget-object v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 577
    sget-object v4, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 579
    :cond_d
    sget-object v4, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0
.end method

.method public isWifiDialogSecured(Landroid/app/AlertDialog;)Z
    .locals 3
    .parameter "dialog"

    .prologue
    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, result:Z
    const v2, 0x7f0b044b

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 671
    .local v1, view:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 672
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 675
    :cond_0
    :goto_0
    return v0

    .line 672
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 167
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    .line 734
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 738
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 185
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 186
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->invalidateHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    .line 188
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 137
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mConnecting:Z

    .line 140
    iput v2, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 141
    iput-boolean v2, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mClosed:Z

    .line 142
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->finish()V

    .line 149
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 726
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->isWifiDialogSecured(Landroid/app/AlertDialog;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 727
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->dismissAndRestorePreviousHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    .line 728
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 730
    :cond_0
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x6f

    const/16 v5, 0x42

    .line 822
    const/4 v1, 0x0

    .line 823
    .local v1, isHandled:Z
    const/4 v2, 0x1

    .line 827
    .local v2, passToView:Z
    sget-object v3, Lcom/android/settings_ex/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    sget-object v4, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 904
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 905
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 907
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 908
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 909
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 916
    .end local v0           #focus:Landroid/view/View;
    :cond_1
    :goto_1
    return v1

    .line 830
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

    .line 845
    const/4 v1, 0x1

    goto :goto_0

    .line 846
    :cond_2
    if-ne p1, v5, :cond_0

    .line 847
    const/4 v2, 0x0

    .line 848
    const/4 v1, 0x1

    .line 850
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings_ex/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings_ex/helpdialog/TwHelpDialog;)V

    goto :goto_0

    .line 856
    :pswitch_1
    if-ne p1, v6, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 858
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 859
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 861
    :cond_3
    const/4 v2, 0x0

    .line 862
    const/4 v1, 0x1

    .line 863
    goto :goto_0

    .line 866
    :pswitch_2
    const/4 v2, 0x0

    .line 867
    const/4 v1, 0x1

    .line 868
    goto :goto_0

    .line 873
    :pswitch_3
    if-ne p1, v6, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 875
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 876
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 877
    const/4 v2, 0x0

    .line 878
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 880
    :cond_4
    if-ne p1, v5, :cond_0

    .line 881
    const/4 v2, 0x0

    .line 882
    const/4 v1, 0x1

    .line 884
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings_ex/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings_ex/helpdialog/TwHelpDialog;)V

    goto/16 :goto_0

    .line 891
    :pswitch_4
    if-ne p1, v5, :cond_0

    .line 892
    const/4 v2, 0x0

    .line 893
    const/4 v1, 0x1

    .line 895
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings_ex/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings_ex/helpdialog/TwHelpDialog;)V

    goto/16 :goto_0

    .line 911
    .restart local v0       #focus:Landroid/view/View;
    :cond_5
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_1

    .line 827
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialogInterface"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 748
    .local v0, retval:Z
    sget-object v1, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    sget-object v2, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-ne v1, v2, :cond_2

    .line 750
    const/16 v1, 0x6f

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 753
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 756
    :cond_1
    const/4 v0, 0x1

    .line 759
    :cond_2
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 813
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 815
    iget v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 816
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 818
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 171
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 173
    .local v0, scan:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 174
    iget-boolean v1, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 176
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 155
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    .line 162
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 154
    goto :goto_0

    :cond_2
    move v1, v2

    .line 155
    goto :goto_1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x1

    .line 699
    instance-of v2, p1, Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->isWifiDialogSecured(Landroid/app/AlertDialog;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 701
    sget-object v2, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    .line 703
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v2, p1

    check-cast v2, Landroid/app/AlertDialog;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 707
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 709
    .local v1, negativeButton:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 710
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 711
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 714
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 715
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 718
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #negativeButton:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public setEnabler(Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;)V
    .locals 1
    .parameter "enabler"

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    .line 682
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mEnabler:Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/settings_ex/guide/OnInternalSwitcherListener;)V

    .line 685
    :cond_0
    return-void
.end method

.method public showCompleteDialog()V
    .locals 4

    .prologue
    .line 586
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 589
    .local v0, builderstart:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09101f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09101e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090357

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/guide/WifiSettingsGuider$6;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider$6;-><init>(Lcom/android/settings_ex/guide/WifiSettingsGuider;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 607
    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 690
    return-void
.end method

.method public showHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V
    .locals 8
    .parameter "type"

    .prologue
    const v2, 0x7f04008f

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 197
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_0

    move v0, v7

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/guide/GuiderBase;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_1

    .line 294
    :goto_1
    return-void

    :cond_0
    move v0, v5

    .line 197
    goto :goto_0

    .line 203
    :cond_1
    sget-object v6, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    .line 205
    .local v6, showedType:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    .line 206
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    .line 208
    invoke-direct {p0, p1}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->setFocus(Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;)V

    .line 210
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 246
    :goto_2
    iput-boolean v5, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mClosed:Z

    .line 250
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_2

    move v0, v7

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 252
    sget-object v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 254
    :pswitch_0
    const v1, 0x7f091018

    const v2, 0x7f04008b

    sget-object v3, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 212
    :pswitch_1
    iput-object v6, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;

    goto :goto_2

    .line 218
    :pswitch_2
    new-instance v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider$2;-><init>(Lcom/android/settings_ex/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_2

    .line 228
    :pswitch_3
    new-instance v0, Lcom/android/settings_ex/guide/WifiSettingsGuider$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/guide/WifiSettingsGuider$3;-><init>(Lcom/android/settings_ex/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings_ex/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings_ex/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_2

    .line 238
    :pswitch_4
    invoke-static {}, Lcom/android/settings_ex/guide/GuideFragment;->isTablet()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings_ex/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    goto :goto_2

    :cond_2
    move v0, v5

    .line 250
    goto :goto_3

    .line 259
    :pswitch_5
    const v1, 0x7f09101b

    sget-object v3, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 263
    :pswitch_6
    const v1, 0x7f09101a

    sget-object v3, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 267
    :pswitch_7
    const v1, 0x7f091019

    sget-object v3, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 271
    :pswitch_8
    const v1, 0x7f09101d

    const v2, 0x7f04008c

    sget-object v3, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 275
    :pswitch_9
    const v1, 0x7f09101c

    sget-object v3, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 279
    :pswitch_a
    const v1, 0x7f091017

    const v2, 0x7f04008a

    sget-object v3, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings_ex/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 252
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method public bridge synthetic showHelpDialog(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/settings_ex/guide/GuiderBase;->showHelpDialog(Z)V

    return-void
.end method
