.class public abstract Lcom/android/server/ssrm/FgAppListener;
.super Ljava/lang/Object;
.source "FgAppListener.java"


# static fields
.field private static final ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String; = "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

#the value of this static final field might be set in the static constructor
.field protected static final DEBUG:Z = false

.field private static final EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String; = "com.sec.android.extra.MULTIWINDOW_RUNNING"

.field private static final PROCESS_STATE_FOREGROUND:Ljava/lang/String; = "FOREGROUND"

.field private static final SSRM_STATUS_NAME:Ljava/lang/String; = "SSRM_STATUS_NAME"

.field private static final SSRM_STATUS_NOTIFY:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_REQUEST"

.field private static final SSRM_STATUS_VALUE:Ljava/lang/String; = "SSRM_STATUS_VALUE"

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/FgAppListener;",
            ">;",
            "Lcom/android/server/ssrm/FgAppListener;",
            ">;"
        }
    .end annotation
.end field

.field public static mContext:Landroid/content/Context;


# instance fields
.field private mBootComplete:Z

.field private mForegroundPackageName:Ljava/lang/String;

.field private mIsFgAppInPackageList:Z

.field private mMultiWindowOn:Z

.field private mPackagesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/FgAppListener;->instances:Ljava/util/Map;

    .line 32
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/FgAppListener;->DEBUG:Z

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/FgAppListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/android/server/ssrm/FgAppListener;->mIsFgAppInPackageList:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    .line 99
    iput-boolean v1, p0, Lcom/android/server/ssrm/FgAppListener;->mMultiWindowOn:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/server/ssrm/FgAppListener;->mBootComplete:Z

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/FgAppListener;->mPackagesMap:Ljava/util/HashMap;

    return-void
.end method

.method protected static fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "tag"
    .parameter "filePath"
    .parameter "value"

    .prologue
    .line 162
    const/4 v3, 0x0

    .line 164
    .local v3, out:Ljava/io/FileOutputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt:: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/server/ssrm/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-nez v5, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    .end local v3           #out:Ljava/io/FileOutputStream;
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 179
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 187
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/server/ssrm/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 181
    .local v0, e:Ljava/io/IOException;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/server/ssrm/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 184
    :catch_2
    move-exception v1

    .line 185
    .local v1, err:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/server/ssrm/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/FgAppListener;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/FgAppListener;",
            ">;)",
            "Lcom/android/server/ssrm/FgAppListener;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 22
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/server/ssrm/FgAppListener;>;"
    sget-object v0, Lcom/android/server/ssrm/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 23
    sget-object v1, Lcom/android/server/ssrm/FgAppListener;->instances:Ljava/util/Map;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25
    sget-object v0, Lcom/android/server/ssrm/FgAppListener;->instances:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/FgAppListener;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 156
    sget-boolean v0, Lcom/android/server/ssrm/FgAppListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    return-void
.end method

.method protected static writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .parameter "value"

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 137
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 139
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 144
    if-eqz v1, :cond_0

    .line 146
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v0, v1

    .line 153
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 144
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v0, :cond_2

    .line 146
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 144
    :cond_2
    :goto_3
    throw v2

    .line 140
    :catch_0
    move-exception v2

    .line 144
    :goto_4
    if-eqz v0, :cond_1

    .line 146
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 147
    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_3

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    goto :goto_0

    .line 144
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 140
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_4
.end method


# virtual methods
.method protected addPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/ssrm/FgAppListener;->mPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method protected clearPackages()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/FgAppListener;->mPackagesMap:Ljava/util/HashMap;

    .line 131
    return-void
.end method

.method protected getForegroundPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/ssrm/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method protected isBootComplete()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/server/ssrm/FgAppListener;->mBootComplete:Z

    return v0
.end method

.method protected isMultiWindowActivated()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/server/ssrm/FgAppListener;->mMultiWindowOn:Z

    return v0
.end method

.method protected isPackageExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/ssrm/FgAppListener;->mPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onBootComplete()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method protected onFgAppChanged()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected abstract onFgAppInPackageList(Z)V
.end method

.method protected onLockScreenRelease()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method protected onMultiWindowStatusChanged(Z)V
    .locals 0
    .parameter "isMultiWindowOn"

    .prologue
    .line 104
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 44
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    sput-object p1, Lcom/android/server/ssrm/FgAppListener;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 52
    const-string v6, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/FgAppListener;->mMultiWindowOn:Z

    .line 53
    iget-boolean v6, p0, Lcom/android/server/ssrm/FgAppListener;->mMultiWindowOn:Z

    invoke-virtual {p0, v6}, Lcom/android/server/ssrm/FgAppListener;->onMultiWindowStatusChanged(Z)V

    goto :goto_0

    .line 56
    :cond_2
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 57
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/ssrm/FgAppListener;->mBootComplete:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->onBootComplete()V

    goto :goto_0

    .line 61
    :cond_3
    const-string v6, "com.sec.android.intent.action.DVFS_FG_PROCESS_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 62
    const-string v6, "PACKAGE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, packageName:Ljava/lang/String;
    const-string v6, "PROCESS_STATE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, processState:Ljava/lang/String;
    const-string v6, "FOREGROUND"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    iput-object v2, p0, Lcom/android/server/ssrm/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->onFgAppChanged()V

    .line 67
    iget-object v6, p0, Lcom/android/server/ssrm/FgAppListener;->mPackagesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    .line 68
    .local v1, isFgAppInPackageList:Z
    iget-boolean v6, p0, Lcom/android/server/ssrm/FgAppListener;->mIsFgAppInPackageList:Z

    if-eq v6, v1, :cond_0

    .line 69
    iput-boolean v1, p0, Lcom/android/server/ssrm/FgAppListener;->mIsFgAppInPackageList:Z

    .line 70
    iget-boolean v6, p0, Lcom/android/server/ssrm/FgAppListener;->mIsFgAppInPackageList:Z

    invoke-virtual {p0, v6}, Lcom/android/server/ssrm/FgAppListener;->onFgAppInPackageList(Z)V

    goto :goto_0

    .line 74
    .end local v1           #isFgAppInPackageList:Z
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #processState:Ljava/lang/String;
    :cond_4
    const-string v6, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 75
    const-string v6, "SSRM_STATUS_NAME"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, statusName:Ljava/lang/String;
    const-string v6, "SSRM_STATUS_VALUE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 77
    .local v5, statusValue:Z
    const-string v6, "PackageName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .restart local v2       #packageName:Ljava/lang/String;
    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/ssrm/FgAppListener;->onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v2           #packageName:Ljava/lang/String;
    .end local v4           #statusName:Ljava/lang/String;
    .end local v5           #statusValue:Z
    :cond_5
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 81
    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->onLockScreenRelease()V

    goto/16 :goto_0

    .line 83
    :cond_6
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->onScreenOff()V

    goto/16 :goto_0
.end method

.method protected onScreenOff()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter "statusName"
    .parameter "statusValue"
    .parameter "packageName"

    .prologue
    .line 114
    return-void
.end method
