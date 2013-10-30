.class public Lcom/nuance/swype/connect/store/TemporaryMemoryStore;
.super Ljava/lang/Object;
.source "TemporaryMemoryStore.java"

# interfaces
.implements Lcom/nuance/swype/connect/store/PersistentDataStore;


# instance fields
.field private final store:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;->store:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;->store:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;->store:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;->store:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 63
    move v0, p2

    .line 64
    .local v0, result:Z
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, stringValue:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 66
    return v0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 33
    move v0, p2

    .line 34
    .local v0, result:I
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, stringValue:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 40
    :goto_0
    return v0

    .line 37
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 48
    move-wide v0, p2

    .line 49
    .local v0, result:J
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, stringValue:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 55
    :goto_0
    return-wide v0

    .line 52
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public readObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Data;->unserializeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 20
    iget-object v1, p0, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;->store:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 22
    move-object v0, p2

    .line 24
    :cond_0
    return-object v0
.end method

.method public saveBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 70
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveInt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveLong(Ljava/lang/String;J)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 59
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 78
    invoke-static {p2}, Lcom/nuance/swype/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;->store:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const/4 v0, 0x1

    return v0
.end method
