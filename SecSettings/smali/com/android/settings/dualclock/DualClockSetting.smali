.class public Lcom/android/settings_ex/dualclock/DualClockSetting;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DualClockSetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final AUTOMATIC_ENABLED:Ljava/lang/String; = "automatic_enabled"

.field public static final DUALCLOCK_MENU_SETTINGS:Ljava/lang/String; = "dualclock_menu_settings"

.field public static final HOMECITY_TIMEZONE:Ljava/lang/String; = "homecity_timezone"

.field public static final HOMECITY_TIMEZONE_CITY:Ljava/lang/String; = "homecity_timezone_city"

.field private static final HOURS_1:I = 0x36ee80

.field private static final KEY_HOMECITY_TIMEZONE:Ljava/lang/String; = "homecity_timezone"

.field public static final ROAMINGCITY_TIMEZONE:Ljava/lang/String; = "roamingcity_timezone"

.field public static final ROAMINGCITY_TIMEZONE_CITY:Ljava/lang/String; = "roamingcity_timezone_city"

.field private static final TAG:Ljava/lang/String; = "DualClockSetting"


# instance fields
.field isFromUnlock:Z

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mHomeCityTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 248
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v3, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 251
    .local v0, date:J
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070087

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 252
    .local v5, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 254
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    .line 255
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v9, :cond_2

    .line 256
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 257
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 262
    :cond_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "timezone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 263
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 264
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 273
    :cond_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 279
    .end local v5           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object p1

    .line 260
    .restart local v5       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 274
    .end local v5           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v4

    .line 275
    .local v4, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "DateTimeSettings"

    const-string v7, "Ill-formatted timezones.xml file"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 268
    .end local v4           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v9, :cond_5

    .line 269
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 276
    .end local v5           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v2

    .line 277
    .local v2, ioe:Ljava/io/IOException;
    const-string v6, "DateTimeSettings"

    const-string v7, "Unable to read timezones.xml file"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 271
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v5       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private getTimeZoneOffset(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 6
    .parameter "id"
    .parameter "displayName"
    .parameter "date"

    .prologue
    .line 221
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 222
    .local v4, tz:Ljava/util/TimeZone;
    invoke-virtual {v4, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 223
    .local v2, offset:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 224
    .local v3, p:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v1, name:Ljava/lang/StringBuilder;
    const-string v5, "GMT"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    if-gez v2, :cond_1

    .line 228
    const/16 v5, 0x2d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    :goto_0
    const v5, 0x36ee80

    div-int v5, v3, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    const v5, 0xea60

    div-int v0, v3, v5

    .line 237
    .local v0, min:I
    rem-int/lit8 v0, v0, 0x3c

    .line 239
    const/16 v5, 0xa

    if-ge v0, v5, :cond_0

    .line 240
    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 230
    .end local v0           #min:I
    :cond_1
    const/16 v5, 0x2b

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private updateCheckedUI()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dualclock_menu_settings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 139
    .local v0, saved_value:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/dualclock/DualClockSetting;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/settings_ex/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 141
    return-void
.end method

.method private updatepreference()V
    .locals 7

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "homecity_timezone"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, tzHomeId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "homecity_timezone_city"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, tzHomeCity:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 150
    .local v0, date:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v2, homecity_tz:Ljava/lang/StringBuilder;
    if-eqz v4, :cond_0

    .line 152
    invoke-direct {p0, v4}, Lcom/android/settings_ex/dualclock/DualClockSetting;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {p0, v4}, Lcom/android/settings_ex/dualclock/DualClockSetting;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/android/settings_ex/dualclock/DualClockSetting;->getTimeZoneOffset(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v5, p0, Lcom/android/settings_ex/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/preference/Preference;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "homecity_timezone_city"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/preference/Preference;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 93
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/dualclock/DualClockSetting;->mActionBarSwitch:Landroid/widget/Switch;

    .line 96
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 97
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 98
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 100
    :cond_0
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 103
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings_ex/dualclock/DualClockSetting;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 104
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 107
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/dualclock/DualClockSetting;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 116
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/dualclock/DualClockSetting;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 175
    const-string v0, "DualClockSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckChanged desiredState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dualclock_menu_settings"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 179
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, intent:Landroid/content/Intent;
    iput-boolean v2, p0, Lcom/android/settings_ex/dualclock/DualClockSetting;->isFromUnlock:Z

    .line 76
    const-string v1, "direct_lockscren"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/dualclock/DualClockSetting;->isFromUnlock:Z

    .line 79
    iget-boolean v1, p0, Lcom/android/settings_ex/dualclock/DualClockSetting;->isFromUnlock:Z

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.stop.app-in-app"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    :cond_0
    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 86
    const-string v1, "homecity_timezone"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/preference/Preference;

    .line 87
    const-string v1, "DualClockSetting"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 169
    const-string v0, "DualClockSetting"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x1

    .line 185
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, key:Ljava/lang/String;
    const-string v0, "DualClockSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v0, "homecity_timezone"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v4, bundle:Landroid/os/Bundle;
    const-string v0, "ishomecity"

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    iget-boolean v0, p0, Lcom/android/settings_ex/dualclock/DualClockSetting;->isFromUnlock:Z

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "direct_lockscren"

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    :cond_0
    const-string v2, "com.android.settings_ex.ZonePicker"

    const/4 v3, 0x0

    const v5, 0x7f090c48

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/dualclock/DualClockSetting;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    move v0, v7

    .line 200
    .end local v4           #bundle:Landroid/os/Bundle;
    :goto_0
    return v0

    .line 197
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 128
    const-string v0, "DualClockSetting"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/android/settings_ex/dualclock/DualClockSetting;->updateCheckedUI()V

    .line 130
    invoke-direct {p0}, Lcom/android/settings_ex/dualclock/DualClockSetting;->updatepreference()V

    .line 132
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 123
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .locals 7
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"
    .parameter "title"

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 207
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 209
    const/4 v1, 0x1

    .line 215
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v1

    .line 211
    :cond_0
    const-string v1, "DualClockSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v1, 0x0

    goto :goto_0
.end method
