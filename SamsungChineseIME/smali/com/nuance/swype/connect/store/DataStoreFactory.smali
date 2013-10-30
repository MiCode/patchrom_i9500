.class public Lcom/nuance/swype/connect/store/DataStoreFactory;
.super Ljava/lang/Object;
.source "DataStoreFactory.java"


# static fields
.field public static final DATA_STORE_TYPE_DEFAULT:Ljava/lang/String; = "com.nuance.swype.connect.store.FilePreference"

.field public static final DATA_STORE_TYPE_FILE:Ljava/lang/String; = "com.nuance.swype.connect.store.FilePreference"

.field public static final DATA_STORE_TYPE_SHARED_PREFS:Ljava/lang/String; = "com.nuance.swype.connect.store.SharedPrefStore"

.field public static final DATA_STORE_TYPE_TEMP:Ljava/lang/String; = "com.nuance.swype.connect.store.TemporaryMemoryStore"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataStore(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/swype/connect/store/PersistentDataStore;
    .locals 2
    .parameter "ctx"
    .parameter "type"

    .prologue
    .line 15
    const-string v0, "com.nuance.swype.connect.store.FilePreference"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lcom/nuance/swype/connect/store/FileStore;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/store/FileStore;-><init>(Landroid/content/Context;)V

    .line 20
    :goto_0
    return-object v0

    .line 17
    :cond_0
    const-string v0, "com.nuance.swype.connect.store.TemporaryMemoryStore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    new-instance v0, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;

    invoke-direct {v0}, Lcom/nuance/swype/connect/store/TemporaryMemoryStore;-><init>()V

    goto :goto_0

    .line 20
    :cond_1
    new-instance v0, Lcom/nuance/swype/connect/store/SharedPrefStore;

    const-string v1, "ConnectPrefs"

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/connect/store/SharedPrefStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
