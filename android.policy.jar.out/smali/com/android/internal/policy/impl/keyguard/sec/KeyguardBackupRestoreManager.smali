.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;
.super Ljava/lang/Object;
.source "KeyguardBackupRestoreManager.java"


# static fields
.field public static final LAUNCH_BACKUP_LOCKSCREEN:Ljava/lang/String; = "android.keyguard.intent.action.LAUNCH_BACKUP_LOCKSCREEN"

.field public static final LAUNCH_RESTORE_LOCKSCREEN:Ljava/lang/String; = "android.keyguard.intent.action.LAUNCH_RESTORE_LOCKSCREEN"

.field public static final REQUEST_BACKUP_LOCKSCREEN:Ljava/lang/String; = "android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

.field public static final REQUEST_RESTORE_LOCKSCREEN:Ljava/lang/String; = "android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

.field public static final TAG:Ljava/lang/String; = "KeyguardBackupRestoreManager"

.field private static sKeyguardBackupRestoreManager:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    const-string v0, "KeyguardBackupRestoreManager"

    const-string v1, "KeyguardBackupRestoreManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    const-string v0, "KeyguardBackupRestoreManager"

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;->sKeyguardBackupRestoreManager:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;->sKeyguardBackupRestoreManager:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;

    .line 58
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;->sKeyguardBackupRestoreManager:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;

    return-object v0
.end method


# virtual methods
.method public launchKeyguardBackuporRestore(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "isBackup"
    .parameter "basepath"
    .parameter "source"

    .prologue
    .line 69
    const-string v2, "KeyguardBackupRestoreManager"

    const-string v3, "launchKeyguardBackuporRestore()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 72
    const-string v2, "android.keyguard.intent.action.LAUNCH_BACKUP_LOCKSCREEN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v1, options:Landroid/os/Bundle;
    const-string v2, "SAVE_PATH"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "SOURCE"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 83
    return-void

    .line 74
    .end local v1           #options:Landroid/os/Bundle;
    :cond_0
    const-string v2, "android.keyguard.intent.action.LAUNCH_RESTORE_LOCKSCREEN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public registerKeyguardBackupRestoreReceiver(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    return-void
.end method
