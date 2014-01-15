.class public abstract Lcom/android/settings_ex/cloud/SyncFragment;
.super Landroid/preference/PreferenceFragment;
.source "SyncFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;


# static fields
.field public static final TYPE_DATA_SYNC:I = 0x0

.field public static final TYPE_WIFI_ONLY:I = 0x1


# instance fields
.field private dialogFragment:Landroid/app/DialogFragment;

.field protected mActionBarSwitch:Landroid/widget/Switch;

.field protected mPrefWifiOnly:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/settings_ex/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 43
    iput-object v0, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    return-void
.end method


# virtual methods
.method protected abstract broadcastStatus(I)V
.end method

.method protected finish()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 132
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public onCancelButtonClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 183
    iget-object v2, p0, Lcom/android/settings_ex/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/settings_ex/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 185
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "dialogType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 187
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 198
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #type:I
    :cond_0
    :goto_0
    return-void

    .line 189
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v1       #type:I
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 190
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/cloud/SyncFragment;->updateScreen(I)V

    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 194
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/cloud/SyncFragment;->updateScreen(I)V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 95
    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/cloud/SyncFragment;->broadcastStatus(I)V

    .line 105
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/cloud/SyncFragment;->updateScreen(I)V

    .line 106
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f0910e4

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/settings_ex/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;)Lcom/android/settings_ex/cloud/CloudDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0, v3}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPositiveButtonClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    iget-object v2, p0, Lcom/android/settings_ex/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/settings_ex/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 163
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "dialogType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 165
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 176
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #type:I
    :cond_0
    :goto_0
    return-void

    .line 167
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v1       #type:I
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/cloud/SyncFragment;->updateScreen(I)V

    .line 168
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/cloud/SyncFragment;->broadcastStatus(I)V

    goto :goto_0

    .line 171
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/cloud/SyncFragment;->updateScreen(I)V

    .line 172
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/cloud/SyncFragment;->broadcastStatus(I)V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 113
    .local v0, isCheck:Z
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/cloud/SyncFragment;->broadcastStatus(I)V

    .line 122
    .end local v0           #isCheck:Z
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/cloud/SyncFragment;->updateScreen(I)V

    .line 123
    return v4

    .line 116
    .restart local v0       #isCheck:Z
    :cond_1
    const/4 v1, 0x3

    const v2, 0x7f0910eb

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/android/settings_ex/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings_ex/cloud/CloudDialog$DialogListener;)Lcom/android/settings_ex/cloud/CloudDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/settings_ex/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 56
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 57
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 59
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    .line 61
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 64
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 65
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 67
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 74
    .end local v1           #padding:I
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 203
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 204
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 205
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 206
    return-void
.end method

.method protected abstract toggleCheckbox(Z)V
.end method

.method protected abstract togglePreferences(Z)V
.end method

.method protected updateScreen(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 138
    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v0

    .line 140
    .local v0, settings:Lcom/android/settings_ex/cloud/CloudSettings;
    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/SyncFragment;->finish()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings_ex/cloud/CloudSettings;->isAccountSet()Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/SyncFragment;->finish()V

    goto :goto_0

    .line 148
    :cond_2
    if-nez p1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/cloud/SyncFragment;->togglePreferences(Z)V

    goto :goto_0

    .line 150
    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/settings_ex/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/cloud/SyncFragment;->toggleCheckbox(Z)V

    goto :goto_0
.end method
