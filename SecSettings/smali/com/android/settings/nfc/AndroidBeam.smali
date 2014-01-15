.class public Lcom/android/settings_ex/nfc/AndroidBeam;
.super Landroid/app/Fragment;
.source "AndroidBeam.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mImageView:Landroid/widget/ImageView;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 120
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const v1, 0x7f0b0025

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    .local v0, mTextView:Landroid/widget/TextView;
    const v1, 0x7f090268

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    .end local v0           #mTextView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, success:Z
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 130
    if-eqz p2, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    .line 135
    :goto_0
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 139
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 55
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    .line 57
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 58
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 59
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 61
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 62
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 68
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 74
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 77
    iget-object v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 103
    const v0, 0x7f04000c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/nfc/AndroidBeam;->initView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 114
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 84
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 87
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 88
    .local v1, rp:Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 90
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 91
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 94
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 95
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
