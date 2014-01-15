.class public Lcom/android/settings_ex/BackupAssistantPlusSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "BackupAssistantPlusSettings.java"


# static fields
.field private static final KEY_BUA_PLUS_CONTACTS:Ljava/lang/String; = "bua_plus_contacts"

.field private static final KEY_BUA_PLUS_MEDIA:Ljava/lang/String; = "bua_plus_media"

.field private static final TAG:Ljava/lang/String; = "BackupAssistantPlusSettings"


# instance fields
.field private mBuaPlusContacts:Landroid/preference/PreferenceScreen;

.field private mBuaPlusMedia:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private isContactsVUX()Z
    .locals 2

    .prologue
    .line 103
    const-string v0, "SCH-I705"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 47
    const-string v0, "bua_plus_contacts"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ex/BackupAssistantPlusSettings;->mBuaPlusContacts:Landroid/preference/PreferenceScreen;

    .line 48
    const-string v0, "bua_plus_media"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ex/BackupAssistantPlusSettings;->mBuaPlusMedia:Landroid/preference/PreferenceScreen;

    .line 49
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v8, 0x0

    .line 53
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0085

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, actions:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 56
    .local v0, action:Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v9, v1

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 57
    iget-object v9, p0, Lcom/android/settings_ex/BackupAssistantPlusSettings;->mBuaPlusContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/BackupAssistantPlusSettings;->isContactsVUX()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 59
    const/4 v9, 0x2

    aget-object v0, v1, v9

    .line 64
    :goto_0
    if-eqz v0, :cond_2

    .line 66
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v5, intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v5           #intent:Landroid/content/Intent;
    :goto_1
    return v8

    .line 61
    :cond_0
    aget-object v0, v1, v8

    goto :goto_0

    .line 69
    :catch_0
    move-exception v4

    .line 70
    .local v4, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 76
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/BackupAssistantPlusSettings;->mBuaPlusMedia:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 80
    :try_start_1
    const-string v8, "com.samsung.vuxbuamedia.BackupAssistantUtils"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 82
    .local v3, buaMediaVux:Ljava/lang/Class;
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/Class;

    .line 83
    .local v7, paramTypes:[Ljava/lang/Class;
    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    .line 84
    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/Object;

    .line 85
    .local v2, arglist:[Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    aput-object v9, v2, v8

    .line 87
    const-string v8, "launchBuaMediaVUXApp"

    invoke-virtual {v3, v8, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 89
    .local v6, launchApp:Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    .end local v2           #arglist:[Ljava/lang/Object;
    .end local v3           #buaMediaVux:Ljava/lang/Class;
    .end local v6           #launchApp:Ljava/lang/reflect/Method;
    .end local v7           #paramTypes:[Ljava/lang/Class;
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v8

    goto :goto_1

    .line 91
    :catch_1
    move-exception v4

    .line 92
    .local v4, e:Ljava/lang/Exception;
    const-string v8, "BackupAssistantPlusSettings"

    const-string v9, "cant find com.samsung.vuxbuamedia.BackupAssistantUtils"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
