.class public Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
.super Ljava/lang/Object;
.source "EdmIntegrityStorageProvider.java"


# static fields
.field private static final mTAG:Ljava/lang/String; = "EdmIntegrityStorageProvider"


# instance fields
.field private mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    .line 58
    return-void
.end method


# virtual methods
.method public clearFingerPrint()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->clearFingerPrint()Z

    move-result v0

    return v0
.end method

.method public commitFingerPrint()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->commitFingerPrint()Z

    move-result v0

    return v0
.end method

.method public readFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[B
    .locals 1
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"
    .parameter "ReturnColumn"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->readFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public rollbackFingerPrint()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->rollbackFingerPrint()Z

    move-result v0

    return v0
.end method

.method public updateFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"
    .parameter "cv"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->updateFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public writeFingerPrint(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "sTableName"
    .parameter "cv"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->writeFingerPrint(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method
