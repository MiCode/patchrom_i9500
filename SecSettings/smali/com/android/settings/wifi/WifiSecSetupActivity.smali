.class public Lcom/android/settings_ex/wifi/WifiSecSetupActivity;
.super Landroid/app/Activity;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EXTRA_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Ljava/lang/String; = "extra_samsungaccount_for_wifisetupwizard"

.field private static final TAG:Ljava/lang/String; = "WifiSecSetupActivity"


# instance fields
.field FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

.field private mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

.field private nextButton:Landroid/view/View;

.field private nextButtonImage:Landroid/widget/ImageView;

.field private nextButtonText:Landroid/widget/TextView;

.field private previousButton:Landroid/view/View;

.field private previousButtonImage:Landroid/widget/ImageView;

.field private previousButtonText:Landroid/widget/TextView;

.field private scanButton:Landroid/widget/Button;

.field private wifiSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v4, 0x3f80

    const v5, 0x3ecccccd

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, action:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v3, :cond_1

    .line 179
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 183
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 185
    .local v2, isConn:Z
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 186
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    .line 188
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 190
    if-eqz v2, :cond_4

    .line 191
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    .line 192
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 199
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #isConn:Z
    :cond_1
    :goto_2
    return-void

    .restart local v1       #info:Landroid/net/NetworkInfo;
    .restart local v2       #isConn:Z
    :cond_2
    move v3, v5

    .line 186
    goto :goto_0

    :cond_3
    move v4, v5

    .line 188
    goto :goto_1

    .line 194
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    .line 195
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_2
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 166
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, frame:Landroid/widget/FrameLayout;
    const v2, 0x7f0b0404

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 168
    new-instance v2, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {v2}, Lcom/android/settings_ex/wifi/WifiSettings;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 170
    .local v1, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 171
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 173
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 147
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->onScanMenuPressed()V

    goto :goto_0

    .line 152
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 157
    :sswitch_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0052 -> :sswitch_2
        0x7f0b04a4 -> :sswitch_0
        0x7f0b04a6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x4

    const v5, 0x3ecccccd

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 83
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_samsungaccount_for_wifisetupwizard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iput-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 90
    :cond_1
    const v1, 0x7f040188

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 92
    const v1, 0x7f0b04a4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->scanButton:Landroid/widget/Button;

    .line 93
    const v1, 0x7f0b04a6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    .line 94
    const v1, 0x7f0b04a8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f0b04a7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    .line 96
    const v1, 0x7f0b0052

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    .line 97
    const v1, 0x7f0b04a9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f0b04aa

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    .line 99
    const v1, 0x7f0b04a3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->wifiSwitch:Landroid/widget/Switch;

    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->scanButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->initialize()V

    .line 107
    new-instance v1, Lcom/android/settings_ex/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->wifiSwitch:Landroid/widget/Switch;

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    .line 109
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v1, :cond_4

    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 131
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    .line 132
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    new-instance v1, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$1;-><init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    return-void

    .line 123
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 125
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 128
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->pause()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 208
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->resume()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 217
    return-void
.end method
