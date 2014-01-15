.class public Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;
.super Landroid/app/Activity;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL$3;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EXTRA_PREFS_LANDSCAPE_LOCK:Ljava/lang/String; = "extra_prefs_landscape_lock"

.field private static final EXTRA_PREFS_PORTRAIT_LOCK:Ljava/lang/String; = "extra_prefs_portrait_lock"

.field private static final SCREEN_STATE_CONNECTED:I = 0x3

.field private static final SCREEN_STATE_CONNECTING:I = 0x2

.field private static final SCREEN_STATE_DISCONNECTED:I = 0x0

.field private static final SCREEN_STATE_EDITING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SetupWizard"

.field private static final sNetworkStateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddNetworkButton:Landroid/widget/Button;

.field private mBackButton:Landroid/widget/Button;

.field private mBottomPadding:Landroid/view/View;

.field private mConnectButton:Landroid/widget/Button;

.field private mConnectingStatusLayout:Landroid/view/View;

.field private mConnectingStatusView:Landroid/widget/TextView;

.field private mContentPadding:Landroid/view/View;

.field private mEditingTitle:Ljava/lang/CharSequence;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mNetworkName:Ljava/lang/CharSequence;

.field private mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshButton:Landroid/widget/Button;

.field private mScreenState:I

.field private mSkipOrNextButton:Landroid/widget/Button;

.field private mTitleView:Landroid/widget/TextView;

.field private mTopDividerNoProgress:Landroid/view/View;

.field private mTopPadding:Landroid/view/View;

.field private mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

.field private mWifiSettingsFragmentLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    .line 61
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    .line 65
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 138
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    return-void
.end method

.method private hideSoftwareKeyboard()V
    .locals 4

    .prologue
    .line 253
    sget-boolean v1, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SetupWizard"

    const-string v2, "Hiding software keyboard."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, focusedView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 256
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 258
    :cond_1
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "firstRun"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const v2, 0x7f0b000b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 174
    .local v1, layoutRoot:Landroid/view/View;
    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 176
    .end local v1           #layoutRoot:Landroid/view/View;
    :cond_0
    const-string v2, "extra_prefs_landscape_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 179
    :cond_1
    const-string v2, "extra_prefs_portrait_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 183
    :cond_2
    const v2, 0x7f0b04ad

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    .line 184
    const v2, 0x7f0b04ae

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    .line 185
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 186
    const v2, 0x7f0b04af

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    .line 187
    const v2, 0x7f0b04b8

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    .line 189
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 190
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 191
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 193
    const v2, 0x7f0b04ba

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    .line 194
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v2, 0x7f0b04be

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    .line 196
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v2, 0x7f0b04bd

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    .line 198
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v2, 0x7f0b04bc

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    .line 200
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v2, 0x7f0b04bb

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    .line 202
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v2, 0x7f0b04ac

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    .line 205
    const v2, 0x7f0b04b1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    .line 207
    const v2, 0x7f0b04b2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    .line 208
    const v2, 0x7f0b04b5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    .line 209
    const v2, 0x7f0b04b6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    .line 210
    return-void
.end method

.method private onAddNetworkButtonPressed()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAddNetworkPressed()V

    .line 422
    return-void
.end method

.method private onAuthenticationFailure()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 703
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 705
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 706
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 709
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 710
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    :goto_0
    const v1, 0x7f0b04b4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 717
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 718
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 720
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 721
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 722
    return-void

    .line 712
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    const-string v1, "SetupWizard"

    const-string v2, "Title during editing/adding a network was empty."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showEditingTitle()V

    goto :goto_0
.end method

