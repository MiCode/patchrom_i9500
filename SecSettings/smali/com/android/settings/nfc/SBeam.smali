.class public Lcom/android/settings_ex/nfc/SBeam;
.super Landroid/app/Fragment;
.source "SBeam.java"


# static fields
.field public static final MENU_HELP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[SBeam]"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

.field private mHelpCtrl:Lcom/android/settings_ex/nfc/SBeamEnabler$ISBeamHelpController;

.field private mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

.field private mbShowingHelp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/android/settings_ex/nfc/SBeam;->mEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

    .line 65
    iput-object v0, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    .line 67
    iput-object v0, p0, Lcom/android/settings_ex/nfc/SBeam;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    .line 69
    iput-object v0, p0, Lcom/android/settings_ex/nfc/SBeam;->mHelpCtrl:Lcom/android/settings_ex/nfc/SBeamEnabler$ISBeamHelpController;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/nfc/SBeam;->mbShowingHelp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/nfc/SBeam;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/SBeam;->mbShowingHelp:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/nfc/SBeam;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings_ex/nfc/SBeam;->mbShowingHelp:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/nfc/SBeam;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/nfc/SBeam;->createHelpDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/nfc/SBeam;)Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SBeam;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/nfc/SBeam;Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings_ex/nfc/SBeam;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method private createHelpDialog()V
    .locals 4

    .prologue
    .line 220
    new-instance v1, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/nfc/SBeam;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    .line 223
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040083

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SBeam;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 226
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SBeam;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings_ex/helpdialog/TwHelpDialog$TouchMode;)V

    .line 227
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SBeam;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 228
    iget-object v1, p0, Lcom/android/settings_ex/nfc/SBeam;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 229
    return-void
.end method


# virtual methods
.method public isPackageExists(Ljava/lang/String;)Z
    .locals 5
    .parameter "targetPackage"

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v4, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 237
    .local v2, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 238
    .local v1, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 239
    const/4 v3, 0x1

    .line 242
    .end local v1           #packageInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 170
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x10

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    .line 80
    iget-object v6, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 82
    .local v2, context:Landroid/content/Context;
    new-instance v0, Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, actionSwitch:Landroid/widget/Switch;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 86
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 89
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    instance-of v6, v6, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_2

    .line 90
    iget-object v5, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 92
    .local v5, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_2

    .line 94
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 96
    .local v4, padding:I
    invoke-virtual {v0, v9, v9, v4, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    iget-object v6, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 99
    iget-object v6, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v10, v10, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v0, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 104
    iget-object v6, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const v7, 0x7f09026c

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 108
    .end local v4           #padding:I
    .end local v5           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 109
    .local v3, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 111
    .local v1, bHelpMode:Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 113
    if-eqz v3, :cond_3

    .line 114
    const-string v6, "fromHelp"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 115
    if-eqz v1, :cond_3

    .line 116
    new-instance v6, Lcom/android/settings_ex/nfc/SBeam$1;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/nfc/SBeam$1;-><init>(Lcom/android/settings_ex/nfc/SBeam;)V

    iput-object v6, p0, Lcom/android/settings_ex/nfc/SBeam;->mHelpCtrl:Lcom/android/settings_ex/nfc/SBeamEnabler$ISBeamHelpController;

    .line 133
    invoke-virtual {p0, v9}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 138
    :cond_3
    new-instance v6, Lcom/android/settings_ex/nfc/SBeamEnabler;

    iget-object v7, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/android/settings_ex/nfc/SBeam;->mHelpCtrl:Lcom/android/settings_ex/nfc/SBeamEnabler$ISBeamHelpController;

    invoke-direct {v6, v7, v0, v8}, Lcom/android/settings_ex/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings_ex/nfc/SBeamEnabler$ISBeamHelpController;)V

    iput-object v6, p0, Lcom/android/settings_ex/nfc/SBeam;->mEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

    .line 139
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 198
    const-string v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/SBeam;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    const v1, 0x7f090a11

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 204
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 143
    const v4, 0x7f04011a

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 145
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings_ex/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.snotebook"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 147
    .local v1, i:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 148
    const v4, 0x7f0b0352

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090272

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 152
    :cond_0
    const v4, 0x7f0b0353

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 153
    .local v2, imgView:Landroid/widget/ImageView;
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    const v4, 0x7f050009

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 156
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 157
    .local v0, frameAnim:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 159
    return-object v3
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 192
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 208
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 215
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 210
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "nfc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 213
    const/4 v1, 0x1

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SBeam;->mEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/SBeamEnabler;->procOnPause()V

    .line 182
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SBeam;->mEnabler:Lcom/android/settings_ex/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/SBeamEnabler;->procOnResume()V

    .line 176
    return-void
.end method
