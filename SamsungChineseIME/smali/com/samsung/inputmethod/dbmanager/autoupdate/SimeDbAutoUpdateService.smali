.class public Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;
.super Landroid/app/Service;
.source "SimeDbAutoUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$boradCastReceiver;,
        Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$SimeDbAutoUpdateServiceBinder;
    }
.end annotation


# static fields
.field private static final SIME_DB_AUTO_UPDATE_STARTDELAY_VALUE:I = 0x1f4

.field private static final SIME_DB_ONE_HOUR:J = 0x36ee80L

.field private static final SIME_DB_ONE_MIN:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "SimeDbAutoUpdateService"


# instance fields
.field private DEBUG:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mBroadCastReceiver:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$boradCastReceiver;

.field private mDbSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

.field private mHandler:Landroid/os/Handler;

.field private mUpdateTimeTask:Ljava/lang/Runnable;

.field private mWLanOnlyFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->DEBUG:Z

    .line 44
    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    .line 64
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$SimeDbAutoUpdateServiceBinder;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$SimeDbAutoUpdateServiceBinder;-><init>(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mBinder:Landroid/os/IBinder;

    .line 166
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;-><init>(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;[I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->getSogouHotwordDbs([I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;[I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->getXT9Dbs([I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bNeedUpdate(I)Z
    .locals 1
    .parameter "dbType"

    .prologue
    .line 244
    const/4 v0, 0x1

    .line 252
    .local v0, bRet:Z
    return v0
.end method

.method private getSogouHotwordDbs([I)I
    .locals 4
    .parameter "dbType"

    .prologue
    const/4 v3, 0x4

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, index:I
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHKTWModelByCSC()Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->bNeedUpdate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    aput v3, p1, v0

    move v0, v1

    .line 215
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_0
    return v0
.end method

.method private getXT9Dbs([I)I
    .locals 4
    .parameter "dbType"

    .prologue
    const/4 v3, 0x0

    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, index:I
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_KLSDK_SUPPORT:Z

    if-eqz v2, :cond_0

    .line 229
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHKTWModelByCSC()Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->bNeedUpdate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    aput v3, p1, v0

    move v0, v1

    .line 239
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_0
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "SimeDbAutoUpdateService"

    const-string v1, "SimeDbUpdateService onBind.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 102
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mWLanOnlyFilter:Landroid/content/IntentFilter;

    .line 106
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mWLanOnlyFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.inputmethod.setting.dbmanager.WLAN_ONLY_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$boradCastReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$boradCastReceiver;-><init>(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mBroadCastReceiver:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$boradCastReceiver;

    .line 109
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mBroadCastReceiver:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$boradCastReceiver;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mWLanOnlyFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "SimeDbAutoUpdateService"

    const-string v1, "service created "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "SimeDbAutoUpdateService"

    const-string v1, "service stoped "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->stopAutoUpdate()V

    .line 131
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mBroadCastReceiver:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$boradCastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 134
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "SimeDbAutoUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->startAutoUpdate()V

    .line 121
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "SimeDbAutoUpdateService"

    const-string v1, "SimeDbUpdateService onUnBind.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startAutoUpdate()V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    return-void
.end method

.method public stopAutoUpdate()V
    .locals 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "SimeDbAutoUpdateService"

    const-string v1, "autoUpdate Stop "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method
