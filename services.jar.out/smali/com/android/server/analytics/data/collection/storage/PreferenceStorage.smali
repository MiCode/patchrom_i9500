.class public Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;
.super Ljava/lang/Object;
.source "PreferenceStorage.java"


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mMode:I

.field private mXMLfile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "c"
    .parameter "XMLfile"
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    .line 44
    iput-object v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    .line 49
    iput-object p1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    .line 51
    iput p3, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 4

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 55
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPrefs(Ljava/lang/String;F)F
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrefs(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrefs(Ljava/lang/String;J)J
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrefs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrefs(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPrefs(Ljava/lang/String;F)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 87
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPrefs(Ljava/lang/String;I)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 93
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPrefs(Ljava/lang/String;J)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 99
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPrefs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 105
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPrefs(Ljava/lang/String;Z)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mXMLfile:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/analytics/data/collection/storage/PreferenceStorage;->mMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 81
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
