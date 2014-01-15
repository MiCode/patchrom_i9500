.class public Lcom/android/settings_ex/samba/SambaConfig;
.super Ljava/lang/Object;
.source "SambaConfig.java"


# static fields
.field public static final NOTIFICATION_CURRENTCLIENT_ID:I = 0x1

.field public static final NOTIFICATION_EXPLANE_ID:I = 0x0

.field public static final RC:Ljava/lang/String; = "/system/bin/samrc "

.field public static SAMBA_FIXPASSWDPERMIS:Ljava/lang/String; = null

.field public static SAMBA_FIXPERMIS:Ljava/lang/String; = null

.field public static SAMBA_START:Ljava/lang/String; = null

.field public static SAMBA_STOP:Ljava/lang/String; = null

.field public static final SMBClientAddrLoginFILE:Ljava/lang/String; = "/data/samba/var/login_addr"

.field public static final SMBClientAddrLogoutAllFILE:Ljava/lang/String; = "/data/samba/var/logout_all"

.field public static final SMBClientAddrLogoutFILE:Ljava/lang/String; = "/data/samba/var/logout_addr"

.field public static final SMBFILE:Ljava/lang/String; = "/data/samba/var/file"

.field public static final SMBNETBIOSNAMEFILE:Ljava/lang/String; = "/data/samba/var/netbios_name"

.field public static final SMBUSERNAMEFILE:Ljava/lang/String; = "/data/samba/var/user_name"

.field private static Setting:Lcom/android/settings_ex/samba/SambaConfig; = null

.field public static final TAG:Ljava/lang/String; = "SambaConfig"

.field private static mMediaScanHandler:Landroid/os/Handler;

.field private static mNotiManager:Landroid/app/NotificationManager;

.field private static mSambaOn:Z

.field public static mSambaOngoginSound:Z

.field private static mediascanstate:Z


# instance fields
.field public final ACCOUNT_DELETE:Ljava/lang/String;

.field public final ACCOUNT_MAKE:Ljava/lang/String;

.field public final SMBPASSWD:Ljava/lang/String;

.field public final TEMP_PASSWD:Ljava/lang/String;

.field public final USER_ID:Ljava/lang/String;

.field public final USER_PW:Ljava/lang/String;

.field public checkCnt:I

.field public ctx:Landroid/content/Context;

.field mediascanRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const-string v0, "/system/bin/samrc  start"

    sput-object v0, Lcom/android/settings_ex/samba/SambaConfig;->SAMBA_START:Ljava/lang/String;

    .line 48
    const-string v0, "/system/bin/samrc  stop"

    sput-object v0, Lcom/android/settings_ex/samba/SambaConfig;->SAMBA_STOP:Ljava/lang/String;

    .line 50
    const-string v0, "/system/bin/samrc  fixperms"

    sput-object v0, Lcom/android/settings_ex/samba/SambaConfig;->SAMBA_FIXPERMIS:Ljava/lang/String;

    .line 52
    const-string v0, "/system/bin/samrc  fixpasswdperms"

    sput-object v0, Lcom/android/settings_ex/samba/SambaConfig;->SAMBA_FIXPASSWDPERMIS:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/samba/SambaConfig;->mNotiManager:Landroid/app/NotificationManager;

    .line 87
    sput-boolean v1, Lcom/android/settings_ex/samba/SambaConfig;->mediascanstate:Z

    .line 89
    sput-boolean v1, Lcom/android/settings_ex/samba/SambaConfig;->mSambaOn:Z

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/samba/SambaConfig;->mSambaOngoginSound:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/samba/SambaConfig;->checkCnt:I

    .line 41
    const-string v0, "/data/samba/private/smbpasswd"

    iput-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig;->SMBPASSWD:Ljava/lang/String;

    .line 54
    const-string v0, "/system/bin/smbpasswd -a "

    iput-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig;->ACCOUNT_MAKE:Ljava/lang/String;

    .line 56
    const-string v0, "/system/bin/smbpasswd -x "

    iput-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig;->ACCOUNT_DELETE:Ljava/lang/String;

    .line 58
    const-string v0, "/data/samba/private/temp_passwd"

    iput-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig;->TEMP_PASSWD:Ljava/lang/String;

    .line 61
    const-string v0, "homesync"

    iput-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig;->USER_ID:Ljava/lang/String;

    .line 63
    const-string v0, "1234"

    iput-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig;->USER_PW:Ljava/lang/String;

    .line 235
    new-instance v0, Lcom/android/settings_ex/samba/SambaConfig$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/samba/SambaConfig$1;-><init>(Lcom/android/settings_ex/samba/SambaConfig;)V

    iput-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig;->mediascanRunnable:Ljava/lang/Runnable;

    .line 94
    iput-object p1, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    .line 95
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/settings_ex/samba/SambaConfig;->mediascanstate:Z

    return v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/settings_ex/samba/SambaConfig;->mMediaScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings_ex/samba/SambaConfig;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 98
    sget-object v0, Lcom/android/settings_ex/samba/SambaConfig;->Setting:Lcom/android/settings_ex/samba/SambaConfig;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/android/settings_ex/samba/SambaConfig;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/samba/SambaConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings_ex/samba/SambaConfig;->Setting:Lcom/android/settings_ex/samba/SambaConfig;

    .line 100
    :cond_0
    sget-object v0, Lcom/android/settings_ex/samba/SambaConfig;->Setting:Lcom/android/settings_ex/samba/SambaConfig;

    return-object v0
