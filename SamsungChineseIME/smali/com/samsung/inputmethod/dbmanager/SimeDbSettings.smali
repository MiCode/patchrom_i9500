.class public Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;
.super Ljava/lang/Object;
.source "SimeDbSettings.java"


# static fields
.field private static final ANDPY_CONFS_UPDATE_WLAN_ONLY_KEY:Ljava/lang/String; = "samsungupdate_wlanonly"

.field public static final DB_UPDATE_SETTING:Ljava/lang/String; = "SimeDbSettings"

.field private static final PREFER_CONFS_HOTWORD_CN_UPDATE_DATE:Ljava/lang/String; = "hotword_xt9_cn_updatedate"

.field private static final PREFER_CONFS_HOTWORD_CN_VERSION:Ljava/lang/String; = "hotword_xt9_cn_version"

.field private static final PREFER_CONFS_HOTWORD_HK_UPDATE_DATE:Ljava/lang/String; = "hotword_xt9_hk_updatedate"

.field private static final PREFER_CONFS_HOTWORD_HK_VERSION:Ljava/lang/String; = "hotword_xt9_hk_version"

.field private static final PREFER_CONFS_HOTWORD_SOGOU_UPDATE_DATE:Ljava/lang/String; = "hotword_sogou_updatedate"

.field private static final PREFER_CONFS_HOTWORD_SOGOU_VERSION:Ljava/lang/String; = "hotword_sogou_version"

.field private static final PREFER_CONFS_HOTWORD_TW_UPDATE_DATE:Ljava/lang/String; = "hotword_xt9_tw_updatedate"

.field private static final PREFER_CONFS_HOTWORD_TW_VERSION:Ljava/lang/String; = "hotword_xt9_tw_version"

.field private static final PREFER_CONFS_UPDATEFREQUENCY_KEY:Ljava/lang/String; = "samsungupdate_frequency_info"

.field public static final SIME_DB_AUTO_UPDATE_COUNT:I = 0x4

.field public static final SIME_DB_AUTO_UPDATE_INIT_VALUE:I = 0x0

.field public static final SIME_DB_AUTO_UPDATE_MAX_INDEX:I = 0x4

.field public static final SIME_DB_AUTO_UPDATE_OFF:I = 0x0

.field public static final SIME_DB_AUTO_UPDATE_ONE_MONTH:I = 0x3

.field public static final SIME_DB_AUTO_UPDATE_ONE_WEEK:I = 0x1

.field public static final SIME_DB_AUTO_UPDATE_TWO_WEEK:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 34
    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->mContext:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->mContext:Landroid/content/Context;

    const-string v1, "SimeDbSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 41
    return-void
.end method

.method private getUpdateDateKey(I)Ljava/lang/String;
    .locals 1
    .parameter "dbId"

    .prologue
    .line 45
    const-string v0, ""

    .line 47
    .local v0, prefrenceKey:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 65
    :goto_0
    :pswitch_0
    return-object v0

    .line 50
    :pswitch_1
    const-string v0, "hotword_xt9_cn_updatedate"

    .line 51
    goto :goto_0

    .line 53
    :pswitch_2
    const-string v0, "hotword_xt9_hk_updatedate"

    .line 54
    goto :goto_0

    .line 56
    :pswitch_3
    const-string v0, "hotword_xt9_tw_updatedate"

    .line 57
    goto :goto_0

    .line 59
    :pswitch_4
    const-string v0, "hotword_sogou_updatedate"

    .line 60
    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getVersionKey(I)Ljava/lang/String;
    .locals 1
    .parameter "dbId"

    .prologue
    .line 82
    const-string v0, ""

    .line 84
    .local v0, prefrenceKey:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    return-object v0

    .line 87
    :pswitch_1
    const-string v0, "hotword_xt9_cn_version"

    .line 88
    goto :goto_0

    .line 90
    :pswitch_2
    const-string v0, "hotword_xt9_hk_version"

    .line 91
    goto :goto_0

    .line 93
    :pswitch_3
    const-string v0, "hotword_xt9_tw_version"

    .line 94
    goto :goto_0

    .line 96
    :pswitch_4
    const-string v0, "hotword_sogou_version"

    .line 97
    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 150
    const/4 v0, 0x1

    .line 152
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 153
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 154
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 163
    :goto_0
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 166
    :cond_0
    return v0

    .line 155
    .restart local p2
    :cond_1
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 156
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 157
    .restart local p2
    :cond_2
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 158
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 161
    .restart local p2
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAutoUpdateFrequencyMode()I
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungupdate_frequency_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAutoUpdateWlanOnly()Z
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "samsungupdate_wlanonly"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDbUpdateDate(I)Ljava/lang/String;
    .locals 3
    .parameter "dbId"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->getUpdateDateKey(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, prefrenceKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDbVersion(I)Ljava/lang/String;
    .locals 3
    .parameter "dbId"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->getVersionKey(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, prefrenceKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public resetSetting()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "samsungupdate_frequency_info"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 146
    const-string v0, "samsungupdate_wlanonly"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public setAutoUpdateFrequencyMode(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 126
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 128
    const-string v0, "samsungupdate_frequency_info"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 130
    :cond_0
    return-void
.end method

.method public setAutoUpdateWlanOnly(Z)V
    .locals 2
    .parameter "bWlanOnly"

    .prologue
    .line 134
    const-string v0, "samsungupdate_wlanonly"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public setDbUpdateDate(ILjava/lang/String;)V
    .locals 1
    .parameter "dbId"
    .parameter "date"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->getUpdateDateKey(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, prefrenceKey:Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public setDbVersion(ILjava/lang/String;)V
    .locals 1
    .parameter "dbId"
    .parameter "version"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->getVersionKey(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, prefrenceKey:Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->savePrefrence(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 116
    return-void
.end method
