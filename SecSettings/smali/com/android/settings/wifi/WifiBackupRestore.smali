.class public Lcom/android/settings_ex/wifi/WifiBackupRestore;
.super Landroid/content/BroadcastReceiver;
.source "WifiBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;
    }
.end annotation


# static fields
.field static final ACTION_REQUEST_BACKUP:Ljava/lang/String; = "android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

.field static final ACTION_REQUEST_RESTORE:Ljava/lang/String; = "android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

.field static final ACTION_RESPONSE_BACKUP:Ljava/lang/String; = "android.intent.action.RESPONSE_BACKUP_WIFIWPACONF"

.field static final ACTION_RESPONSE_RESTORE:Ljava/lang/String; = "android.intent.action.RESPONSE_RESTORE_WIFIWPACONF"

.field static final BACK_UP:I = 0x0

.field static final CANCEL:I = 0x2

.field static final CONF_FILE_NAME:Ljava/lang/String; = "wpa_supplicant.conf"

.field static final CONF_FILE_PATH:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final EXTRA_ACTION:Ljava/lang/String; = "ACTION"

.field static final EXTRA_ERR_CODE:Ljava/lang/String; = "ERR_CODE"

.field static final EXTRA_REQ_SIZE:Ljava/lang/String; = "REQ_SIZE"

.field static final EXTRA_RESULT:Ljava/lang/String; = "RESULT"

.field static final EXTRA_SAVE_PATH:Ljava/lang/String; = "SAVE_PATH"

.field static final EXTRA_SESSION_KEY:Ljava/lang/String; = "SESSION_KEY"

.field static final EXTRA_SOURCE:Ljava/lang/String; = "SOURCE"

.field static final FAIL:I = 0x1

.field static final FINISH:I = 0x1

.field static final INVALID_DATA:I = 0x3

.field static final OK:I = 0x0

.field static final RESTORE:I = 0x1

.field static final START:I = 0x0

.field static final STORAGE_FULL:I = 0x2

.field static final SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "WifiBackupRestore"

.field static final TEMP_FILE_PATH:Ljava/lang/String; = "/data/misc/wifi/temp.conf"

.field static final UNKNOWN_ERROR:I = 0x1

.field static final XML_FILE_NAME:Ljava/lang/String; = "wifi_wpaconf.xml"

.field private static cipher:Ljavax/crypto/Cipher;

.field private static key:Ljavax/crypto/spec/SecretKeySpec;


# instance fields
.field mOption:I

.field mSessionKey:Ljava/lang/String;

.field mSource:Ljava/lang/String;

.field xmlConf:Ljava/lang/String;

.field xmlModel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiBackupRestore;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 122
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiBackupRestore;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljavax/crypto/Cipher;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/settings_ex/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method static synthetic access$102(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/android/settings_ex/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object p0
.end method

.method static synthetic access$200()Ljavax/crypto/spec/SecretKeySpec;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/settings_ex/wifi/WifiBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-object v0
.end method

.method static synthetic access$202(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/android/settings_ex/wifi/WifiBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiBackupRestore;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiBackupRestore"

    const-string v3, "request backup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;-><init>(Lcom/android/settings_ex/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    .local v1, kiesThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 120
    .end local v1           #kiesThread:Ljava/lang/Thread;
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    const-string v2, "android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiBackupRestore;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiBackupRestore"

    const-string v3, "request restore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings_ex/wifi/WifiBackupRestore$WifiBRthread;-><init>(Lcom/android/settings_ex/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 117
    .restart local v1       #kiesThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