.method private onBackButtonPressed()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 583
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-eq v4, v11, :cond_0

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 584
    :cond_0
    sget-boolean v4, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "SetupWizard"

    const-string v5, "Back button pressed after connect action."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_1
    iput v8, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 589
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 591
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 592
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->changeNextButtonState(Z)V

    .line 596
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 600
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 601
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_3

    .line 602
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 603
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    sget-boolean v4, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 604
    const-string v4, "SetupWizard"

    const-string v5, "forgeting Wi-Fi network \"%s\" (id: %d)"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v7, v6, v8

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v6, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL$1;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL$1;-><init>(Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;)V

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 617
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 618
    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    .line 633
    .end local v1           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 634
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 635
    const v4, 0x7f0b04b4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 636
    .local v3, parent:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 637
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 638
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    .line 639
    return-void

    .line 620
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_4
    iput v8, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 621
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/WifiSettings;->resumeWifiScan()V

    .line 623
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 625
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 626
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 627
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 628
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 629
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 630
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private onEapNetworkSelected()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v1, 0x7f090870

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 542
    return-void
.end method

.method private refreshAccessPoints(Z)V
    .locals 1
    .parameter "disconnectNetwork"

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 680
    if-eqz p1, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->refreshAccessPoints()V

    .line 685
    return-void
.end method

.method private restoreFirstVisibilityState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDefaultTitle()V

    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 220
    return-void
.end method

.method private showAddNetworkTitle()V
    .locals 2

    .prologue
    .line 358
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 359
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f09086a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 360
    return-void
.end method

.method private showConnectedProgressBar()V
    .locals 2

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 764
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 765
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 766
    return-void
.end method

.method private showConnectedState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 332
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 334
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 335
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 337
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showConnectedTitle()V

    .line 338
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showConnectedProgressBar()V

    .line 340
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    const v1, 0x7f090881

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 344
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v1, 0x7f090870

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 351
    return-void
.end method

.method private showConnectedTitle()V
    .locals 5

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 398
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f090869

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    return-void

    .line 394
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showConnectingProgressBar()V
    .locals 2

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 758
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 759
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 760
    return-void
.end method

.method private showConnectingState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 319
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    .line 322
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showConnectingTitle()V

    .line 323
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showConnectingProgressBar()V

    .line 325
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 326
    return-void
.end method

.method private showConnectingTitle()V
    .locals 5

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 385
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f090868

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    return-void

    .line 381
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDefaultTitle()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f090866

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    return-void
.end method

.method private showDisconnectedProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 733
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 736
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 743
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 740
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 741
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showDisconnectedState(Ljava/lang/String;)V
    .locals 3
    .parameter "stateString"

    .prologue
    const/4 v2, 0x1

    .line 306
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 307
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getAccessPointsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 314
    return-void
.end method

.method private showEditingButtonState()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 545
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    return-void
.end method

.method private showEditingTitle()V
    .locals 5

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 372
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f090867

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    return-void

    .line 368
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showScanningProgressBar()V
    .locals 2

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 750
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 751
    return-void
.end method

.method private showScanningState()V
    .locals 2

    .prologue
    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showScanningProgressBar()V

    .line 418
    return-void
.end method

.method private showTopDividerWithProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 409
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 412
    return-void
.end method


