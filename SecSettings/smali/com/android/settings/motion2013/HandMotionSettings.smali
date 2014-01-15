.class public Lcom/android/settings_ex/motion2013/HandMotionSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "HandMotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final KEY_PALM_SWIPE:Ljava/lang/String; = "palm_swipe"

.field private static final KEY_PALM_TOUCH:Ljava/lang/String; = "palm_touch"

.field private static final KEY_TAP_AND_TWIST:Ljava/lang/String; = "tap_and_twist"

.field private static final MENU_HELP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HandMotionSettings"


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

.field private mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->isGoIntoQuideHub:Z

    return-void
.end method


# virtual methods
.method public isAllHandMotionDisabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 203
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_tap_and_twist"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_swipe"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 206
    .local v0, palmSwipe:I
    iget-object v5, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_touch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 208
    .local v1, palmTouch:I
    const/4 v2, 0x0

    .line 211
    .local v2, tapAndTwist:I
    or-int v5, v0, v1

    or-int/2addr v5, v2

    if-ge v5, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_motion_engine"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 199
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 63
    const v2, 0x7f07003b

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    .line 66
    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 67
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 70
    .local v0, padding:I
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 71
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 73
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 77
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 79
    .end local v0           #padding:I
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    const-string v2, "palm_swipe"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    iput-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    .line 82
    const-string v2, "palm_touch"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    iput-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    .line 83
    const-string v2, "tap_and_twist"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    iput-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    .line 85
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 98
    .local v1, ps:Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 174
    const/4 v0, 0x1

    const v1, 0x7f090a11

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02018c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 177
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 188
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 183
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "motion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 186
    const/4 v1, 0x1

    goto :goto_0

    .line 181
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

    .line 128
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 129
    iget-boolean v0, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/HandMotionSettings;->isAllHandMotionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090c1f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, key:Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 155
    .local v1, value:I
    :goto_0
    const-string v4, "palm_swipe"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surface_palm_swipe"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/motion2013/HandMotionSettings;->isAllHandMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surface_motion_engine"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 167
    :cond_1
    return v2

    .end local v1           #value:I
    :cond_2
    move v1, v3

    .line 154
    goto :goto_0

    .line 157
    .restart local v1       #value:I
    :cond_3
    const-string v4, "palm_touch"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 158
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surface_palm_touch"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 159
    :cond_4
    const-string v4, "tap_and_twist"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "surface_tap_and_twist"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->isGoIntoQuideHub:Z

    .line 149
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 105
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 106
    iput-boolean v3, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->isGoIntoQuideHub:Z

    .line 108
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 114
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "surface_palm_swipe"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 115
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "surface_palm_touch"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 116
    iget-object v4, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "surface_tap_and_twist"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_motion_engine"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    .line 119
    .local v0, handMotionEngineState:Z
    :goto_3
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 124
    return-void

    .end local v0           #handMotionEngineState:Z
    :cond_1
    move v1, v3

    .line 114
    goto :goto_0

    :cond_2
    move v1, v3

    .line 115
    goto :goto_1

    :cond_3
    move v1, v3

    .line 116
    goto :goto_2

    :cond_4
    move v0, v3

    .line 118
    goto :goto_3
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/HandMotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_0
    return-void
.end method
