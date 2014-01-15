.class public Lcom/android/settings_ex/myprofile/ClockWidgetPreference;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ClockWidgetPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CLOCK_SIZE_DB:Ljava/lang/String; = "lock_screen_clock_size"

.field private static final DUALCLOCK_MENU_SETTINGS:Ljava/lang/String; = "dualclock_menu_settings"

.field private static final KEY_DUALCLOCK_SETTINGS:Ljava/lang/String; = "dualclock_settings"

.field private static final KEY_LOCK_SCREEN_CLOCK_SIZE_CATEGORY:Ljava/lang/String; = "clock_size_category"

.field private static final KEY_LOCK_SCREEN_DATE_AND_YEAR:Ljava/lang/String; = "lock_screen_date_and_year"

.field private static final KEY_LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "owner_info_settings"


# instance fields
.field context:Landroid/content/Context;

.field isFromUnlock:Z

.field private mClickSizeList:Landroid/preference/ListPreference;

.field private mClockSizePrefCategory:Landroid/preference/PreferenceCategory;

.field private mDateAndYear:Landroid/preference/CheckBoxPreference;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mOwnerInfo:Landroid/preference/PreferenceScreen;

.field private mRadioboxPref:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/myprofile/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSelection:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mRadioboxPref:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/myprofile/ClockWidgetPreference;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/myprofile/ClockWidgetPreference;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 75
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 79
    const v1, 0x7f070050

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 80
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->context:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, intent:Landroid/content/Intent;
    iput-boolean v2, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->isFromUnlock:Z

    .line 64
    const-string v1, "direct_lockscren"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->isFromUnlock:Z

    .line 67
    iget-boolean v1, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->isFromUnlock:Z

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.stop.app-in-app"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, key:Ljava/lang/String;
    const-string v5, "dualclock_settings"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 180
    const-string v5, "oversea"

    const-string v6, "ril.currentplmn"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 181
    .local v0, isRoamingArea:Z
    if-nez v0, :cond_1

    const-string v5, "SKT"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    .local v2, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090d02

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 184
    const v5, 0x7f091277

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 185
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings_ex/myprofile/ClockWidgetPreference$2;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/myprofile/ClockWidgetPreference$2;-><init>(Lcom/android/settings_ex/myprofile/ClockWidgetPreference;)V

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 198
    .end local v0           #isRoamingArea:Z
    .end local v2           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    .end local p2
    :cond_0
    :goto_0
    return v4

    .line 194
    .restart local v0       #isRoamingArea:Z
    .restart local p2
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 195
    .local v3, value:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dualclock_menu_settings"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 130
    iget-object v8, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 131
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lock_screen_date_and_year"

    iget-object v8, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v9

    :goto_0
    invoke-static {v11, v12, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    :cond_0
    :goto_1
    instance-of v8, p2, Lcom/android/settings_ex/myprofile/RadioButtonPreference;

    if-eqz v8, :cond_9

    move-object v6, p2

    .line 160
    check-cast v6, Lcom/android/settings_ex/myprofile/RadioButtonPreference;

    .line 161
    .local v6, pref:Lcom/android/settings_ex/myprofile/RadioButtonPreference;
    invoke-virtual {v6}, Lcom/android/settings_ex/myprofile/RadioButtonPreference;->getPosition()I

    move-result v5

    .line 162
    .local v5, pos:I
    invoke-virtual {v6}, Lcom/android/settings_ex/myprofile/RadioButtonPreference;->getValue()I

    move-result v7

    .line 163
    .local v7, value:I
    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v8, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mRadioboxPref:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_7

    .line 166
    if-eq v0, v5, :cond_1

    .line 167
    iget-object v8, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mRadioboxPref:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/myprofile/RadioButtonPreference;

    invoke-virtual {v8, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 165
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v5           #pos:I
    .end local v6           #pref:Lcom/android/settings_ex/myprofile/RadioButtonPreference;
    .end local v7           #value:I
    :cond_2
    move v8, v10

    .line 131
    goto :goto_0

    .line 132
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 133
    const v8, 0x7f090172

    invoke-static {v8}, Lcom/android/settings_ex/OwnerInfoSettings;->newInstance(I)Lcom/android/settings_ex/OwnerInfoSettings;

    move-result-object v4

    .line 134
    .local v4, newFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v11, "dialog"

    invoke-virtual {v4, v8, v11}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    .end local v4           #newFragment:Landroid/app/DialogFragment;
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 136
    const-string v8, "oversea"

    const-string v11, "ril.currentplmn"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 137
    .local v2, isRoamingArea:Z
    if-nez v2, :cond_5

    const-string v8, "SKT"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 138
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    .local v3, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f090d02

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 140
    const v8, 0x7f091277

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 141
    const v8, 0x104000a

    new-instance v11, Lcom/android/settings_ex/myprofile/ClockWidgetPreference$1;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/myprofile/ClockWidgetPreference$1;-><init>(Lcom/android/settings_ex/myprofile/ClockWidgetPreference;)V

    invoke-virtual {v3, v8, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 174
    .end local v2           #isRoamingArea:Z
    .end local v3           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    :goto_3
    return v9

    .line 149
    .restart local v2       #isRoamingArea:Z
    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v1, intent:Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v10, "com.android.settings_ex"

    const-string v11, "com.android.settings_ex.Settings$DualClockSettingActivity"

    invoke-direct {v8, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    iget-boolean v8, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->isFromUnlock:Z

    if-eqz v8, :cond_6

    .line 153
    const-string v8, "direct_lockscren"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    :cond_6
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 169
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isRoamingArea:Z
    .restart local v0       #i:I
    .restart local v5       #pos:I
    .restart local v6       #pref:Lcom/android/settings_ex/myprofile/RadioButtonPreference;
    .restart local v7       #value:I
    :cond_7
    iget v8, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mSelection:I

    if-eq v8, v5, :cond_8

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_clock_size"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    :cond_8
    iput v5, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mSelection:I

    .line 174
    .end local v0           #i:I
    .end local v5           #pos:I
    .end local v6           #pref:Lcom/android/settings_ex/myprofile/RadioButtonPreference;
    .end local v7           #value:I
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    goto :goto_3
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 85
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 87
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 89
    .local v4, res:Landroid/content/res/Resources;
    const-string v6, "dualclock_settings"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 90
    iget-object v6, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    iget-object v6, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v6, :cond_0

    .line 92
    iget-object v9, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "dualclock_menu_settings"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 95
    :cond_0
    const-string v6, "clock_size_category"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mClockSizePrefCategory:Landroid/preference/PreferenceCategory;

    .line 96
    iget-object v6, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mClockSizePrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 97
    iget-object v6, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mRadioboxPref:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "lock_screen_clock_size"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, current:I
    const/high16 v6, 0x7f0a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, prefArray:[Ljava/lang/String;
    const v6, 0x7f0a0001

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, valueArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_4

    .line 104
    new-instance v2, Lcom/android/settings_ex/myprofile/RadioButtonPreference;

    iget-object v6, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->context:Landroid/content/Context;

    aget-object v9, v5, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v2, v6, v9, v1}, Lcom/android/settings_ex/myprofile/RadioButtonPreference;-><init>(Landroid/content/Context;II)V

    .line 105
    .local v2, pref:Lcom/android/settings_ex/myprofile/RadioButtonPreference;
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v0, :cond_3

    move v6, v7

    :goto_2
    invoke-virtual {v2, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 106
    aget-object v6, v3, v1

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v6, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mClockSizePrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 108
    iget-object v6, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mRadioboxPref:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    iput v1, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mSelection:I

    .line 103
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #current:I
    .end local v1           #i:I
    .end local v2           #pref:Lcom/android/settings_ex/myprofile/RadioButtonPreference;
    .end local v3           #prefArray:[Ljava/lang/String;
    .end local v5           #valueArray:[Ljava/lang/String;
    :cond_2
    move v6, v8

    .line 92
    goto :goto_0

    .restart local v0       #current:I
    .restart local v1       #i:I
    .restart local v2       #pref:Lcom/android/settings_ex/myprofile/RadioButtonPreference;
    .restart local v3       #prefArray:[Ljava/lang/String;
    .restart local v5       #valueArray:[Ljava/lang/String;
    :cond_3
    move v6, v8

    .line 105
    goto :goto_2

    .line 112
    .end local v2           #pref:Lcom/android/settings_ex/myprofile/RadioButtonPreference;
    :cond_4
    const-string v6, "lock_screen_date_and_year"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    .line 116
    iget-object v6, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_5

    .line 117
    iget-object v6, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_date_and_year"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_6

    :goto_3
    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 120
    :cond_5
    const-string v6, "owner_info_settings"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings_ex/myprofile/ClockWidgetPreference;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    .line 125
    return-void

    :cond_6
    move v7, v8

    .line 117
    goto :goto_3
.end method
