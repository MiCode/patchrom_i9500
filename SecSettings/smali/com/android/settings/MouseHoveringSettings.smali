.class public Lcom/android/settings_ex/MouseHoveringSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "MouseHoveringSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final KEY_ICON_LABELS:Ljava/lang/String; = "icon_labels"

.field private static final KEY_INFORMATION_PREVIEW:Ljava/lang/String; = "information_preview"

.field private static final KEY_LIST_SCROLL:Ljava/lang/String; = "list_scrolling"

.field private static final KEY_MAGNETIC_UI:Ljava/lang/String; = "magnetic_ui"

.field private static final KEY_PROGRESS_BAR_PREVIEW:Ljava/lang/String; = "progress_bar_preview"

.field public static final MENU_HELP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MouseHoveringSettings"


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mIconLabels:Landroid/preference/CheckBoxPreference;

.field private mInforamtionPreview:Landroid/preference/CheckBoxPreference;

.field private mListScroll:Landroid/preference/CheckBoxPreference;

.field private mMagneticUI:Landroid/preference/CheckBoxPreference;

.field private mMouseHoveringObserver:Landroid/database/ContentObserver;

.field private mProgressBarPreview:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 75
    new-instance v0, Lcom/android/settings_ex/MouseHoveringSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/MouseHoveringSettings$1;-><init>(Lcom/android/settings_ex/MouseHoveringSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mMouseHoveringObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/MouseHoveringSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/MouseHoveringSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings_ex/MouseHoveringSettings;->broadcastMouseHoveringChanged(Z)V

    return-void
.end method

.method private broadcastMouseHoveringChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 375
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 378
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 379
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 301
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090b89

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090b88

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/MouseHoveringSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/MouseHoveringSettings$3;-><init>(Lcom/android/settings_ex/MouseHoveringSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings_ex/MouseHoveringSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/MouseHoveringSettings$2;-><init>(Lcom/android/settings_ex/MouseHoveringSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 349
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 352
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    .line 354
    const/4 v5, 0x0

    .line 355
    .local v5, informationPreview:I
    iget-object v9, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "mouse_hovering_information_preview"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 357
    iget-object v9, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "mouse_hovering_icon_label"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 359
    .local v0, IconLabels:I
    iget-object v9, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "mouse_hovering_list_scroll"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 361
    .local v1, ListScroll:I
    iget-object v9, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "mouse_hovering_highlight"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 363
    .local v4, highlight:I
    iget-object v9, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "mouse_hovering_full_text"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 365
    .local v3, fullText:I
    const/4 v6, 0x0

    .line 366
    .local v6, progressBarPreview:I
    iget-object v9, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "mouse_hovering_progress_bar_preview"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 368
    iget-object v9, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "mouse_hovering_magnetic_ui"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 370
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

    .line 220
    if-eqz p2, :cond_1

    .line 221
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/settings_ex/MouseHoveringSettings;->makeTalkBackDisablePopup()V

    .line 262
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering_highlight"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    invoke-static {p2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    .line 230
    invoke-direct {p0, p2}, Lcom/android/settings_ex/MouseHoveringSettings;->broadcastMouseHoveringChanged(Z)V

    .line 232
    const-string v0, "MouseHoveringSettings"

    const-string v1, "switch is on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    invoke-static {p2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    .line 250
    invoke-direct {p0, p2}, Lcom/android/settings_ex/MouseHoveringSettings;->broadcastMouseHoveringChanged(Z)V

    .line 252
    const-string v0, "MouseHoveringSettings"

    const-string v1, "switch is off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v2, 0x7f07004f

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    .line 100
    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 102
    iget-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    .line 103
    iget-object v1, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 104
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 107
    .local v0, padding:I
    iget-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 108
    iget-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 111
    iget-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 116
    iget-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActionBarLayout:Landroid/view/View;

    .line 120
    .end local v0           #padding:I
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    .line 124
    const-string v2, "information_preview"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    .line 125
    const-string v2, "icon_labels"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

    .line 126
    const-string v2, "list_scrolling"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

    .line 129
    const-string v2, "progress_bar_preview"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

    .line 130
    const-string v2, "magnetic_ui"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    .line 132
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 196
    const/4 v0, 0x1

    const v1, 0x7f090ce0

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02018c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 199
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 213
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 206
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "air_view"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 210
    const/4 v1, 0x1

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings_ex/MouseHoveringSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090ccb

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    .line 177
    invoke-direct {p0, v2}, Lcom/android/settings_ex/MouseHoveringSettings;->broadcastMouseHoveringChanged(Z)V

    .line 179
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 268
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mouse_hovering_information_preview"

    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/MouseHoveringSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 293
    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 268
    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 270
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mouse_hovering_icon_label"

    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_3

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 272
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mouse_hovering_list_scroll"

    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_4

    .line 277
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 278
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mouse_hovering_progress_bar_preview"

    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_5

    .line 279
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 280
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mouse_hovering_magnetic_ui"

    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_6

    .line 282
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_2
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 137
    const-string v3, "MouseHoveringSettings"

    const-string v4, "onResume()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    .line 144
    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "mouse_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 146
    .local v0, MouseHoveringViewState:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 148
    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 149
    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 150
    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 153
    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 154
    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 156
    iget-object v4, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "mouse_hovering_information_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 157
    iget-object v4, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "mouse_hovering_icon_label"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 158
    iget-object v4, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "mouse_hovering_list_scroll"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 161
    iget-object v4, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "mouse_hovering_progress_bar_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 162
    iget-object v3, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "mouse_hovering_magnetic_ui"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 164
    iget-object v2, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "mouse_hovering"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mMouseHoveringObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 166
    return-void

    .end local v0           #MouseHoveringViewState:Z
    :cond_2
    move v0, v2

    .line 144
    goto :goto_0

    .restart local v0       #MouseHoveringViewState:Z
    :cond_3
    move v3, v2

    .line 156
    goto :goto_1

    :cond_4
    move v3, v2

    .line 157
    goto :goto_2

    :cond_5
    move v3, v2

    .line 158
    goto :goto_3

    :cond_6
    move v3, v2

    .line 161
    goto :goto_4
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/MouseHoveringSettings;->mMouseHoveringObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 189
    return-void
.end method
