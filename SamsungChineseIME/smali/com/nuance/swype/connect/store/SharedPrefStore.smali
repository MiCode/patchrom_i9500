.class public Lcom/nuance/swype/connect/store/SharedPrefStore;
.super Ljava/lang/Object;
.source "SharedPrefStore.java"

# interfaces
.implements Lcom/nuance/swype/connect/store/PersistentDataStore;


# instance fields
.field private ctx:Landroid/content/Context;

.field private prefPath:Ljava/lang/String;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "ctx"
    .parameter "prefPath"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/nuance/swype/connect/store/SharedPrefStore;->ctx:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/nuance/swype/connect/store/SharedPrefStore;->prefPath:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/nuance/swype/connect/store/SharedPrefStore;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/swype/connect/store/SharedPrefStore;->prefPath:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/store/SharedPrefStore;->prefs:Landroid/content/SharedPreferences;

    .line 21
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 4

    .prologue
    .line 101
    iget-object v3, p0, Lcom/nuance/swype/connect/store/SharedPrefStore;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 102
    .local v2, preferences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/store/SharedPrefStore;->delete(Ljava/lang/String;)Z

    goto :goto_0

    .line 105
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/nuance/swype/connect/store/SharedPrefStore;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    const/4 v1, 0x0

    return v1
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nuance/swype/connect/store/SharedPrefStore;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 70
    move v0, p2

    .line 71
    .local v0, result:Z
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/swype/connect/store/SharedPrefStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, stringValue:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 73
    return v0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 40
    move v0, p2

    .line 41
    .local v0, result:I
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/swype/connect/store/SharedPrefStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, stringValue:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 47
    :goto_0
    return v0

    .line 44
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 55
    move-wide v0, p2

    .line 56
    .local v0, result:J
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/nuance/swype/connect/store/SharedPrefStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, stringValue:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 62
    :goto_0
    return-wide v0

    .line 59
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public readObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/store/SharedPrefStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Data;->unserializeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 24
    iget-object v1, p0, Lcom/nuance/swype/connect/store/SharedPrefStore;->prefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 26
    move-object v0, p2

    .line 28
    :cond_0
    return-object v0
.end method

.method public saveBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 77
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/store/SharedPrefStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveInt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/store/SharedPrefStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveLong(Ljava/lang/String;J)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 66
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/store/SharedPrefStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 85
    invoke-static {p2}, Lcom/nuance/swype/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/store/SharedPrefStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 32
    iget-object v1, p0, Lcom/nuance/swype/connect/store/SharedPrefStore;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-static {p2}, Lcom/nuance/swype/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    const/4 v1, 0x1

    return v1
.end method
