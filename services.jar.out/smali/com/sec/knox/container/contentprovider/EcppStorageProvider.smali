.class public Lcom/sec/knox/container/contentprovider/EcppStorageProvider;
.super Ljava/lang/Object;
.source "EcppStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "EcppStorageProvider"


# instance fields
.field protected mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v2, Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;

    invoke-direct {v2, p0}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;-><init>(Lcom/sec/knox/container/contentprovider/EcppStorageProvider;)V

    invoke-static {p1, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 73
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 85
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. getWritableDatabase SQLiteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    .line 79
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. enableWriteAheadLogging IllegalStateException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 83
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 4
    .parameter "admin"

    .prologue
    .line 219
    const-string v0, ""

    .line 220
    .local v0, adminName:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkOldPasswordHistory(I[B)Z
    .locals 8
    .parameter "containerId"
    .parameter "newPasswordHash"

    .prologue
    const/4 v7, 0x0

    .line 806
    const/4 v1, 0x0

    .line 807
    .local v1, result:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, whereClause:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v4, "PASSWORD_HISTORY"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "oldPasswordHashValue"

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 811
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 812
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 813
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 814
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 815
    const/4 v1, 0x1

    .line 820
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 822
    :cond_2
    return v1
.end method

.method public getAllowBluetoothMode(ILandroid/content/ComponentName;)I
    .locals 9
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 667
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowBluetoothMode"

    const/4 v5, 0x0

    const-wide/16 v6, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;ZJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 672
    :goto_0
    return v0

    .line 670
    :catch_0
    move-exception v8

    .line 671
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 672
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getAllowBrowser(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 788
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowBrowser"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 792
    :goto_0
    return v0

    .line 790
    :catch_0
    move-exception v6

    .line 791
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 792
    goto :goto_0
.end method

.method public getAllowCamera(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 768
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowCamera"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 772
    :goto_0
    return v0

    .line 770
    :catch_0
    move-exception v6

    .line 771
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 772
    goto :goto_0
.end method

.method public getAllowDesktopSync(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 688
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowDesktopSync"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 692
    :goto_0
    return v0

    .line 690
    :catch_0
    move-exception v6

    .line 691
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 692
    goto :goto_0
.end method

.method public getAllowInternetSharing(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 651
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowInternetSharing"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 656
    :goto_0
    return v0

    .line 654
    :catch_0
    move-exception v6

    .line 655
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 656
    goto :goto_0
.end method

.method public getAllowIrDA(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 708
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowIrDA"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 712
    :goto_0
    return v0

    .line 710
    :catch_0
    move-exception v6

    .line 711
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 712
    goto :goto_0
.end method

.method public getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 748
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowPOPIMAPEmail"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 752
    :goto_0
    return v0

    .line 750
    :catch_0
    move-exception v6

    .line 751
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 752
    goto :goto_0
.end method

.method public getAllowStorageCard(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 728
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowStorageCard"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 732
    :goto_0
    return v0

    .line 730
    :catch_0
    move-exception v6

    .line 731
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 732
    goto :goto_0
.end method

.method public getAllowTextMessaging(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 631
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowTextMessaging"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 635
    :goto_0
    return v0

    .line 633
    :catch_0
    move-exception v6

    .line 634
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 635
    goto :goto_0
.end method

.method public getAllowWifi(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 611
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowWifi"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 615
    :goto_0
    return v0

    .line 613
    :catch_0
    move-exception v6

    .line 614
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 615
    goto :goto_0
.end method

.method protected getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .parameter "tableName"
    .parameter "columnToSelect"
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v6, 0x0

    .line 197
    const-string v1, "0"

    .line 198
    .local v1, result:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passwordContainerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "componentName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, whereClause:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 205
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 215
    :goto_0
    return-object v1

    .line 211
    :cond_1
    const-string v3, "EcppStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not available on this policy set yet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x0

    .line 512
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumFailedPasswordsForWipe"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 517
    :goto_0
    return v0

    .line 515
    :catch_0
    move-exception v6

    .line 516
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 517
    goto :goto_0
.end method

.method public getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    .locals 9
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const-wide/16 v7, 0x0

    .line 556
    if-nez p2, :cond_0

    .line 557
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumTimeToLockPassword"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    .line 570
    :goto_0
    return-wide v0

    .line 561
    :cond_0
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "maximumTimeToLockPassword"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    goto :goto_0

    .line 565
    :catch_0
    move-exception v6

    .line 566
    .local v6, ex:Ljava/lang/NumberFormatException;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getMaximumTimeToLock: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 567
    goto :goto_0

    .line 568
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 569
    .local v6, ex:Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaximumTimeToLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 570
    goto :goto_0
.end method

.method public getPasswordExpirationDate(ILandroid/content/ComponentName;)J
    .locals 9
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 488
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordExpirationDate"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v7

    .line 493
    .local v7, passwordExpirationDate:J
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordExpirationDate: getting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v7           #passwordExpirationDate:J
    :goto_0
    return-wide v7

    .line 495
    :catch_0
    move-exception v6

    .line 496
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordExpirationDate: something went wrong, returning 0"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 498
    const-wide/16 v7, 0x0

    goto :goto_0
.end method

.method public getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J
    .locals 9
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const-wide/16 v7, 0x0

    .line 581
    if-nez p2, :cond_0

    .line 582
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordExpirationTimeout"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    .line 595
    :goto_0
    return-wide v0

    .line 586
    :cond_0
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordExpirationTimeout"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v6

    .line 591
    .local v6, ex:Ljava/lang/NumberFormatException;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordExpirationTimeout: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 592
    goto :goto_0

    .line 593
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 594
    .local v6, ex:Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordExpirationTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 595
    goto :goto_0
.end method

.method public getPasswordHistory(ILandroid/content/ComponentName;)I
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x0

    .line 465
    if-nez p2, :cond_0

    .line 466
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordHistory"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    long-to-int v0, v0

    .line 477
    :goto_0
    return v0

    .line 469
    :cond_0
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordHistory"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 472
    :catch_0
    move-exception v6

    .line 473
    .local v6, ex:Ljava/lang/NumberFormatException;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordHistory: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 474
    goto :goto_0

    .line 475
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 476
    .local v6, ex:Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordHistory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 477
    goto :goto_0
.end method

.method public getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 302
    :try_start_0
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container - getPasswordMinimumLength(): containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumLength"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 309
    :goto_0
    return v0

    .line 307
    :catch_0
    move-exception v6

    .line 308
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 309
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumLetters(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 322
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumLetters"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 327
    :goto_0
    return v0

    .line 325
    :catch_0
    move-exception v6

    .line 326
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 327
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 338
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumLowerCase"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 343
    :goto_0
    return v0

    .line 341
    :catch_0
    move-exception v6

    .line 342
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 343
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 354
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumNonLetter"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 359
    :goto_0
    return v0

    .line 357
    :catch_0
    move-exception v6

    .line 358
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 359
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 370
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumNumeric"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 375
    :goto_0
    return v0

    .line 373
    :catch_0
    move-exception v6

    .line 374
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 375
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 402
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumSymbols"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 407
    :goto_0
    return v0

    .line 405
    :catch_0
    move-exception v6

    .line 406
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 407
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 386
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumUpperCase"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 391
    :goto_0
    return v0

    .line 389
    :catch_0
    move-exception v6

    .line 390
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 391
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordQuality(ILandroid/content/ComponentName;)I
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    .line 428
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordQuality"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v7, v0

    .line 431
    .local v7, quality:I
    if-gez v7, :cond_0

    .line 432
    const/4 v7, 0x0

    .line 438
    .end local v7           #quality:I
    :cond_0
    :goto_0
    return v7

    .line 436
    :catch_0
    move-exception v6

    .line 437
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 438
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getPasswordStateInfoFromDB(I)Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    .locals 8
    .parameter "containerId"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 872
    const/16 v4, 0xd

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "containerid"

    aput-object v4, v2, v5

    const-string v4, "quality"

    aput-object v4, v2, v6

    const/4 v4, 0x2

    const-string v7, "length"

    aput-object v7, v2, v4

    const/4 v4, 0x3

    const-string v7, "uppercase"

    aput-object v7, v2, v4

    const/4 v4, 0x4

    const-string v7, "lowercase"

    aput-object v7, v2, v4

    const/4 v4, 0x5

    const-string v7, "letters"

    aput-object v7, v2, v4

    const/4 v4, 0x6

    const-string v7, "numeric"

    aput-object v7, v2, v4

    const/4 v4, 0x7

    const-string v7, "nonletters"

    aput-object v7, v2, v4

    const/16 v4, 0x8

    const-string v7, "symbols"

    aput-object v7, v2, v4

    const/16 v4, 0x9

    const-string v7, "simplepassword"

    aput-object v7, v2, v4

    const/16 v4, 0xa

    const-string v7, "charactersequencelength"

    aput-object v7, v2, v4

    const/16 v4, 0xb

    const-string v7, "digitsequencelength"

    aput-object v7, v2, v4

    const/16 v4, 0xc

    const-string v7, "MaximumCharacteroccurrences"

    aput-object v7, v2, v4

    .line 887
    .local v2, project:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 888
    .local v3, where:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v7, "ACTIVE_PASSWORD_STATE"

    invoke-virtual {v4, v7, v2, v3, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 891
    .local v0, cur:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 929
    :goto_0
    return-object v1

    .line 894
    :cond_0
    new-instance v1, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    invoke-direct {v1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;-><init>()V

    .line 895
    .local v1, obj:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    if-eqz v1, :cond_2

    .line 896
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 898
    :cond_1
    const-string v4, "containerid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setContainerId(I)V

    .line 900
    const-string v4, "quality"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordQuality(I)V

    .line 902
    const-string v4, "length"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLength(I)V

    .line 904
    const-string v4, "uppercase"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordUppercase(I)V

    .line 906
    const-string v4, "lowercase"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLowercase(I)V

    .line 908
    const-string v4, "letters"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLetters(I)V

    .line 910
    const-string v4, "numeric"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNumeric(I)V

    .line 912
    const-string v4, "nonletters"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNonLetter(I)V

    .line 914
    const-string v4, "symbols"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSymbols(I)V

    .line 916
    const-string v4, "simplepassword"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSimple(Z)V

    .line 919
    const-string v4, "charactersequencelength"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setCharSeqLength(I)V

    .line 921
    const-string v4, "digitsequencelength"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setDigitSeqLength(I)V

    .line 923
    const-string v4, "MaximumCharacteroccurrences"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setCharMaxOccurrencesCount(I)V

    .line 925
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 928
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_3
    move v4, v6

    .line 916
    goto :goto_1
.end method

.method public getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "containerId"
    .parameter "admin"

    .prologue
    const/4 v7, 0x1

    .line 449
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowSimplePassword"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 453
    :goto_0
    return v0

    .line 451
    :catch_0
    move-exception v6

    .line 452
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v7

    .line 453
    goto :goto_0
.end method

.method protected getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    .locals 8
    .parameter "tableName"
    .parameter "columnToSelect"
    .parameter "containerId"
    .parameter "admin"
    .parameter "getHigherValue"

    .prologue
    .line 132
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;ZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;ZJ)J
    .locals 10
    .parameter "tableName"
    .parameter "columnToSelect"
    .parameter "containerId"
    .parameter "admin"
    .parameter "getHigherValue"
    .parameter "defaultValue"

    .prologue
    .line 145
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getStricterColumnValue(): tableName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " columnToSelect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " containerId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " admin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getHigherValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-wide/16 v4, 0x0

    .line 149
    .local v4, last:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "passwordContainerID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, whereClause:Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, adminName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND componentName=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 157
    :cond_0
    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v7, p1, v8, v6, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 160
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_5

    .line 161
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 162
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 165
    :cond_1
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 166
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 168
    .local v1, current:J
    if-eqz p5, :cond_2

    .line 169
    cmp-long v7, v1, v4

    if-lez v7, :cond_1

    .line 170
    move-wide v4, v1

    goto :goto_0

    .line 173
    :cond_2
    const-wide/16 v7, 0x1

    cmp-long v7, v4, v7

    if-ltz v7, :cond_3

    cmp-long v7, v1, v4

    if-gez v7, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    .line 174
    :cond_3
    move-wide v4, v1

    goto :goto_0

    .line 179
    .end local v1           #current:J
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 186
    :goto_1
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getStricterColumnValue(): tableName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " columnToSelect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RETURNING = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-wide v4

    .line 181
    :cond_5
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The setting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not available on this policy set yet"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    move-wide/from16 v4, p6

    goto :goto_1
.end method

.method protected getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    .locals 10
    .parameter "tableName"
    .parameter "columnToSelect"
    .parameter "containerId"
    .parameter "admin"
    .parameter "defaultValue"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    const-string v6, "EcppStorageProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStricterColumnValueForBoolean(): tableName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " columnToSelect = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " containerId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " admin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    move v2, p5

    .line 94
    .local v2, strictValue:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "passwordContainerID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, whereClause:Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, adminName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND componentName=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    :cond_0
    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    new-array v7, v5, [Ljava/lang/String;

    aput-object p2, v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v7, v3, v8}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 105
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_4

    .line 106
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 107
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    move v2, v4

    .line 108
    :goto_0
    if-nez v2, :cond_1

    .line 112
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 118
    :goto_1
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStricterColumnValueForBoolean(): tableName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " columnToSelect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " RETURNING = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return v2

    :cond_3
    move v2, v5

    .line 107
    goto :goto_0

    .line 114
    :cond_4
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not available on this policy set yet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isPasswordVisisbilityEnabled(I)Z
    .locals 9
    .parameter "containerId"

    .prologue
    const/4 v8, 0x0

    .line 539
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordVisible"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v7, v0

    .line 542
    .local v7, ret:I
    if-eqz v7, :cond_0

    const/4 v0, 0x1

    .line 545
    .end local v7           #ret:I
    :goto_0
    return v0

    .restart local v7       #ret:I
    :cond_0
    move v0, v8

    .line 542
    goto :goto_0

    .line 543
    .end local v7           #ret:I
    :catch_0
    move-exception v6

    .line 544
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v8

    .line 545
    goto :goto_0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "admin"

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v2, "PASSWORD_POLICY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "componentName=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 297
    :goto_0
    return v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EcppStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: something failed trying to remove policies  and admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeContainer(I)Z
    .locals 8
    .parameter "containerId"

    .prologue
    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, result1:Z
    const/4 v2, 0x0

    .line 262
    .local v2, result2:Z
    const/4 v3, 0x0

    .line 264
    .local v3, result3:Z
    :try_start_0
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_POLICY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "passwordContainerID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 271
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_HISTORY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 278
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "ACTIVE_PASSWORD_STATE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    .line 284
    :goto_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :goto_3
    return v4

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: something failed trying to remove password policies for the container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 274
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: something failed trying to remove password history for the container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 280
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 281
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: something failed trying to remove active password state table for the container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 284
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public removeOldestPasswordIfRequired(II)V
    .locals 9
    .parameter "containerId"
    .parameter "passwordPolicyHistoryLength"

    .prologue
    const/4 v8, 0x0

    .line 826
    const/4 v0, 0x0

    .line 827
    .local v0, currPaswordHistoryLength:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containerID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, whereClause:Ljava/lang/String;
    const-string v2, "_index ASC"

    .line 829
    .local v2, orderBy:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_HISTORY"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "_index"

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6, v3, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 832
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 833
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 834
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 835
    :cond_0
    if-lt v0, p2, :cond_1

    .line 836
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 838
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_HISTORY"

    invoke-virtual {v4, v5, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z

    .line 839
    add-int/lit8 v0, v0, -0x1

    .line 840
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 843
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 845
    :cond_2
    return-void
.end method

.method public setActivePasswordState(IIIIIIIIIZIII)V
    .locals 4
    .parameter "containerId"
    .parameter "quality"
    .parameter "length"
    .parameter "uppercase"
    .parameter "lowercase"
    .parameter "letters"
    .parameter "numbers"
    .parameter "nonletter"
    .parameter "symbols"
    .parameter "passwordSimple"
    .parameter "charSeqLength"
    .parameter "digitSeqLength"
    .parameter "charMaxOccurrencesCount"

    .prologue
    .line 850
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 851
    .local v0, sContentValues:Landroid/content/ContentValues;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "containerid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 852
    .local v1, where:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 853
    const-string v2, "containerid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    const-string v2, "quality"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 855
    const-string v2, "length"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    const-string v2, "uppercase"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    const-string v2, "lowercase"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 858
    const-string v2, "letters"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 859
    const-string v2, "numeric"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 860
    const-string v2, "nonletters"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 861
    const-string v2, "symbols"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    const-string v3, "simplepassword"

    if-eqz p10, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 863
    const-string v2, "charactersequencelength"

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    const-string v2, "digitsequencelength"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 865
    const-string v2, "MaximumCharacteroccurrences"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 866
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v3, "ACTIVE_PASSWORD_STATE"

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 869
    :cond_0
    return-void

    .line 862
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAllowBluetoothMode(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 661
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowBluetoothMode"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 663
    return-void
.end method

.method public setAllowBrowser(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 777
    const/4 v4, 0x0

    .line 778
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 779
    const/4 v4, 0x1

    .line 782
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowBrowser"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 784
    return-void
.end method

.method public setAllowCamera(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 757
    const/4 v4, 0x0

    .line 758
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 759
    const/4 v4, 0x1

    .line 762
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowCamera"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 764
    return-void
.end method

.method public setAllowDesktopSync(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 677
    const/4 v4, 0x0

    .line 678
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 679
    const/4 v4, 0x1

    .line 682
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowDesktopSync"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 684
    return-void
.end method

.method public setAllowInternetSharing(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 640
    const/4 v4, 0x0

    .line 641
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 642
    const/4 v4, 0x1

    .line 645
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowInternetSharing"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 647
    return-void
.end method

.method public setAllowIrDA(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 697
    const/4 v4, 0x0

    .line 698
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 699
    const/4 v4, 0x1

    .line 702
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowIrDA"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 704
    return-void
.end method

.method public setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 737
    const/4 v4, 0x0

    .line 738
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 739
    const/4 v4, 0x1

    .line 742
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowPOPIMAPEmail"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 744
    return-void
.end method

.method public setAllowStorageCard(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 717
    const/4 v4, 0x0

    .line 718
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 719
    const/4 v4, 0x1

    .line 722
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowStorageCard"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 724
    return-void
.end method

.method public setAllowTextMessaging(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 620
    const/4 v4, 0x0

    .line 621
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 622
    const/4 v4, 0x1

    .line 625
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowTextMessaging"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 627
    return-void
.end method

.method public setAllowWifi(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 600
    const/4 v4, 0x0

    .line 601
    .local v4, val:I
    if-eqz p3, :cond_0

    .line 602
    const/4 v4, 0x1

    .line 605
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowWifi"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 607
    return-void
.end method

.method protected setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V
    .locals 7
    .parameter "table"
    .parameter "admin"
    .parameter "columnName"
    .parameter "columnValue"
    .parameter "containerId"

    .prologue
    .line 228
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColumnValues(): table = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " columnName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " columnValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    int-to-long v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 232
    return-void
.end method

.method protected setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V
    .locals 6
    .parameter "table"
    .parameter "admin"
    .parameter "columnName"
    .parameter "columnValue"
    .parameter "containerId"

    .prologue
    .line 236
    const-string v3, "EcppStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setColumnValuesAsLong(): table = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " admin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " columnName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " columnValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v1, sContentValues:Landroid/content/ContentValues;
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 242
    if-lez p6, :cond_1

    .line 243
    invoke-direct {p0, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, adminName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passwordContainerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, where:Ljava/lang/String;
    const-string v3, "passwordContainerID"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "componentName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    const-string v3, "componentName"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    invoke-virtual {v3, p1, v1, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 257
    .end local v0           #adminName:Ljava/lang/String;
    .end local v2           #where:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 522
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumFailedPasswordsForWipe"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 525
    return-void
.end method

.method public setMaximumTimeToLock(ILandroid/content/ComponentName;J)V
    .locals 7
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 550
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumTimeToLockPassword"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 552
    return-void
.end method

.method public setOldPasswordToHistory(I[B)V
    .locals 4
    .parameter "containerId"
    .parameter "newPasswordHash"

    .prologue
    const/4 v3, 0x0

    .line 797
    invoke-virtual {p0, p1, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->removeOldestPasswordIfRequired(II)V

    .line 798
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 799
    .local v0, sContentValues:Landroid/content/ContentValues;
    const-string v1, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 800
    const-string v1, "oldPasswordHashValue"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 802
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v2, "PASSWORD_HISTORY"

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 803
    return-void
.end method

.method public setPasswordExpirationDate(ILandroid/content/ComponentName;J)V
    .locals 7
    .parameter "containerId"
    .parameter "admin"
    .parameter "passwordExpirationDate"

    .prologue
    .line 504
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordExpirationDate: setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordExpirationDate"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 508
    return-void
.end method

.method public setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V
    .locals 7
    .parameter "containerId"
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 575
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordExpirationTimeout"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 577
    return-void
.end method

.method public setPasswordHistory(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "history"

    .prologue
    .line 482
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordHistory"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 484
    return-void
.end method

.method public setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 314
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container - setPasswordMinimumLength(): containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumLength"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 318
    return-void
.end method

.method public setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 332
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumLetters"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 334
    return-void
.end method

.method public setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 348
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumLowerCase"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 350
    return-void
.end method

.method public setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 364
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumNonLetter"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 366
    return-void
.end method

.method public setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 380
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumNumeric"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 382
    return-void
.end method

.method public setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 412
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumSymbols"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 414
    return-void
.end method

.method public setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "length"

    .prologue
    .line 396
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumUpperCase"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 398
    return-void
.end method

.method public setPasswordQuality(ILandroid/content/ComponentName;I)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "quality"

    .prologue
    .line 443
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordQuality"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 445
    return-void
.end method

.method public setPasswordVisibilityEnabled(IZ)V
    .locals 6
    .parameter "containerId"
    .parameter "val"

    .prologue
    .line 528
    const/4 v4, 0x0

    .line 529
    .local v4, value:I
    if-eqz p2, :cond_0

    .line 530
    const/4 v4, 0x1

    .line 533
    :cond_0
    const-string v1, "PASSWORD_POLICY"

    const/4 v2, 0x0

    const-string v3, "passwordVisible"

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 535
    return-void
.end method

.method public setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V
    .locals 6
    .parameter "containerId"
    .parameter "admin"
    .parameter "enabled"

    .prologue
    .line 458
    if-eqz p3, :cond_0

    const/4 v4, 0x1

    .line 459
    .local v4, value:I
    :goto_0
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowSimplePassword"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 461
    return-void

    .line 458
    .end local v4           #value:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
