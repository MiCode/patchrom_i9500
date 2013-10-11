.class public Lcom/android/server/enterprise/browser/BrowserPolicy;
.super Landroid/app/enterprise/IBrowserPolicy$Stub;
.source "BrowserPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowserPolicy"


# instance fields
.field private mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/app/enterprise/IBrowserPolicy$Stub;-><init>()V

    .line 67
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    iput-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 110
    iput-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 111
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 113
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    new-instance v2, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-direct {v2, p0, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;-><init>(Lcom/android/server/enterprise/browser/BrowserPolicy;I)V

    aput-object v2, v1, v0

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->loadProxySettings(I)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private enforceBrowserPermission(I)I
    .locals 2
    .parameter "containerId"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BROWSER_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 161
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    move-result v0

    return v0
.end method

.method private enforceBrowserProxyPermission(I)I
    .locals 2
    .parameter "containerId"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.mdm.permission.BROWSER_PROXY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 172
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public clearHttpProxy(I)Z
    .locals 4
    .parameter "containerId"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserProxyPermission(I)I

    move-result v1

    .line 305
    .local v1, uid:I
    const/4 v0, 0x0

    .line 307
    .local v0, result:Z
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v2, v2, p1

    #getter for: Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I
    invoke-static {v2}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->access$100(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "BROWSER_PROXY"

    invoke-virtual {v2, v3, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;II)Z

    move-result v0

    .line 310
    if-eqz v0, :cond_0

    .line 311
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    .line 314
    :cond_0
    return v0
.end method

.method public getBrowserSettingStatus(I)Z
    .locals 3
    .parameter "setting"

    .prologue
    .line 225
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 226
    .local v1, uid:I
    invoke-static {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    .line 227
    .local v0, containerId:I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatusEx(II)Z

    move-result v2

    return v2
.end method

.method public getBrowserSettingStatusEx(II)Z
    .locals 9
    .parameter "containerId"
    .parameter "setting"

    .prologue
    const/16 v8, 0x8

    .line 231
    const/4 v2, 0x1

    .line 232
    .local v2, lEnabled:Z
    if-ne p2, v8, :cond_0

    .line 233
    const/4 v2, 0x0

    .line 237
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "BROWSER"

    const-string v7, "browserSettings"

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 240
    .local v4, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 241
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 242
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_1

    .line 243
    if-eq p2, v8, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, p2

    if-eq p2, v5, :cond_3

    .line 245
    const/4 v2, 0x0

    .line 260
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #value:Ljava/lang/Integer;
    .end local v4           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    return v2

    .line 250
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #value:Ljava/lang/Integer;
    .restart local v4       #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v5, p2

    if-ne p2, v5, :cond_1

    .line 251
    const/4 v2, 0x1

    .line 252
    goto :goto_0

    .line 257
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #value:Ljava/lang/Integer;
    .end local v4           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "BrowserPolicy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHttpProxy(I)Ljava/lang/String;
    .locals 1
    .parameter "containerId"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v0, v0, p1

    #getter for: Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->access$200(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loadProxySettings(I)V
    .locals 11
    .parameter "containerId"

    .prologue
    const/4 v8, 0x0

    .line 121
    const/4 v7, 0x2

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "adminUid"

    aput-object v7, v2, v8

    const/4 v7, 0x1

    const-string v8, "proxyServer"

    aput-object v8, v2, v7

    .line 126
    .local v2, columns:[Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BROWSER_PROXY"

    invoke-virtual {v7, p1, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 128
    .local v6, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 130
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 132
    .local v3, cv:Landroid/content/ContentValues;
    const-string v7, "adminUid"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 133
    .local v0, adminLUID:J
    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v7, v7, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v8

    const-string v9, "proxyServer"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->setProxy(ILjava/lang/String;Z)V

    .line 141
    .end local v0           #adminLUID:J
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v6           #results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_0
    return-void

    .line 136
    .restart local v5       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .restart local v6       #results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v6           #results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v4

    .line 139
    .local v4, e:Ljava/lang/Exception;
    const-string v7, "BrowserPolicy"

    const-string v8, "Exception in loadProxySettings"

    invoke-static {v7, v8, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 330
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2
    .parameter "uid"

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v0, v0, v1

    #getter for: Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I
    invoke-static {v0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->access$100(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    .line 337
    :cond_0
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 0
    .parameter "containerId"
    .parameter "ownerUid"

    .prologue
    .line 349
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 1
    .parameter "containerId"
    .parameter "ownerUid"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    .line 358
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 345
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 0
    .parameter "containerId"
    .parameter "ownerUid"

    .prologue
    .line 353
    return-void
.end method

.method public setBrowserSettingStatus(IZI)Z
    .locals 11
    .parameter "containerId"
    .parameter "enable"
    .parameter "setting"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(I)I

    move-result v1

    .line 186
    .local v1, callingUid:I
    const/4 v8, 0x0

    .line 187
    .local v8, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 193
    .local v9, token:J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "BROWSER"

    const-string v3, "browserSettings"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 199
    .local v5, lValue:I
    :goto_0
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    or-int/2addr v5, p3

    .line 200
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "BROWSER"

    const-string v4, "browserSettings"

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    .line 205
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 207
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.browser"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 208
    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    .end local v5           #lValue:I
    .end local v6           #am:Landroid/app/ActivityManager;
    :goto_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    return v8

    .line 195
    :catch_0
    move-exception v7

    .line 196
    .local v7, e:Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const/16 v5, 0x17

    .restart local v5       #lValue:I
    goto :goto_0

    .line 199
    .end local v7           #e:Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :cond_0
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v5, v0

    goto :goto_1

    .line 209
    .end local v5           #lValue:I
    :catch_1
    move-exception v7

    .line 210
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "BrowserPolicy"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setHttpProxy(ILjava/lang/String;)Z
    .locals 6
    .parameter "containerId"
    .parameter "proxySetting"

    .prologue
    const/4 v4, 0x0

    .line 271
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserProxyPermission(I)I

    move-result v3

    .line 272
    .local v3, uid:I
    const/4 v2, 0x0

    .line 274
    .local v2, result:Z
    if-nez p2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v4

    .line 277
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, myProxySetting:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 281
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 282
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "proxyServer"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v4, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v4, v4, p1

    #getter for: Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I
    invoke-static {v4}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->access$100(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v4, v4, p1

    #getter for: Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mAdminUid:I
    invoke-static {v4}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->access$100(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 286
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BROWSER_PROXY"

    invoke-virtual {v4, v3, p1, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 288
    if-eqz v2, :cond_3

    .line 289
    iget-object v4, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:[Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    aget-object v4, v4, p1

    invoke-virtual {v4, v3, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->setProxy(ILjava/lang/String;)V

    :cond_3
    :goto_1
    move v4, v2

    .line 295
    goto :goto_0

    .line 292
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method
