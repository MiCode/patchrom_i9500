.class public Lcom/android/server/HarmonyEASService;
.super Landroid/content/IHarmonyEAS$Stub;
.source "HarmonyEASService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HarmonyEASService$PackageHandler;,
        Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    }
.end annotation


# static fields
.field public static final HARMONY_EAS_SERVICE:Ljava/lang/String; = "harmony_eas_service"

.field private static final HARMONY_THIRDPARTY_APP_FILES:Ljava/lang/String; = "harmony_third_party_apps.xml"

.field private static final HARMONY_THIRDPARTY_APP_FILE_PATH:Ljava/lang/String; = "data/system/harmony_third_party_apps.xml"

.field private static final SYSTEM_SECURE_DIR:Ljava/lang/String; = "data/system/"

.field private static final TAG:Ljava/lang/String; = "HarmonyEASService"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageHandler:Landroid/os/Handler;

.field mUserMgr:Landroid/os/UserManager;

.field private final mUserToAppMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-direct {p0}, Landroid/content/IHarmonyEAS$Stub;-><init>()V

    .line 72
    iput-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    .line 107
    iput-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/android/server/HarmonyEASService$1;

    invoke-direct {v0, p0}, Lcom/android/server/HarmonyEASService$1;-><init>(Lcom/android/server/HarmonyEASService;)V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    iput-object p1, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    .line 144
    new-instance v0, Lcom/android/server/HarmonyEASService$PackageHandler;

    invoke-direct {v0, p0}, Lcom/android/server/HarmonyEASService$PackageHandler;-><init>(Lcom/android/server/HarmonyEASService;)V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    .line 145
    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    .line 147
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 152
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #filter:Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .restart local v3       #filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HarmonyEASService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->saveHash(I)V

    return-void
.end method

