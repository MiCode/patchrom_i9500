.class public Lcom/nuance/swype/connect/manager/PreferencesManager;
.super Ljava/lang/Object;
.source "PreferencesManager.java"

# interfaces
.implements Lcom/nuance/swype/connect/store/PersistentDataStore;


# static fields
.field public static final MANAGER_NAME:Ljava/lang/String; = "preferences"


# instance fields
.field private defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "com.nuance.swype.connect.store.FilePreference"

    invoke-static {p1, v0}, Lcom/nuance/swype/connect/store/DataStoreFactory;->getDataStore(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/PreferencesManager;->defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;)V
    .locals 1
    .parameter "ctx"
    .parameter "dataStoreType"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1, p2}, Lcom/nuance/swype/connect/store/DataStoreFactory;->getDataStore(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/PreferencesManager;->defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;

    .line 19
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/PreferencesManager;->defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;

    invoke-interface {v0}, Lcom/nuance/swype/connect/store/PersistentDataStore;->clear()Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/PreferencesManager;->defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/swype/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/PreferencesManager;->defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/swype/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/PreferencesManager;->defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/PreferencesManager;->defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/PreferencesManager;->defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/PreferencesManager;->defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;

    invoke-interface {v0, p1}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/PreferencesManager;->defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/PreferencesManager;->defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveInt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/PreferencesManager;->defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public saveLong(Ljava/lang/String;J)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/PreferencesManager;->defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public saveObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/PreferencesManager;->defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/PreferencesManager;->defaultStore:Lcom/nuance/swype/connect/store/PersistentDataStore;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
