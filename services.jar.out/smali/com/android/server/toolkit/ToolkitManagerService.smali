.class public Lcom/android/server/toolkit/ToolkitManagerService;
.super Landroid/toolkit/IToolkitService$Stub;
.source "ToolkitManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;
    }
.end annotation


# static fields
.field private static final HIDE_TOOLKITBAR:I = 0x4

.field private static final MAX_VER:I = 0x3e8

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "ToolkitManagerService"

.field private static final REFRESH_TOOLKITBAR:I = 0x5

.field private static final SEND_BUNDLE:I = 0x1

.field private static final SHOW_TOOLKITBAR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ToolkitManagerService"


# instance fields
.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/toolkit/IToolkitServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentHostPackageName:Ljava/lang/String;

.field private mCurrentPluginPackageNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageMap:Ljava/util/HashMap;

.field private final mPluginDataHandler:Landroid/os/Handler;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mShowingTab:Z

.field private mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;

.field private mVer:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/toolkit/IToolkitService$Stub;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPackageMap:Ljava/util/HashMap;

    .line 54
    iput v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mVer:I

    .line 62
    iput-boolean v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z

    .line 66
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 342
    new-instance v0, Lcom/android/server/toolkit/ToolkitManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/toolkit/ToolkitManagerService$1;-><init>(Lcom/android/server/toolkit/ToolkitManagerService;)V

    iput-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private SendData(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 8
    .parameter "intent"
    .parameter "type"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 399
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v4, v5

    .line 424
    :goto_0
    return v4

    .line 402
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, packageName:Ljava/lang/CharSequence;
    if-eqz v3, :cond_4

    .line 405
    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 407
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 409
    :try_start_0
    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 410
    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/toolkit/IToolkitServiceCallback;

    invoke-interface {v4, p2, p3}, Landroid/toolkit/IToolkitServiceCallback;->onReceiveBundle(ILandroid/os/Bundle;)V

    .line 411
    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    const/4 v4, 0x1

    goto :goto_0

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "ToolkitManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 407
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 420
    :cond_3
    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 423
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_4
    const-string v4, "ToolkitManagerService"

    const-string v6, "The app is not running."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 424
    goto :goto_0
.end method

.method private SendMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "what"
    .parameter "obj"
    .parameter "delayTime"

    .prologue
    .line 428
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 429
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 430
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 431
    if-eqz p3, :cond_0

    .line 432
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 435
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/toolkit/ToolkitManagerService;Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/toolkit/ToolkitManagerService;->SendData(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/toolkit/ToolkitManagerService;ILjava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/toolkit/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/toolkit/ToolkitManagerService;)Lcom/android/server/toolkit/ToolkitTabDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/toolkit/ToolkitManagerService;Lcom/android/server/toolkit/ToolkitTabDialog;)Lcom/android/server/toolkit/ToolkitTabDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mTabWindow:Lcom/android/server/toolkit/ToolkitTabDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/toolkit/ToolkitManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/toolkit/ToolkitManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/toolkit/ToolkitManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z

    return v0
.end method

.method private increaseVer()V
    .locals 2

    .prologue
    .line 322
    iget v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mVer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mVer:I

    .line 323
    iget v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mVer:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mVer:I

    .line 327
    :cond_0
    return-void
.end method

.method private load()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentHostPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitManagerService;->resetVer()V

    .line 282
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 284
    iput-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mContext:Landroid/content/Context;

    const-string v2, "ToolkitManagerService"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPrefs:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentHostPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 293
    .local v0, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    .line 295
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 297
    :cond_3
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private resetVer()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mVer:I

    .line 319
    return-void
.end method

