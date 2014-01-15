.class public Lcom/android/settings_ex/EasyDisplaySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "EasyDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DIALOG_ID_FONT_NOTI:I = 0x2

.field private static final KEY_FONT_SIZE:Ljava/lang/String; = "font_size"

.field private static final LARGE_FONT_SCALE:F = 1.3f

.field public static final PREF_FONT_NOTI:Ljava/lang/String; = "pref_font_noti"

.field private static final TAG:Ljava/lang/String; = "EasyDisplaySettings"


# instance fields
.field private mBrightness:Lcom/android/settings_ex/BrightnessPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mFontList:Lcom/android/settings_ex/flipfont/FontListPreference;

.field private mFontSize:Lcom/android/settings_ex/FontSizeListPreference;

.field private mFontSizePref:Landroid/preference/ListPreference;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mScreen:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 97
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mDirect:I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mDirectUri:Landroid/net/Uri;

    .line 112
    new-instance v0, Lcom/android/settings_ex/EasyDisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/EasyDisplaySettings$1;-><init>(Lcom/android/settings_ex/EasyDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/EasyDisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 218
    return-void
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter "val"

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, indices:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 152
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 153
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 154
    .local v3, thisVal:F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 155
    add-int/lit8 v4, v0, -0x1

    .line 159
    .end local v3           #thisVal:F
    :goto_1
    return v4

    .line 157
    .restart local v3       #thisVal:F
    :cond_0
    move v2, v3

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v3           #thisVal:F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EasyDisplaySettings"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 126
    .local v2, resolver:Landroid/content/ContentResolver;
    const v3, 0x7f070034

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 129
    new-instance v1, Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {v1}, Lcom/android/settings_ex/DisplaySettings;-><init>()V

    .line 130
    .local v1, eds:Lcom/android/settings_ex/DisplaySettings;
    const-string v3, "font_size"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/FontSizeListPreference;

    iput-object v3, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mFontSize:Lcom/android/settings_ex/FontSizeListPreference;

    .line 131
    iget-object v3, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mFontSize:Lcom/android/settings_ex/FontSizeListPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings_ex/FontSizeListPreference;->setObject(Lcom/android/settings_ex/DisplaySettings;)V

    .line 132
    const-string v3, "MONOTYPE"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/flipfont/FontListPreference;

    iput-object v3, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mFontList:Lcom/android/settings_ex/flipfont/FontListPreference;

    .line 133
    iget-object v3, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mFontList:Lcom/android/settings_ex/flipfont/FontListPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings_ex/flipfont/FontListPreference;->setObject(Lcom/android/settings_ex/DisplaySettings;)V

    .line 135
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 136
    .local v0, activity:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mDirectUri:Landroid/net/Uri;

    .line 137
    iget-object v3, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mDirectUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mDirect:I

    .line 139
    const-string v3, "Direct"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDirect : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mDirect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v3, "font_size"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    .line 145
    iget-object v3, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "dialogId"

    .prologue
    const/4 v5, 0x0

    .line 232
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 233
    .local v3, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 234
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f0400e2

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 235
    .local v2, layout:Landroid/view/View;
    const v6, 0x7f0b010a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 236
    .local v4, mcheck:Landroid/widget/CheckBox;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    .line 239
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f090021

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/settings_ex/EasyDisplaySettings$2;

    invoke-direct {v7, p0, v0, v4}, Lcom/android/settings_ex/EasyDisplaySettings$2;-><init>(Lcom/android/settings_ex/EasyDisplaySettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 252
    :cond_0
    return-object v5
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 212
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 290
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, key:Ljava/lang/String;
    const-string v6, "font_size"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, p2

    .line 293
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/EasyDisplaySettings;->floatToIndex(F)I

    move-result v1

    .line 294
    .local v1, fontIndex:I
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "font_size"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 296
    .local v5, previousIndex:I
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "font_size"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    if-ge v5, v8, :cond_3

    if-ne v1, v8, :cond_3

    .line 298
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v2, i:Landroid/content/Intent;
    const-string v6, "large_font"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    const-string v6, "EasyDisplaySettings"

    const-string v7, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v2           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 313
    .local v4, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v6, "pref_font_noti"

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 315
    .local v0, do_not_show_again:Ljava/lang/Boolean;
    if-ne v1, v8, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 316
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 318
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/EasyDisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 319
    iget-object v6, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/EasyDisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 322
    .end local v0           #do_not_show_again:Ljava/lang/Boolean;
    .end local v1           #fontIndex:I
    .end local v4           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v5           #previousIndex:I
    :cond_2
    return v10

    .line 303
    .restart local v1       #fontIndex:I
    .restart local v5       #previousIndex:I
    :cond_3
    if-ne v5, v8, :cond_0

    if-ge v1, v8, :cond_0

    .line 304
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .restart local v2       #i:Landroid/content/Intent;
    const-string v6, "large_font"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 308
    const-string v6, "EasyDisplaySettings"

    const-string v7, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 286
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 193
    invoke-direct {p0}, Lcom/android/settings_ex/EasyDisplaySettings;->updateState()V

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.settings_ex.action.FONT_SIZE_CLOSE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 201
    .local v1, resolver:Landroid/content/ContentResolver;
    iget v2, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mDirect:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 202
    iget-object v2, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mFontSize:Lcom/android/settings_ex/FontSizeListPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/FontSizeListPreference;->directFontsize()V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mDirect:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mFontList:Lcom/android/settings_ex/flipfont/FontListPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/flipfont/FontListPreference;->directFontList()V

    goto :goto_0
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 9
    .parameter "pref"

    .prologue
    const/4 v8, 0x0

    .line 164
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/EasyDisplaySettings;->floatToIndex(F)I

    move-result v3

    .line 172
    .local v3, index:I
    const-string v5, "EasyDisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : font index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_size"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 174
    .local v1, fontIndex:I
    const-string v5, "EasyDisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : Settings.System.FONT_SIZE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    .line 176
    const/4 v3, 0x4

    .line 177
    const-string v5, "EasyDisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : Extra large font. index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 183
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 184
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f0a0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, fontSizeNames:[Ljava/lang/String;
    const v5, 0x7f0904ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v2, v3

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    return-void

    .line 165
    .end local v1           #fontIndex:I
    .end local v2           #fontSizeNames:[Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "EasyDisplaySettings"

    const-string v6, "Unable to retrieve font size"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 5
    .parameter "objValue"

    .prologue
    .line 258
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 259
    .local v1, fontScale:F
    const-string v2, "EasyDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/high16 v2, 0x3fc0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 261
    const v1, 0x3fa66666

    .line 262
    const-string v2, "EasyDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 268
    iget v2, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mDirect:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 269
    const-string v2, "EasyDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mDirect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mDirect:I

    .line 271
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 281
    .end local v1           #fontScale:F
    :goto_0
    return-void

    .line 274
    .restart local v1       #fontScale:F
    :cond_1
    const-string v2, "EasyDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mDirect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/EasyDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    .end local v1           #fontScale:F
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasyDisplaySettings"

    const-string v3, "Unable to save font size"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