# virtual methods
.method changeNextButtonState(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 645
    if-eqz p1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f09086f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f09086e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method initSecurityFields(Landroid/view/View;I)Z
    .locals 6
    .parameter "view"
    .parameter "accessPointSecurity"

    .prologue
    const v5, 0x7f0b0447

    const v4, 0x7f0b0446

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 493
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 494
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 495
    const v2, 0x7f0b0449

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 496
    const v2, 0x7f0b044a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 498
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 499
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 500
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 505
    const v1, 0x7f0b0448

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 506
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 511
    :goto_0
    const v1, 0x7f0b044b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 512
    const v1, 0x7f0b0449

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 513
    const v1, 0x7f0b044a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 514
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onEapNetworkSelected()V

    .line 536
    :goto_1
    return v0

    .line 509
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 521
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_3

    .line 527
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_4

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0b03de

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    :cond_3
    :goto_2
    move v0, v1

    .line 536
    goto :goto_1

    .line 531
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0b0420

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    goto :goto_2
.end method

.method onAccessPointsUpdated(Landroid/preference/PreferenceScreen;Ljava/util/Collection;)V
    .locals 5
    .parameter "preferenceScreen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    const/4 v4, 0x1

    .line 661
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 662
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 663
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v2, :cond_0

    .line 664
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 667
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 668
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 671
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 672
    .local v0, accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    const v2, 0x7f040048

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 673
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 675
    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 224
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 226
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SetupWizard"

    const-string v1, "AddNetwork button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onAddNetworkButtonPressed()V

    .line 250
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 228
    .restart local p1
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 229
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "SetupWizard"

    const-string v1, "Refresh button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    goto :goto_0

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 232
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "SetupWizard"

    const-string v1, "Skip/Next button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_5
    const v0, 0x7f09086e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 238
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 242
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 240
    :cond_6
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    .line 243
    .restart local p1
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_9

    .line 244
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "SetupWizard"

    const-string v1, "Connect button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onConnectButtonPressed()V

    goto :goto_0

    .line 246
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 247
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "SetupWizard"

    const-string v1, "Back button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_a
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onBackButtonPressed()V

    goto :goto_0
.end method

.method onConnectButtonPressed()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 553
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 555
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    .line 563
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showConnectingState()V

    .line 566
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 567
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v2, 0x7f090870

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 569
    const v1, 0x7f0b04b4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 570
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 572
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    const v2, 0x7f090880

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 574
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 576
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 578
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 579
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 151
    const v0, 0x7f040189

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 153
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b04b3

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    .line 160
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 162
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->initViews()V

    .line 166
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 167
    return-void
.end method

.method onSaveNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL$2;-><init>(Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;)V

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 780
    return-void
.end method

.method onSupplicantStateChanged(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 692
    const-string v1, "supplicantError"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 693
    .local v0, errorCode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 694
    const-string v1, "SetupWizard"

    const-string v2, "Received authentication error event."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onAuthenticationFailure()V

    .line 697
    :cond_0
    return-void
.end method

.method setPaddingVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 728
    return-void
.end method

.method showConfigUi(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 5
    .parameter "selectedAccessPoint"
    .parameter "edit"

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 432
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 434
    if-eqz p1, :cond_1

    iget v1, p1, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 440
    :cond_0
    const/4 p2, 0x1

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->pauseWifiScan()V

    .line 446
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 447
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 448
    const v1, 0x7f0b04b4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 449
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 450
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 451
    new-instance v1, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;-><init>(Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;Landroid/view/ViewGroup;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    .line 453
    if-nez p1, :cond_2

    .line 454
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showAddNetworkTitle()V

    .line 455
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 457
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 458
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showEditingButtonState()V

    .line 481
    :goto_0
    return-void

    .line 459
    :cond_2
    iget v1, p1, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    .line 460
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 463
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 465
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 466
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showEditingTitle()V

    .line 467
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 468
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showEditingButtonState()V

    .line 469
    iget v1, p1, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 470
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onEapNetworkSelected()V

    goto :goto_0

    .line 472
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const v2, 0x7f0903e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 478
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v2, 0x7f090875

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .parameter "originalState"

    .prologue
    .line 262
    sget-object v1, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    .line 264
    .local v0, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 267
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    .line 270
    :cond_0
    sget-object v1, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL$3;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 296
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getAccessPointsCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 298
    invoke-static {p0, v0}, Lcom/android/settings_ex/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedState(Ljava/lang/String;)V

    .line 302
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 303
    return-void

    .line 272
    :pswitch_0
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v1, :cond_3

    .line 273
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getAccessPointsCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 274
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    goto :goto_0

    .line 276
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 277
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 281
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    goto :goto_0

    .line 286
    :pswitch_1
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showConnectingState()V

    goto :goto_0

    .line 292
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showConnectedState()V

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