.method private save()V
    .locals 4

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitManagerService;->increaseVer()V

    .line 307
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mContext:Landroid/content/Context;

    const-string v2, "ToolkitManagerService"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPrefs:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 312
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 313
    .local v0, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 314
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentHostPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public addPluginPackageName(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :goto_0
    return v1

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitManagerService;->save()V

    goto :goto_0
.end method

.method public getPackageList()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 257
    const/4 v0, 0x0

    .line 266
    :cond_0
    return-object v0

    .line 260
    :cond_1
    const/4 v1, 0x0

    .line 261
    .local v1, i:I
    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 263
    .local v0, arrayString:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 264
    .local v4, value:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method public getPackageListVer()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mVer:I

    return v0
.end method

.method public hideToolkitBar()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z

    .line 83
    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z

    return v0
.end method

.method public registerCallback(Ljava/lang/String;Landroid/toolkit/IToolkitServiceCallback;)Z
    .locals 3
    .parameter "packagename"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, flag:Z
    if-eqz p2, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v0

    .line 174
    if-nez v0, :cond_0

    .line 175
    const-string v1, "ToolkitManagerService"

    const-string v2, "registerCallback failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    return v0
.end method

.method public removeAllPackageList()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    .line 250
    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitManagerService;->save()V

    .line 252
    return-void
.end method

.method public removePluginPackageName(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 231
    if-nez p1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v2

    .line 235
    :cond_1
    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 236
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentPluginPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitManagerService;->save()V

    .line 239
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public sendBundle(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter "intent"
    .parameter "type"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, bFound:Z
    const/4 v3, 0x0

    .line 98
    .local v3, packageName:Ljava/lang/CharSequence;
    if-nez p3, :cond_0

    .line 99
    const/4 v4, 0x0

    .line 130
    :goto_0
    return v4

    .line 102
    :cond_0
    if-eqz p1, :cond_3

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 104
    const-string v4, "android.intent.extra.REQUEST_WINDOW_MODE"

    const v6, 0x2002010

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const/high16 v4, 0x3000

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    :goto_1
    if-eqz v3, :cond_2

    .line 114
    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 116
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_1

    .line 117
    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 118
    const/4 v1, 0x1

    .line 123
    :cond_1
    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 124
    if-nez v1, :cond_2

    .line 125
    const-string v4, "ToolkitManagerService"

    const-string v6, "The app is not running."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_2
    new-instance v4, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/server/toolkit/ToolkitManagerService$ReceiveData;-><init>(Lcom/android/server/toolkit/ToolkitManagerService;Landroid/content/Intent;ILandroid/os/Bundle;)V

    const/16 v6, 0x3e8

    invoke-direct {p0, v5, v4, v6}, Lcom/android/server/toolkit/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    move v4, v5

    .line 130
    goto :goto_0

    .line 108
    :cond_3
    new-instance p1, Landroid/content/Intent;

    .end local p1
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .restart local p1
    iget-object v4, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentHostPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentHostPackageName:Ljava/lang/String;

    goto :goto_1

    .line 116
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public sendBundleImmediate(Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .parameter "intent"
    .parameter "type"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v3, 0x0

    .line 137
    .local v3, packageName:Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 143
    :goto_0
    if-eqz v3, :cond_3

    .line 144
    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 146
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 148
    :try_start_0
    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/toolkit/IToolkitServiceCallback;

    invoke-interface {v5, p2, p3}, Landroid/toolkit/IToolkitServiceCallback;->onReceiveBundleImmediate(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 150
    .local v4, rtBundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #rtBundle:Landroid/os/Bundle;
    :goto_2
    return-object v4

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentHostPackageName:Ljava/lang/String;

    goto :goto_0

    .line 153
    .restart local v0       #N:I
    .restart local v2       #i:I
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "ToolkitManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    :cond_2
    iget-object v5, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 162
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_3
    const-string v5, "ToolkitManagerService"

    const-string v6, "The app is not running."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public setHostPackageName(Ljava/lang/String;)V
    .locals 1
    .parameter "hostPackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCurrentHostPackageName:Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z

    .line 273
    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitManagerService;->load()V

    .line 274
    return-void
.end method

.method public showToolkitBar()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 75
    iput-boolean v2, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mShowingTab:Z

    .line 76
    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 77
    return v2
.end method

.method public unregisterCallback(Ljava/lang/String;)Z
    .locals 4
    .parameter "packagename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    if-eqz p1, :cond_3

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, cb:Landroid/toolkit/IToolkitServiceCallback;
    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 189
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 190
    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    .end local v1           #cb:Landroid/toolkit/IToolkitServiceCallback;
    check-cast v1, Landroid/toolkit/IToolkitServiceCallback;

    .line 196
    .restart local v1       #cb:Landroid/toolkit/IToolkitServiceCallback;
    :cond_0
    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 197
    if-eqz v1, :cond_1

    .line 198
    iget-object v3, p0, Lcom/android/server/toolkit/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 200
    :cond_1
    const/4 v3, 0x1

    .line 202
    .end local v0           #N:I
    .end local v1           #cb:Landroid/toolkit/IToolkitServiceCallback;
    .end local v2           #i:I
    :goto_1
    return v3

    .line 189
    .restart local v0       #N:I
    .restart local v1       #cb:Landroid/toolkit/IToolkitServiceCallback;
    .restart local v2       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v0           #N:I
    .end local v1           #cb:Landroid/toolkit/IToolkitServiceCallback;
    .end local v2           #i:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