.method private declared-synchronized addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "packageName"
    .parameter "hashValue"
    .parameter "userID"

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 241
    .local v0, appDetails:Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 239
    .end local v0           #appDetails:Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized addPackageAsUnknown(Ljava/lang/String;I)V
    .locals 7
    .parameter "packageName"
    .parameter "userID"

    .prologue
    .line 192
    monitor-enter p0

    const/4 v1, 0x0

    .line 194
    .local v1, needXMLUpdate:Z
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 195
    .local v0, appDetails:Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    .line 197
    .local v2, unknownPackageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    const/4 v1, 0x1

    .line 201
    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    if-eqz v1, :cond_1

    .line 203
    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_1
    monitor-exit p0

    return-void

    .line 192
    .end local v0           #appDetails:Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    .end local v2           #unknownPackageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    .locals 2
    .parameter "userHandle"

    .prologue
    .line 489
    monitor-enter p0

    .line 490
    :try_start_0
    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    .line 491
    .local v0, appDetails:Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    if-nez v0, :cond_0

    .line 492
    new-instance v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    .end local v0           #appDetails:Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;-><init>(Lcom/android/server/HarmonyEASService$1;)V

    .line 493
    .restart local v0       #appDetails:Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 494
    invoke-direct {p0, v0, p1}, Lcom/android/server/HarmonyEASService;->loadHashVaues(Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;I)V

    .line 496
    :cond_0
    monitor-exit p0

    return-object v0

    .line 497
    .end local v0           #appDetails:Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadHashVaues(Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;I)V
    .locals 17
    .parameter "appDetails"
    .parameter "userHandle"

    .prologue
    .line 347
    const/4 v2, 0x0

    .line 348
    .local v2, fis:Ljava/io/FileInputStream;
    invoke-static/range {p2 .. p2}, Lcom/android/server/HarmonyEASService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v7

    .line 350
    .local v7, journal:Lcom/android/internal/util/JournaledFile;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    .line 351
    .local v11, thirdPartyPackageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    .line 352
    .local v5, hashValueToPkgNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    .line 355
    .local v13, unknownPackageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 356
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    if-nez v3, :cond_2

    .line 406
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    .line 409
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    return-void

    .line 358
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 359
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v14, 0x0

    invoke-interface {v9, v3, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 363
    :cond_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_4

    const/4 v14, 0x2

    if-ne v12, v14, :cond_3

    .line 366
    :cond_4
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 367
    .local v10, pkgName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 368
    .local v4, hash:Ljava/lang/String;
    const/4 v6, 0x0

    .line 369
    .local v6, isUnsigned:Z
    const-string v14, "third-party-apps"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 371
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "harmony eas settings do not start with proper tag: found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 402
    .end local v4           #hash:Ljava/lang/String;
    .end local v6           #isUnsigned:Z
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #pkgName:Ljava/lang/String;
    .end local v12           #type:I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 403
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 406
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 407
    :catch_1
    move-exception v14

    goto :goto_1

    .line 375
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #hash:Ljava/lang/String;
    .restart local v6       #isUnsigned:Z
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #pkgName:Ljava/lang/String;
    .restart local v12       #type:I
    :cond_5
    :try_start_5
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .line 376
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 377
    .local v8, outerDepth:I
    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 378
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 381
    :cond_6
    :goto_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_a

    const/4 v14, 0x3

    if-ne v12, v14, :cond_7

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v8, :cond_a

    .line 384
    :cond_7
    const/4 v14, 0x3

    if-eq v12, v14, :cond_6

    const/4 v14, 0x4

    if-eq v12, v14, :cond_6

    .line 387
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 388
    const/4 v14, 0x0

    const-string v15, "hash"

    invoke-interface {v9, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 389
    const/4 v14, 0x0

    const-string v15, "isUnsigned"

    invoke-interface {v9, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 391
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 393
    :try_start_6
    invoke-virtual {v11, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    if-eqz v6, :cond_8

    .line 396
    invoke-virtual {v13, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_8
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 400
    :try_start_7
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    .line 405
    .end local v4           #hash:Ljava/lang/String;
    .end local v6           #isUnsigned:Z
    .end local v8           #outerDepth:I
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #pkgName:Ljava/lang/String;
    .end local v12           #type:I
    :catchall_0
    move-exception v14

    move-object v2, v3

    .line 406
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_4
    if-eqz v2, :cond_9

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 405
    :cond_9
    :goto_5
    throw v14

    .line 398
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #hash:Ljava/lang/String;
    .restart local v6       #isUnsigned:Z
    .restart local v8       #outerDepth:I
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #pkgName:Ljava/lang/String;
    .restart local v12       #type:I
    :catchall_1
    move-exception v14

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 406
    :cond_a
    if-eqz v3, :cond_b

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_b
    :goto_6
    move-object v2, v3

    .line 408
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 407
    .end local v4           #hash:Ljava/lang/String;
    .end local v6           #isUnsigned:Z
    .end local v8           #outerDepth:I
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #pkgName:Ljava/lang/String;
    .end local v12           #type:I
    :catch_2
    move-exception v15

    goto :goto_5

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v14

    goto/16 :goto_0

    .restart local v4       #hash:Ljava/lang/String;
    .restart local v6       #isUnsigned:Z
    .restart local v8       #outerDepth:I
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #pkgName:Ljava/lang/String;
    .restart local v12       #type:I
    :catch_4
    move-exception v14

    goto :goto_6

    .line 405
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #hash:Ljava/lang/String;
    .end local v6           #isUnsigned:Z
    .end local v8           #outerDepth:I
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #pkgName:Ljava/lang/String;
    .end local v12           #type:I
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v14

    goto :goto_4

    .line 402
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .parameter "userHandle"

    .prologue
    .line 279
    if-nez p0, :cond_0

    const-string v0, "data/system/harmony_third_party_apps.xml"

    .line 284
    .local v0, base:Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    .line 279
    .end local v0           #base:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "harmony_third_party_apps.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private saveHash(I)V
    .locals 20
    .parameter "userHandle"

    .prologue
    .line 293
    invoke-direct/range {p0 .. p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v3

    .line 295
    .local v3, appDetails:Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v15, v3, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    .line 296
    .local v15, thirdPartyPackageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v3, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    move-object/from16 v16, v0

    .line 299
    .local v16, unknownPackageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 300
    .local v9, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 301
    .local v4, bos:Ljava/io/BufferedOutputStream;
    invoke-static/range {p1 .. p1}, Lcom/android/server/HarmonyEASService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v13

    .line 303
    .local v13, journal:Lcom/android/internal/util/JournaledFile;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 304
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .local v10, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 305
    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .local v5, bos:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v14, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v14}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 306
    .local v14, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v17, "utf-8"

    move-object/from16 v0, v17

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 307
    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 308
    const-string v17, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 310
    const/16 v17, 0x0

    const-string v18, "third-party-apps"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 312
    .local v12, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 313
    .local v7, currPackage:Ljava/lang/String;
    const/4 v6, 0x0

    .line 314
    .local v6, currHash:Ljava/lang/String;
    const/4 v11, 0x0

    .line 315
    .local v11, isUnsigned:Z
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 316
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #currPackage:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 317
    .restart local v7       #currPackage:Ljava/lang/String;
    invoke-virtual {v15, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #currHash:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 318
    .restart local v6       #currHash:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 319
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v14, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 320
    const/16 v17, 0x0

    const-string v18, "hash"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    const/16 v17, 0x0

    const-string v18, "isUnsigned"

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v14, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 330
    .end local v6           #currHash:Ljava/lang/String;
    .end local v7           #currPackage:Ljava/lang/String;
    .end local v11           #isUnsigned:Z
    .end local v12           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v8

    move-object v4, v5

    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .line 331
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .local v8, e:Ljava/lang/Exception;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 332
    invoke-virtual {v13}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 335
    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 336
    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 339
    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 324
    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #currHash:Ljava/lang/String;
    .restart local v7       #currPackage:Ljava/lang/String;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #isUnsigned:Z
    .restart local v12       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v14       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const/16 v17, 0x0

    :try_start_5
    const-string v18, "third-party-apps"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 327
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 328
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 329
    invoke-virtual {v13}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 335
    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 336
    :cond_3
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_3
    move-object v4, v5

    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .line 338
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 334
    .end local v6           #currHash:Ljava/lang/String;
    .end local v7           #currPackage:Ljava/lang/String;
    .end local v11           #isUnsigned:Z
    .end local v12           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v17

    .line 335
    :goto_4
    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 336
    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 334
    :cond_6
    :goto_5
    throw v17

    .line 337
    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #currHash:Ljava/lang/String;
    .restart local v7       #currPackage:Ljava/lang/String;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #isUnsigned:Z
    .restart local v12       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v14       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v17

    goto :goto_3

    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .end local v6           #currHash:Ljava/lang/String;
    .end local v7           #currPackage:Ljava/lang/String;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v11           #isUnsigned:Z
    .end local v12           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v8       #e:Ljava/lang/Exception;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v17

    goto :goto_2

    .end local v8           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v18

    goto :goto_5

    .line 334
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v17

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #bos:Ljava/io/BufferedOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v17

    move-object v4, v5

    .end local v5           #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 330
    :catch_4
    move-exception v8

    goto :goto_1

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v8

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method clearDataForUser(I)V
    .locals 3
    .parameter "userHandle"

    .prologue
    .line 501
    monitor-enter p0

    .line 503
    if-nez p1, :cond_0

    .line 504
    :try_start_0
    monitor-exit p0

    .line 512
    :goto_0
    return-void

    .line 506
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "harmony_third_party_apps.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 507
    .local v0, thirdPartyFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 509
    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 510
    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 511
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0           #thirdPartyFile:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHashValueFromPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "packageName"
    .parameter "userHandle"

    .prologue
    .line 426
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 427
    .local v0, appDetails:Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 429
    .local v1, hashValue:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .end local v1           #hashValue:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 427
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 429
    .restart local v1       #hashValue:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public getPackageNameFromHash(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "hashValue"
    .parameter "userHandle"

    .prologue
    .line 418
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 419
    .local v0, appDetails:Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 421
    .local v1, pkgName:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .end local v1           #pkgName:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 419
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 421
    .restart local v1       #pkgName:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public getThirdPartyApps(I)Ljava/util/List;
    .locals 3
    .parameter "userHandle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 483
    .local v0, appDetails:Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 485
    .local v1, thirdPartyAppList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method public getUnknownSourcesPackages(I)Ljava/util/List;
    .locals 3
    .parameter "userHandle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 256
    .local v0, appDetails:Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 257
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method handlePackagesChanged(I)V
    .locals 10
    .parameter "userHandle"

    .prologue
    .line 525
    const/4 v2, 0x0

    .line 526
    .local v2, isAnyPackageRemoved:Z
    const/4 v3, 0x0

    .line 528
    .local v3, isCurrentPackageRemoved:Z
    iget-object v6, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 530
    .local v5, pm:Landroid/content/pm/PackageManager;
    monitor-enter p0

    .line 531
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 533
    .local v4, pkgIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 534
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    .local v0, currPackage:Ljava/lang/String;
    const/4 v3, 0x0

    .line 539
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    if-nez v6, :cond_1

    .line 540
    const/4 v3, 0x1

    .line 541
    const/4 v2, 0x1

    .line 549
    :cond_1
    :goto_1
    if-eqz v3, :cond_0

    .line 554
    :try_start_2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    .line 555
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 561
    .end local v0           #currPackage:Ljava/lang/String;
    .end local v4           #pkgIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 543
    .restart local v0       #currPackage:Ljava/lang/String;
    .restart local v4       #pkgIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 545
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x1

    .line 546
    const/4 v2, 0x1

    goto :goto_1

    .line 559
    .end local v0           #currPackage:Ljava/lang/String;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    if-eqz v2, :cond_3

    .line 560
    :try_start_3
    iget-object v6, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 561
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 562
    return-void
.end method

.method declared-synchronized handleUserChanged(I)V
    .locals 1
    .parameter "userHandle"

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :cond_0
    monitor-exit p0

    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPackageUnknownSource(Ljava/lang/String;I)Z
    .locals 3
    .parameter "packageName"
    .parameter "userHandle"

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 269
    .local v1, result:Z
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 271
    .local v0, appDetails:Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    const/4 v1, 0x1

    .line 274
    :cond_0
    return v1
.end method

.method public removeInstallationPackage(Ljava/lang/String;I)V
    .locals 5
    .parameter "packageName"
    .parameter "userHandle"

    .prologue
    .line 438
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    .line 439
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 440
    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v3, :cond_1

    .line 441
    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 442
    .local v2, userInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 443
    .local v1, userInfo:Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    goto :goto_0

    .line 447
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #userInfo:Landroid/content/pm/UserInfo;
    .end local v2           #userInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    .line 450
    :cond_1
    return-void
.end method

.method public removeInstallationPackageExtras(Ljava/lang/String;I)V
    .locals 8
    .parameter "packageName"
    .parameter "userHandle"

    .prologue
    .line 458
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    .line 460
    .local v0, appDetails:Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    .line 461
    .local v2, thirdPartyPackageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    .line 462
    .local v1, hashValueToPkgNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    .line 464
    .local v3, unknownPackageSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    monitor-enter p0

    .line 465
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 466
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_0
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 469
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 470
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 473
    return-void

    .line 470
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setInstallationPackageHashValue(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter "packageName"
    .parameter "hashValue"
    .parameter "source"
    .parameter "userHandle"

    .prologue
    .line 214
    const/4 v4, 0x1

    if-eq v4, p3, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v1, 0x0

    .line 218
    .local v1, updateForAllUsers:Z
    const/4 v3, 0x0

    .line 220
    .local v3, userInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v4, -0x1

    if-ne v4, p4, :cond_2

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v4, :cond_2

    .line 221
    const/4 v1, 0x1

    .line 223
    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .end local v3           #userInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 226
    .restart local v3       #userInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 227
    const-string v4, "HarmonyEASService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating for all "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 229
    .local v2, userInfo:Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/HarmonyEASService;->addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 233
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #userInfo:Landroid/content/pm/UserInfo;
    :cond_3
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/HarmonyEASService;->addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setInstallationPackageUnknown(Ljava/lang/String;II)V
    .locals 7
    .parameter "packageName"
    .parameter "source"
    .parameter "userHandle"

    .prologue
    .line 166
    const/4 v4, 0x1

    if-eq v4, p2, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const/4 v1, 0x0

    .line 170
    .local v1, updateForAllUsers:Z
    const/4 v3, 0x0

    .line 172
    .local v3, userInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v4, -0x1

    if-ne v4, p3, :cond_2

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v4, :cond_2

    .line 173
    const/4 v1, 0x1

    .line 175
    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .end local v3           #userInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 178
    .restart local v3       #userInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 179
    const-string v4, "HarmonyEASService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating for all "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 181
    .local v2, userInfo:Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v4}, Lcom/android/server/HarmonyEASService;->addPackageAsUnknown(Ljava/lang/String;I)V

    goto :goto_1

    .line 185
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #userInfo:Landroid/content/pm/UserInfo;
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/HarmonyEASService;->addPackageAsUnknown(Ljava/lang/String;I)V

    goto :goto_0
.end method
