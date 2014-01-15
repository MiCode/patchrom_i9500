.class public Lcom/android/settings_ex/wifi/WifiAdvancedSecSetupActivity;
.super Landroid/app/Activity;
.source "WifiAdvancedSecSetupActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiAdvancedSecSetupActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 45
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .local v1, frame:Landroid/widget/FrameLayout;
    const v3, 0x7f0b0404

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 47
    new-instance v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-direct {v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;-><init>()V

    .line 48
    .local v0, advancedWifiSettings:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 49
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 50
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 51
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 39
    :cond_0
    const v0, 0x7f04015a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiAdvancedSecSetupActivity;->initialize()V

    .line 42
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 56
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 61
    return-void
.end method
