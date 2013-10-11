.class public Lcom/android/server/enterprise/license/LicenseLogService;
.super Landroid/os/Binder;
.source "LicenseLogService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
    }
.end annotation


# static fields
.field private static final ACTION_LICENSE_LOG_DELETE_OLD_RECORDS:Ljava/lang/String; = "edm.intent.action.elm.cleanrecords"

.field private static final MSG_CLEAN_OLD_RECORDS:I = 0x1

.field private static final MSG_LOG_API:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LicenseLogService"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 234
    new-instance v1, Lcom/android/server/enterprise/license/LicenseLogService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/license/LicenseLogService$1;-><init>(Lcom/android/server/enterprise/license/LicenseLogService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    iput-object p1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 79
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "edm.intent.action.elm.cleanrecords"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LicenseLogService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 87
    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 88
    new-instance v1, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    iget-object v2, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;-><init>(Lcom/android/server/enterprise/license/LicenseLogService;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    .line 89
    return-void
.end method

.method private _log(Ljava/lang/String;I)V
    .locals 11
    .parameter "apiName"
    .parameter "uid"

    .prologue
    .line 110
    :try_start_0
    invoke-static {p2}, Lcom/android/server/enterprise/license/LicenseLogService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, pkgName:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 113
    const-string v9, "LicenseLogService"

    const-string v10, "log() is called by non admin"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v5           #pkgName:Ljava/lang/String;
    :goto_0
    return-void

    .line 117
    .restart local v5       #pkgName:Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 118
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 119
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 120
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 121
    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 122
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 124
    .local v7, time:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 125
    .local v3, cvWhere:Landroid/content/ContentValues;
    const-string v9, "pkgName"

    invoke-virtual {v3, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v9, "id"

    invoke-virtual {v3, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v9, "date"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "value"

    .line 130
    .local v1, column:Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE_LOG"

    invoke-virtual {v9, v10, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v6

    .line 133
    .local v6, result:Landroid/content/ContentValues;
    if-eqz v6, :cond_1

    .line 136
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v2, cv:Landroid/content/ContentValues;
    const-string v9, "value"

    const-string v10, "value"

    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    sget-object v9, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE_LOG"

    invoke-virtual {v9, v10, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #column:Ljava/lang/String;
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v3           #cvWhere:Landroid/content/ContentValues;
    .end local v5           #pkgName:Ljava/lang/String;
    .end local v6           #result:Landroid/content/ContentValues;
    .end local v7           #time:J
    :catch_0
    move-exception v4

    .line 146
    .local v4, e:Ljava/lang/Exception;
    const-string v9, "LicenseLogService"

    const-string v10, "_log() failed"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v1       #column:Ljava/lang/String;
    .restart local v3       #cvWhere:Landroid/content/ContentValues;
    .restart local v5       #pkgName:Ljava/lang/String;
    .restart local v6       #result:Landroid/content/ContentValues;
    .restart local v7       #time:J
    :cond_1
    :try_start_1
    sget-object v9, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE_LOG"

    invoke-virtual {v9, v10, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/license/LicenseLogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->handleLicenseLogCleanNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/license/LicenseLogService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/license/LicenseLogService;->_log(Ljava/lang/String;I)V

    return-void
.end method

.method public static deleteLog(Ljava/lang/String;)Z
    .locals 6
    .parameter "pkgName"

    .prologue
    .line 199
    const/4 v3, 0x0

    .line 201
    .local v3, ret:Z
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v1, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "pkgName"

    invoke-virtual {v1, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v4, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE_LOG"

    invoke-virtual {v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 205
    .local v2, result:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 206
    const/4 v3, 0x1

    .line 211
    .end local v1           #fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #result:I
    :cond_0
    :goto_0
    return v3

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "LicenseLogService"

    const-string v5, "deleteLog() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLog(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .parameter "pkgName"

    .prologue
    .line 152
    :try_start_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v9, ret:Landroid/os/Bundle;
    const/4 v11, 0x3

    new-array v0, v11, [Ljava/lang/String;

    .line 154
    .local v0, columns:[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "date"

    aput-object v12, v0, v11

    .line 155
    const/4 v11, 0x1

    const-string v12, "id"

    aput-object v12, v0, v11

    .line 156
    const/4 v11, 0x2

    const-string v12, "value"

    aput-object v12, v0, v11

    .line 158
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v2, cvWhere:Landroid/content/ContentValues;
    const-string v11, "pkgName"

    invoke-virtual {v2, v11, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v11, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE_LOG"

    invoke-virtual {v11, v12, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 164
    .local v8, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 165
    const/4 v7, 0x0

    .line 166
    .local v7, keyVal:Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 167
    .local v5, id:Ljava/lang/String;
    const/4 v10, 0x0

    .line 168
    .local v10, val:I
    const/4 v3, 0x0

    .line 169
    .local v3, date:Ljava/lang/String;
    const/4 v1, 0x0

    .line 170
    .local v1, cv:Landroid/content/ContentValues;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 172
    .local v6, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 173
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cv:Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 174
    .restart local v1       #cv:Landroid/content/ContentValues;
    const-string v11, "date"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    const-string v11, "id"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    const-string v11, "value"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 178
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    if-nez v11, :cond_2

    .line 180
    new-instance v7, Landroid/os/Bundle;

    .end local v7           #keyVal:Landroid/os/Bundle;
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 181
    .restart local v7       #keyVal:Landroid/os/Bundle;
    invoke-virtual {v7, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    invoke-virtual {v9, v3, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v0           #columns:[Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #cvWhere:Landroid/content/ContentValues;
    .end local v3           #date:Ljava/lang/String;
    .end local v5           #id:Ljava/lang/String;
    .end local v6           #it:Ljava/util/Iterator;
    .end local v7           #keyVal:Landroid/os/Bundle;
    .end local v8           #results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v9           #ret:Landroid/os/Bundle;
    .end local v10           #val:I
    :catch_0
    move-exception v4

    .line 192
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "LicenseLogService"

    const-string v12, "getLog() failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v9, 0x0

    :cond_1
    return-object v9

    .line 185
    .restart local v0       #columns:[Ljava/lang/String;
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v2       #cvWhere:Landroid/content/ContentValues;
    .restart local v3       #date:Ljava/lang/String;
    .restart local v5       #id:Ljava/lang/String;
    .restart local v6       #it:Ljava/util/Iterator;
    .restart local v7       #keyVal:Landroid/os/Bundle;
    .restart local v8       #results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v9       #ret:Landroid/os/Bundle;
    .restart local v10       #val:I
    :cond_2
    :try_start_1
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static getPackageNameForUid(I)Ljava/lang/String;
    .locals 1
    .parameter "uid"

    .prologue
    .line 231
    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleLicenseLogCleanNotification()V
    .locals 22

    .prologue
    .line 274
    const-string v17, "LicenseLogService"

    const-string v18, "handleLicenseLogCleanNotification()"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v6, 0x0

    .line 277
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 278
    .local v5, calendar:Ljava/util/Calendar;
    const/16 v17, 0xb

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 279
    const/16 v17, 0xc

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 280
    const/16 v17, 0xd

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 281
    const/16 v17, 0xe

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 282
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 285
    .local v10, now:J
    const-wide v8, 0x9a7ec800L

    .line 286
    .local v8, howOld:J
    sub-long v13, v10, v8

    .line 289
    .local v13, temp:J
    :try_start_0
    sget-object v17, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "DELETE FROM LICENSE_LOG WHERE date <= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->executeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 294
    if-eqz v6, :cond_0

    .line 295
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 300
    .local v15, token:J
    const-wide/32 v17, 0x5265c00

    add-long v2, v10, v17

    .line 301
    .local v2, alarmTime:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "alarm"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 302
    .local v4, am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "edm.intent.action.elm.cleanrecords"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x4800

    invoke-static/range {v17 .. v20}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 305
    .local v12, pi:Landroid/app/PendingIntent;
    invoke-virtual {v4, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 306
    const-wide/16 v17, 0x0

    cmp-long v17, v2, v17

    if-eqz v17, :cond_1

    .line 307
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0, v2, v3, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 313
    .end local v4           #am:Landroid/app/AlarmManager;
    .end local v12           #pi:Landroid/app/PendingIntent;
    :cond_1
    :goto_0
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 315
    return-void

    .line 291
    .end local v2           #alarmTime:J
    .end local v15           #token:J
    :catch_0
    move-exception v7

    .line 292
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v17, "LicenseLogService"

    const-string v18, "handleLicenseLogCleanNotification() failed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    if-eqz v6, :cond_2

    .line 295
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 300
    .restart local v15       #token:J
    const-wide/32 v17, 0x5265c00

    add-long v2, v10, v17

    .line 301
    .restart local v2       #alarmTime:J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "alarm"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 302
    .restart local v4       #am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "edm.intent.action.elm.cleanrecords"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x4800

    invoke-static/range {v17 .. v20}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 305
    .restart local v12       #pi:Landroid/app/PendingIntent;
    invoke-virtual {v4, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 306
    const-wide/16 v17, 0x0

    cmp-long v17, v2, v17

    if-eqz v17, :cond_1

    .line 307
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0, v2, v3, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 310
    .end local v4           #am:Landroid/app/AlarmManager;
    .end local v12           #pi:Landroid/app/PendingIntent;
    :catch_1
    move-exception v7

    .line 311
    const-string v17, "LicenseLogService"

    const-string v18, "handleLicenseLogCleanNotification() failed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    .end local v2           #alarmTime:J
    .end local v7           #e:Ljava/lang/Exception;
    .end local v15           #token:J
    :catchall_0
    move-exception v17

    if-eqz v6, :cond_3

    .line 295
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 300
    .restart local v15       #token:J
    const-wide/32 v18, 0x5265c00

    add-long v2, v10, v18

    .line 301
    .restart local v2       #alarmTime:J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "alarm"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 302
    .restart local v4       #am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "edm.intent.action.elm.cleanrecords"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v21, 0x4800

    invoke-static/range {v18 .. v21}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 305
    .restart local v12       #pi:Landroid/app/PendingIntent;
    invoke-virtual {v4, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 306
    const-wide/16 v18, 0x0

    cmp-long v18, v2, v18

    if-eqz v18, :cond_4

    .line 307
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0, v2, v3, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 313
    .end local v4           #am:Landroid/app/AlarmManager;
    .end local v12           #pi:Landroid/app/PendingIntent;
    :cond_4
    :goto_1
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    throw v17

    .line 310
    :catch_2
    move-exception v7

    .line 311
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v18, "LicenseLogService"

    const-string v19, "handleLicenseLogCleanNotification() failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 310
    .end local v7           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 311
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v17, "LicenseLogService"

    const-string v18, "handleLicenseLogCleanNotification() failed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 5
    .parameter "apiName"

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 97
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "apiName"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v3, "adminUid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 101
    sget-object v3, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 103
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LicenseLogService"

    const-string v4, "log() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 220
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 224
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 228
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method
