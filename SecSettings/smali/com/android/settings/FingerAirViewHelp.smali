.class public Lcom/android/settings_ex/FingerAirViewHelp;
.super Landroid/app/Fragment;
.source "FingerAirViewHelp.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_INFORMATION_PREVIEW:Ljava/lang/String; = "information_preview"

.field private static final KEY_INFORMATION_PREVIEW_GALLERY:Ljava/lang/String; = "information_preview_gallery"

.field private static final KEY_INFORMATION_PREVIEW_MESSAGE:Ljava/lang/String; = "information_preview_message"

.field private static final KEY_INFORMATION_PREVIEW_SPLANNER:Ljava/lang/String; = "information_preview_splanner"

.field private static final KEY_MAGNIFIER:Ljava/lang/String; = "magnifier"

.field private static final KEY_PROGRESS_BAR_PREVIEW:Ljava/lang/String; = "progress_bar_preview"

.field private static final KEY_SPEED_DIAL_TIP:Ljava/lang/String; = "speed_dial_tip"

.field private static final TAG:Ljava/lang/String; = "FingerAirViewHelp"


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mDBItem:Ljava/lang/String;

.field private mHelpType:Ljava/lang/String;

.field private mTurnOnDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 70
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    .line 71
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/FingerAirViewHelp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/FingerAirViewHelp;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings_ex/FingerAirViewHelp;->showTurnOnDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/FingerAirViewHelp;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private showTurnOnDialog(Ljava/lang/String;)V
    .locals 8
    .parameter "type"

    .prologue
    const/4 v7, 0x0

    .line 307
    iget-object v4, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 308
    iget-object v4, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 309
    iput-object v7, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 311
    :cond_0
    move-object v3, p1

    .line 312
    .local v3, tutorial_type:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 313
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f090ced

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, title:Ljava/lang/String;
    const v4, 0x7f090cee

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, message:Ljava/lang/String;
    const-string v4, "information_preview"

    iget-object v5, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 317
    const v4, 0x7f090cef

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    const v4, 0x7f090cf3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    :cond_1
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090699

    new-instance v6, Lcom/android/settings_ex/FingerAirViewHelp$7;

    invoke-direct {v6, p0, v3}, Lcom/android/settings_ex/FingerAirViewHelp$7;-><init>(Lcom/android/settings_ex/FingerAirViewHelp;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090143

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 342
    return-void

    .line 319
    :cond_2
    const-string v4, "progress_bar_preview"

    iget-object v5, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 320
    const v4, 0x7f090cf0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    const v4, 0x7f090cf4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_3
    const-string v4, "speed_dial_tip"

    iget-object v5, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 323
    const v4, 0x7f090cf1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 324
    const v4, 0x7f090cf5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_4
    const-string v4, "magnifier"

    iget-object v5, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 326
    const v4, 0x7f090cf2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 327
    const v4, 0x7f090cf6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 301
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "default"

    iget-object v2, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    :cond_0
    return-void

    .line 302
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/16 v7, 0x10

    const/4 v8, -0x2

    const/4 v6, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 80
    const-string v4, "type"

    const-string v5, "default"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 84
    .local v1, mActivity:Landroid/app/Activity;
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    .line 85
    instance-of v4, v1, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 86
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 87
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 89
    .local v2, padding:I
    iget-object v4, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 90
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 92
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 96
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    .line 99
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 104
    const/4 v12, 0x0

    .line 106
    .local v12, view:Landroid/view/View;
    const v13, 0x7f040076

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 108
    const v13, 0x7f0b0175

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 110
    .local v3, helpContent:Landroid/widget/LinearLayout;
    const-string v13, "information_preview"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 111
    const-string v13, "finger_air_view_information_preview"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 113
    new-instance v4, Lcom/android/settings_ex/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 114
    .local v4, infoPreview:Lcom/android/settings_ex/HelpItem;
    const v13, 0x7f090ce1

    invoke-virtual {v4, v13}, Lcom/android/settings_ex/HelpItem;->setContentText(I)V

    .line 115
    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 116
    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Lcom/android/settings_ex/HelpItem;->setImageVisibility(I)V

    .line 117
    invoke-virtual {v4}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    new-instance v11, Lcom/android/settings_ex/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 120
    .local v11, splanner:Lcom/android/settings_ex/HelpItem;
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, salesCode:Ljava/lang/String;
    const-string v13, "ATT"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "SPR"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "VZW"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "TMB"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "USC"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 122
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 123
    .local v8, res:Landroid/content/res/Resources;
    const v13, 0x7f090ce3

    invoke-virtual {v11, v13}, Lcom/android/settings_ex/HelpItem;->setTitleText(I)V

    .line 124
    const v13, 0x7f090ce5

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const v16, 0x7f090ce3

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 130
    .end local v8           #res:Landroid/content/res/Resources;
    :goto_0
    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Lcom/android/settings_ex/HelpItem;->setImageVisibility(I)V

    .line 133
    new-instance v13, Lcom/android/settings_ex/FingerAirViewHelp$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings_ex/FingerAirViewHelp$1;-><init>(Lcom/android/settings_ex/FingerAirViewHelp;)V

    invoke-virtual {v11, v13}, Lcom/android/settings_ex/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {v11}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    new-instance v2, Lcom/android/settings_ex/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 145
    .local v2, gallery:Lcom/android/settings_ex/HelpItem;
    const v13, 0x7f090ce6

    invoke-virtual {v2, v13}, Lcom/android/settings_ex/HelpItem;->setTitleText(I)V

    .line 146
    const v13, 0x7f090ce7

    invoke-virtual {v2, v13}, Lcom/android/settings_ex/HelpItem;->setContentText(I)V

    .line 147
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Lcom/android/settings_ex/HelpItem;->setImageVisibility(I)V

    .line 150
    new-instance v13, Lcom/android/settings_ex/FingerAirViewHelp$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings_ex/FingerAirViewHelp$2;-><init>(Lcom/android/settings_ex/FingerAirViewHelp;)V

    invoke-virtual {v2, v13}, Lcom/android/settings_ex/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {v2}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 161
    new-instance v6, Lcom/android/settings_ex/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 162
    .local v6, message:Lcom/android/settings_ex/HelpItem;
    const v13, 0x7f090ce8

    invoke-virtual {v6, v13}, Lcom/android/settings_ex/HelpItem;->setTitleText(I)V

    .line 163
    const v13, 0x7f090ce9

    invoke-virtual {v6, v13}, Lcom/android/settings_ex/HelpItem;->setContentText(I)V

    .line 164
    const/16 v13, 0x8

    invoke-virtual {v6, v13}, Lcom/android/settings_ex/HelpItem;->setImageVisibility(I)V

    .line 167
    new-instance v13, Lcom/android/settings_ex/FingerAirViewHelp$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings_ex/FingerAirViewHelp$3;-><init>(Lcom/android/settings_ex/FingerAirViewHelp;)V

    invoke-virtual {v6, v13}, Lcom/android/settings_ex/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {v6}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    .end local v2           #gallery:Lcom/android/settings_ex/HelpItem;
    .end local v4           #infoPreview:Lcom/android/settings_ex/HelpItem;
    .end local v6           #message:Lcom/android/settings_ex/HelpItem;
    .end local v9           #salesCode:Ljava/lang/String;
    .end local v11           #splanner:Lcom/android/settings_ex/HelpItem;
    :cond_1
    :goto_1
    return-object v12

    .line 127
    .restart local v4       #infoPreview:Lcom/android/settings_ex/HelpItem;
    .restart local v9       #salesCode:Ljava/lang/String;
    .restart local v11       #splanner:Lcom/android/settings_ex/HelpItem;
    :cond_2
    const v13, 0x7f090ce2

    invoke-virtual {v11, v13}, Lcom/android/settings_ex/HelpItem;->setTitleText(I)V

    .line 128
    const v13, 0x7f090ce4

    invoke-virtual {v11, v13}, Lcom/android/settings_ex/HelpItem;->setContentText(I)V

    goto :goto_0

    .line 177
    .end local v4           #infoPreview:Lcom/android/settings_ex/HelpItem;
    .end local v9           #salesCode:Ljava/lang/String;
    .end local v11           #splanner:Lcom/android/settings_ex/HelpItem;
    :cond_3
    const-string v13, "progress_bar_preview"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 178
    const-string v13, "finger_air_view_pregress_bar_preview"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 180
    new-instance v7, Lcom/android/settings_ex/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 181
    .local v7, progress_bar_preview:Lcom/android/settings_ex/HelpItem;
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 182
    const v13, 0x7f090cea

    invoke-virtual {v7, v13}, Lcom/android/settings_ex/HelpItem;->setContentText(I)V

    .line 183
    const v13, 0x7f0200ae

    invoke-virtual {v7, v13}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 184
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V

    .line 185
    new-instance v13, Lcom/android/settings_ex/FingerAirViewHelp$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings_ex/FingerAirViewHelp$4;-><init>(Lcom/android/settings_ex/FingerAirViewHelp;)V

    invoke-virtual {v7, v13}, Lcom/android/settings_ex/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {v7}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 195
    .end local v7           #progress_bar_preview:Lcom/android/settings_ex/HelpItem;
    :cond_4
    const-string v13, "speed_dial_tip"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 196
    const-string v13, "finger_air_view_speed_dial_tip"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 198
    new-instance v10, Lcom/android/settings_ex/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 199
    .local v10, speed_dial_tip:Lcom/android/settings_ex/HelpItem;
    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 200
    const v13, 0x7f090ceb

    invoke-virtual {v10, v13}, Lcom/android/settings_ex/HelpItem;->setContentText(I)V

    .line 201
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    .line 202
    .restart local v9       #salesCode:Ljava/lang/String;
    const-string v13, "ATT"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "SPR"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "VZW"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "TMB"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "USC"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 204
    :cond_5
    const v13, 0x7f0200b3

    invoke-virtual {v10, v13}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 208
    :goto_2
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V

    .line 209
    new-instance v13, Lcom/android/settings_ex/FingerAirViewHelp$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings_ex/FingerAirViewHelp$5;-><init>(Lcom/android/settings_ex/FingerAirViewHelp;)V

    invoke-virtual {v10, v13}, Lcom/android/settings_ex/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-virtual {v10}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 206
    :cond_6
    const v13, 0x7f0200b2

    invoke-virtual {v10, v13}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    goto :goto_2

    .line 219
    .end local v9           #salesCode:Ljava/lang/String;
    .end local v10           #speed_dial_tip:Lcom/android/settings_ex/HelpItem;
    :cond_7
    const-string v13, "magnifier"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/FingerAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 220
    const-string v13, "finger_air_view_magnifier"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 222
    new-instance v5, Lcom/android/settings_ex/HelpItem;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/settings_ex/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 223
    .local v5, magnifier:Lcom/android/settings_ex/HelpItem;
    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Lcom/android/settings_ex/HelpItem;->setTitleVisibility(I)V

    .line 224
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090cd0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, contents:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    .line 228
    .restart local v9       #salesCode:Ljava/lang/String;
    const-string v13, "DCM"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 229
    const-string v13, "ja"

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget-object v14, v14, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 230
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090cd0

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    :cond_8
    invoke-virtual {v5, v1}, Lcom/android/settings_ex/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 235
    const v13, 0x7f0200aa

    invoke-virtual {v5, v13}, Lcom/android/settings_ex/HelpItem;->setContentImage(I)V

    .line 236
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/android/settings_ex/HelpItem;->usePlayButton(Z)V

    .line 237
    new-instance v13, Lcom/android/settings_ex/FingerAirViewHelp$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings_ex/FingerAirViewHelp$6;-><init>(Lcom/android/settings_ex/FingerAirViewHelp;)V

    invoke-virtual {v5, v13}, Lcom/android/settings_ex/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual {v5}, Lcom/android/settings_ex/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 278
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 279
    iget-object v2, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 284
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "default"

    iget-object v3, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 285
    iget-object v2, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 286
    .local v1, status:Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 288
    .end local v1           #status:Z
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 292
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewHelp;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :cond_0
    return-void
.end method

.method public startTryActually(Ljava/lang/String;)V
    .locals 4
    .parameter "type"

    .prologue
    .line 345
    const-string v2, "information_preview_splanner"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.intent.calendar.help"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 378
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    const-string v2, "information_preview_gallery"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "image/jpg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v2, "IsHelpMode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    const-string v2, "HelpMode"

    const-string v3, "INFORMATION_PREVIEW"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 355
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const-string v2, "information_preview_message"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.help.AirViewTutorialReceiver.java"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.android.mms.help.AirViewMainActivity"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 359
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const-string v2, "progress_bar_preview"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.START_HELP_VIDEO_PROGRESS_BAR_PREVIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "file:///system/media/video/video_help.mp4"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 363
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    const-string v2, "speed_dial_tip"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 365
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.jcontacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 366
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.jcontacts.action.DialerHelpActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, mIntent:Landroid/content/Intent;
    :goto_1
    const-string v2, "DialerGuideMode"

    const-string v3, "SPEED_DIAL_TIP_TUTORIAL"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 369
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.DialerHelpActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1       #mIntent:Landroid/content/Intent;
    goto :goto_1

    .line 373
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_6
    const-string v2, "magnifier"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.sbrowsertry.GUIDE_AIRVIEW_MAGNIFIER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .restart local v1       #mIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