.end method

.method public static final run(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 170
    const-string v0, ""

    return-object v0
.end method

.method public static final run(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .parameter "s"
    .parameter "i"

    .prologue
    .line 126
    return-object p0
.end method


# virtual methods
.method public InitServerSetting()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    const-string v0, "/data/samba/private/smbpasswd"

    invoke-static {v0}, Lcom/android/settings_ex/samba/FileOperation;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "samba_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 517
    invoke-virtual {p0}, Lcom/android/settings_ex/samba/SambaConfig;->serverNotification()V

    .line 526
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "samba_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/android/settings_ex/samba/SambaConfig;->ServerStart()V

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/samba/SambaConfig;->ServerStop()V

    goto :goto_0
.end method

.method public SambaPasswdChange(Ljava/lang/String;)V
    .locals 3
    .parameter "pin"

    .prologue
    .line 571
    const-string v1, "/data/samba/private/temp_passwd"

    invoke-static {v1, p1}, Lcom/android/settings_ex/samba/FileOperation;->Write_file(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :goto_0
    const-string v1, "service.samrc"

    const-string v2, "repasswd"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v1, "SambaConfig"

    const-string v2, "repasswd"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {p0}, Lcom/android/settings_ex/samba/SambaConfig;->Sambarestart()V

    .line 586
    return-void

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 578
    const-string v1, "SambaConfig"

    const-string v2, "sleep exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SambaUsernameChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "passwd"

    .prologue
    .line 589
    const-string v1, "/data/samba/var/user_name"

    invoke-static {v1}, Lcom/android/settings_ex/samba/FileOperation;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, brfore_username:Ljava/lang/String;
    const-string v1, "/data/samba/var/user_name"

    invoke-static {v1, p1}, Lcom/android/settings_ex/samba/FileOperation;->Write_file(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method public Sambarestart()V
    .locals 4

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "samba_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 600
    const-string v1, "SambaConfig"

    const-string v2, "After passwdchange : SAMBA state = ON"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    const-string v1, "service.samrc"

    const-string v2, "stop"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 614
    :goto_1
    const-string v1, "service.samrc"

    const-string v2, "start"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :goto_2
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 605
    const-string v1, "SambaConfig"

    const-string v2, "SambaRestart 11 sleep exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 610
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 611
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 612
    const-string v1, "SambaConfig"

    const-string v2, "SambaRestart sleep exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 616
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "SambaConfig"

    const-string v2, "After passwdchange : SAMBA state = OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public ServerStart()V
    .locals 3

    .prologue
    .line 529
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/samba/SambaConfig;->mSambaOn:Z

    .line 530
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.SAMBA_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 532
    const-string v1, "service.samrc"

    const-string v2, "start"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/samba/SambaConfig;->currentClientCnt(I)V

    .line 534
    const-string v1, "SambaConfig"

    const-string v2, "ServerStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void
.end method

.method public ServerStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 546
    sput-boolean v3, Lcom/android/settings_ex/samba/SambaConfig;->mSambaOn:Z

    .line 547
    const-string v1, "service.samrc"

    const-string v2, "stop"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.SAMBA_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 551
    iget v1, p0, Lcom/android/settings_ex/samba/SambaConfig;->checkCnt:I

    if-eqz v1, :cond_0

    .line 552
    iput v3, p0, Lcom/android/settings_ex/samba/SambaConfig;->checkCnt:I

    .line 554
    :cond_0
    const-string v1, "SambaConfig"

    const-string v2, "ServerStop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-void
.end method

.method public access_log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "ip"
    .parameter "mode"

    .prologue
    const/4 v6, 0x0

    .line 260
    new-instance v0, Lcom/android/settings_ex/samba/ServerDBHelper;

    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v6, v6, v4}, Lcom/android/settings_ex/samba/ServerDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 261
    .local v0, DBHelper:Lcom/android/settings_ex/samba/ServerDBHelper;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 263
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 264
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "ip"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v3, "mode"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v3, "in"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    const-string v3, "state"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v3, "intime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/samba/SambaConfig;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/samba/SambaConfig;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v3, "outtime"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v3, "serverlog"

    invoke-virtual {v1, v3, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 276
    :goto_0
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->mcontext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 277
    invoke-static {}, Lcom/android/settings_ex/samba/SambaLogs;->update_client_list()V

    .line 278
    invoke-static {}, Lcom/android/settings_ex/samba/SambaLogs;->update_log_list()V

    .line 281
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 282
    return-void

    .line 272
    :cond_1
    const-string v3, "state"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v3, "serverlog"

    invoke-virtual {v1, v3, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/samba/SambaConfig;->updateLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public currentClientCnt(I)V
    .locals 11
    .parameter "client_current_cnt"

    .prologue
    const v7, 0x7f0911f9

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 465
    new-instance v0, Landroid/app/Notification;

    const v3, 0x7f0201e7

    iget-object v4, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 467
    .local v0, notification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 468
    .local v2, settingIntent:Landroid/content/Intent;
    const-string v3, "android.settings.SAMBA_LOGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 470
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const/high16 v4, 0x4000

    invoke-static {v3, v9, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 472
    .local v1, pending:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const v6, 0x7f091212

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 473
    const/4 v3, 0x2

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 474
    sget-boolean v3, Lcom/android/settings_ex/samba/SambaConfig;->mSambaOngoginSound:Z

    if-eqz v3, :cond_0

    .line 475
    iget v3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 477
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    sput-object v3, Lcom/android/settings_ex/samba/SambaConfig;->mNotiManager:Landroid/app/NotificationManager;

    .line 478
    sget-object v3, Lcom/android/settings_ex/samba/SambaConfig;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v3, :cond_1

    .line 479
    sget-object v3, Lcom/android/settings_ex/samba/SambaConfig;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v10, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 482
    :cond_1
    return-void
.end method

.method public delLog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 415
    new-instance v0, Lcom/android/settings_ex/samba/ServerDBHelper;

    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v4, v4, v3}, Lcom/android/settings_ex/samba/ServerDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 416
    .local v0, DBHelper:Lcom/android/settings_ex/samba/ServerDBHelper;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 418
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "serverlog"

    const-string v3, "state = \'false\'"

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 419
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 420
    return-void
.end method

.method public destroyNotification()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/android/settings_ex/samba/SambaConfig;->mNotiManager:Landroid/app/NotificationManager;

    .line 507
    sget-object v0, Lcom/android/settings_ex/samba/SambaConfig;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 508
    sget-object v0, Lcom/android/settings_ex/samba/SambaConfig;->mNotiManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 509
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/samba/SambaConfig;->mNotiManager:Landroid/app/NotificationManager;

    .line 511
    :cond_0
    return-void
.end method

.method public getAccessCurrentLog()V
    .locals 20

    .prologue
    .line 390
    const-string v13, "true"

    .line 391
    .local v13, state:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/settings_ex/samba/SambaLogs;->ListItemCurrent:Ljava/util/ArrayList;

    .line 393
    new-instance v9, Lcom/android/settings_ex/samba/ServerDBHelper;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v9, v1, v2, v3, v4}, Lcom/android/settings_ex/samba/ServerDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 394
    .local v9, DBHelper:Lcom/android/settings_ex/samba/ServerDBHelper;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 395
    .local v11, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select _id, intime, outtime, ip, mode, state from serverlog WHERE state = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ORDER BY intime desc;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 397
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 398
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    sget-object v14, Lcom/android/settings_ex/samba/SambaLogs;->ListItemCurrent:Ljava/util/ArrayList;

    new-instance v15, Lcom/android/settings_ex/samba/SambaLogs$LogItem;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings_ex/samba/SambaConfig;->setAccessListItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    invoke-direct/range {v1 .. v8}, Lcom/android/settings_ex/samba/SambaLogs$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v12

    .line 404
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "SambaConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    if-eqz v11, :cond_0

    .line 407
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 409
    :cond_0
    if-eqz v10, :cond_1

    .line 410
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 412
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :cond_1
    :goto_1
    return-void

    .line 406
    :cond_2
    if-eqz v11, :cond_3

    .line 407
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 409
    :cond_3
    if-eqz v10, :cond_1

    .line 410
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 406
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_4

    .line 407
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 409
    :cond_4
    if-eqz v10, :cond_5

    .line 410
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public getClientCurrentLog()V
    .locals 20

    .prologue
    .line 365
    const-string v13, "true"

    .line 366
    .local v13, state:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/settings_ex/samba/SambaLogs;->ListItemCurrent:Ljava/util/ArrayList;

    .line 368
    new-instance v9, Lcom/android/settings_ex/samba/ServerDBHelper;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v9, v1, v2, v3, v4}, Lcom/android/settings_ex/samba/ServerDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 369
    .local v9, DBHelper:Lcom/android/settings_ex/samba/ServerDBHelper;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 370
    .local v11, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select _id, intime, outtime, ip, mode, state from serverlog WHERE state = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ORDER BY intime desc;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 372
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 373
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    sget-object v14, Lcom/android/settings_ex/samba/SambaLogs;->ListItemCurrent:Ljava/util/ArrayList;

    new-instance v15, Lcom/android/settings_ex/samba/SambaLogs$LogItem;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings_ex/samba/SambaConfig;->setClientListItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    invoke-direct/range {v1 .. v8}, Lcom/android/settings_ex/samba/SambaLogs$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v12

    .line 379
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "SambaConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    if-eqz v11, :cond_0

    .line 382
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 384
    :cond_0
    if-eqz v10, :cond_1

    .line 385
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 387
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :cond_1
    :goto_1
    return-void

    .line 381
    :cond_2
    if-eqz v11, :cond_3

    .line 382
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 384
    :cond_3
    if-eqz v10, :cond_1

    .line 385
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 381
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_4

    .line 382
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 384
    :cond_4
    if-eqz v10, :cond_5

    .line 385
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public getDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 423
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 424
    .local v1, date_formatter:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 425
    .local v0, currentTime:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getIpFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "filename"
    .parameter "mode"

    .prologue
    .line 203
    invoke-static {p1}, Lcom/android/settings_ex/samba/FileOperation;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 204
    invoke-static {p1}, Lcom/android/settings_ex/samba/FileOperation;->IpFileRead(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 205
    .local v1, IpList_before:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 207
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 208
    .local v3, hashSet:Ljava/util/HashSet;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    .local v0, IpList:Ljava/util/ArrayList;
    const-string v2, ""

    .line 211
    .local v2, NotiIp:Ljava/lang/String;
    const-string v5, "in"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 212
    iget v5, p0, Lcom/android/settings_ex/samba/SambaConfig;->checkCnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/settings_ex/samba/SambaConfig;->checkCnt:I

    .line 217
    :goto_0
    iget v5, p0, Lcom/android/settings_ex/samba/SambaConfig;->checkCnt:I

    if-gez v5, :cond_0

    .line 218
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings_ex/samba/SambaConfig;->checkCnt:I

    .line 219
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 220
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 221
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5, p2}, Lcom/android/settings_ex/samba/SambaConfig;->access_log(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 214
    .end local v4           #i:I
    :cond_2
    iget v5, p0, Lcom/android/settings_ex/samba/SambaConfig;->checkCnt:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/settings_ex/samba/SambaConfig;->checkCnt:I

    goto :goto_0

    .line 226
    .end local v0           #IpList:Ljava/util/ArrayList;
    .end local v2           #NotiIp:Ljava/lang/String;
    .end local v3           #hashSet:Ljava/util/HashSet;
    :cond_3
    sget-boolean v5, Lcom/android/settings_ex/samba/SambaConfig;->mSambaOn:Z

    if-eqz v5, :cond_4

    .line 227
    iget v5, p0, Lcom/android/settings_ex/samba/SambaConfig;->checkCnt:I

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/samba/SambaConfig;->currentClientCnt(I)V

    .line 229
    :cond_4
    invoke-static {p1}, Lcom/android/settings_ex/samba/FileOperation;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 230
    invoke-static {p1}, Lcom/android/settings_ex/samba/FileOperation;->fileRemove(Ljava/lang/String;)Z

    .line 233
    .end local v1           #IpList_before:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    return-void
.end method

.method public getTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 429
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 430
    .local v1, time_formatter:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 431
    .local v0, currentTime:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getaccessLog(I)Ljava/util/ArrayList;
    .locals 20
    .parameter "minus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v9, Lcom/android/settings_ex/samba/ServerDBHelper;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v9, v1, v2, v3, v4}, Lcom/android/settings_ex/samba/ServerDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 306
    .local v9, DBHelper:Lcom/android/settings_ex/samba/ServerDBHelper;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 308
    .local v11, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select _id, intime, outtime, ip, mode, state from serverlog WHERE intime LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/samba/SambaConfig;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int v2, v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' ORDER BY intime desc;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 311
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_2

    .line 314
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    sget-object v14, Lcom/android/settings_ex/samba/SambaLogs;->ListItem:Ljava/util/ArrayList;

    new-instance v15, Lcom/android/settings_ex/samba/SambaLogs$LogItem;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings_ex/samba/SambaConfig;->setAccessListItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    invoke-direct/range {v1 .. v8}, Lcom/android/settings_ex/samba/SambaLogs$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings_ex/samba/SambaConfig;->setAccessListItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v12

    .line 321
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "SambaConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    if-eqz v11, :cond_0

    .line 325
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 327
    :cond_0
    if-eqz v10, :cond_1

    .line 328
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 330
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :cond_1
    :goto_1
    return-object v13

    .line 324
    :cond_2
    if-eqz v11, :cond_3

    .line 325
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 327
    :cond_3
    if-eqz v10, :cond_1

    .line 328
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 324
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_4

    .line 325
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 327
    :cond_4
    if-eqz v10, :cond_5

    .line 328
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public getclientLog(I)Ljava/util/ArrayList;
    .locals 20
    .parameter "minus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    new-instance v9, Lcom/android/settings_ex/samba/ServerDBHelper;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v9, v1, v2, v3, v4}, Lcom/android/settings_ex/samba/ServerDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 337
    .local v9, DBHelper:Lcom/android/settings_ex/samba/ServerDBHelper;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 339
    .local v11, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select _id, intime, outtime, ip, mode, state from serverlog WHERE intime LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/samba/SambaConfig;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int v2, v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' ORDER BY intime desc;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 342
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_2

    .line 345
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    sget-object v14, Lcom/android/settings_ex/samba/SambaLogs;->ListItem:Ljava/util/ArrayList;

    new-instance v15, Lcom/android/settings_ex/samba/SambaLogs$LogItem;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings_ex/samba/SambaConfig;->setClientListItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    invoke-direct/range {v1 .. v8}, Lcom/android/settings_ex/samba/SambaLogs$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings_ex/samba/SambaConfig;->setClientListItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v12

    .line 352
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "SambaConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    if-eqz v11, :cond_0

    .line 355
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 357
    :cond_0
    if-eqz v10, :cond_1

    .line 358
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 360
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :cond_1
    :goto_1
    return-object v13

    .line 354
    :cond_2
    if-eqz v11, :cond_3

    .line 355
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 357
    :cond_3
    if-eqz v10, :cond_1

    .line 358
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 354
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_4

    .line 355
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 357
    :cond_4
    if-eqz v10, :cond_5

    .line 358
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public final run_passwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"
    .parameter "pw1"
    .parameter "pw2"

    .prologue
    .line 155
    const-string v0, "service.samrc"

    const-string v1, "repasswd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-object p1
.end method

.method public serverNotification()V
    .locals 9

    .prologue
    const v8, 0x7f0911f9

    const/4 v7, 0x0

    .line 486
    new-instance v0, Landroid/app/Notification;

    const v3, 0x7f0201e7

    iget-object v4, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 488
    .local v0, notification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 489
    .local v2, settingIntent:Landroid/content/Intent;
    const-string v3, "android.settings.SAMBA_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 491
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const/high16 v4, 0x4000

    invoke-static {v3, v7, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 493
    .local v1, pending:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const v6, 0x7f091218

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 494
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 495
    sget-boolean v3, Lcom/android/settings_ex/samba/SambaConfig;->mSambaOngoginSound:Z

    if-eqz v3, :cond_0

    .line 496
    iget v3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 498
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    sput-object v3, Lcom/android/settings_ex/samba/SambaConfig;->mNotiManager:Landroid/app/NotificationManager;

    .line 499
    sget-object v3, Lcom/android/settings_ex/samba/SambaConfig;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v3, :cond_1

    .line 500
    sget-object v3, Lcom/android/settings_ex/samba/SambaConfig;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 503
    :cond_1
    return-void
.end method

.method public setAccessListItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "intime"
    .parameter "outtime"
    .parameter "ip"
    .parameter "mode"
    .parameter "state"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 446
    const-string v1, ""

    .line 447
    .local v1, str:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/samba/SambaConfig;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/samba/SambaConfig;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, mCurrentTime:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    :cond_0
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    :goto_0
    return-object v1

    .line 457
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {p2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setClientListItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "intime"
    .parameter "outtime"
    .parameter "ip"
    .parameter "mode"
    .parameter "state"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xa

    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 435
    const-string v0, ""

    .line 436
    .local v0, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    :cond_0
    return-object v0
.end method

.method public setMediaScan(Z)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v7, 0x0

    .line 182
    sput-boolean p1, Lcom/android/settings_ex/samba/SambaConfig;->mediascanstate:Z

    .line 183
    const-string v3, "SambaConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMediaScan = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    sput-object v3, Lcom/android/settings_ex/samba/SambaConfig;->mMediaScanHandler:Landroid/os/Handler;

    .line 185
    sget-object v3, Lcom/android/settings_ex/samba/SambaConfig;->mMediaScanHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/samba/SambaConfig;->mediascanRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    if-nez p1, :cond_2

    .line 187
    sget-object v3, Lcom/android/settings_ex/samba/SambaConfig;->mMediaScanHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 188
    sget-object v3, Lcom/android/settings_ex/samba/SambaConfig;->mMediaScanHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/samba/SambaConfig;->mediascanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    sput-object v7, Lcom/android/settings_ex/samba/SambaConfig;->mMediaScanHandler:Landroid/os/Handler;

    .line 192
    :cond_0
    new-instance v0, Lcom/android/settings_ex/samba/ServerDBHelper;

    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v7, v7, v4}, Lcom/android/settings_ex/samba/ServerDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 193
    .local v0, DBHelper:Lcom/android/settings_ex/samba/ServerDBHelper;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 194
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->ListItemCurrent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE serverlog SET state=\'false\' WHERE _id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->ListItemCurrent:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/samba/SambaLogs$LogItem;

    iget-object v3, v3, Lcom/android/settings_ex/samba/SambaLogs$LogItem;->ID:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 200
    .end local v0           #DBHelper:Lcom/android/settings_ex/samba/ServerDBHelper;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #i:I
    :cond_2
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    return-void
.end method

.method public str_substring(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "str"
    .parameter "sub"

    .prologue
    .line 174
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, temp:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 176
    aget-object v2, v1, v0

    const/4 v3, 0x0

    aget-object v4, v1, v0

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    return-object v1
.end method

.method public updateLog(Ljava/lang/String;)V
    .locals 7
    .parameter "ip"

    .prologue
    const/4 v6, 0x0

    .line 285
    const-string v3, ""

    .line 286
    .local v3, sameID:Ljava/lang/String;
    new-instance v0, Lcom/android/settings_ex/samba/ServerDBHelper;

    iget-object v4, p0, Lcom/android/settings_ex/samba/SambaConfig;->ctx:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v6, v6, v5}, Lcom/android/settings_ex/samba/ServerDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 287
    .local v0, DBHelper:Lcom/android/settings_ex/samba/ServerDBHelper;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 288
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/android/settings_ex/samba/SambaLogs;->ListItemCurrent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 289
    sget-object v4, Lcom/android/settings_ex/samba/SambaLogs;->ListItemCurrent:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/samba/SambaLogs$LogItem;

    iget-object v4, v4, Lcom/android/settings_ex/samba/SambaLogs$LogItem;->IP:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    sget-object v4, Lcom/android/settings_ex/samba/SambaLogs;->ListItemCurrent:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/samba/SambaLogs$LogItem;

    iget-object v3, v4, Lcom/android/settings_ex/samba/SambaLogs$LogItem;->ID:Ljava/lang/String;

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE serverlog SET state=\'false\', outtime=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/samba/SambaConfig;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/samba/SambaConfig;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' WHERE _id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 288
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    :cond_1
    sget-object v4, Lcom/android/settings_ex/samba/SambaLogs;->mcontext:Landroid/content/Context;

    if-eqz v4, :cond_2

    .line 296
    invoke-static {}, Lcom/android/settings_ex/samba/SambaLogs;->update_client_list()V

    .line 297
    invoke-static {}, Lcom/android/settings_ex/samba/SambaLogs;->update_log_list()V

    .line 299
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 301
    return-void
.end method
