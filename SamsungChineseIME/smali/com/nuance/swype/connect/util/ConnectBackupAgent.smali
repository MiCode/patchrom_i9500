.class public Lcom/nuance/swype/connect/util/ConnectBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "ConnectBackupAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 14
    new-instance v0, Landroid/app/backup/SharedPreferencesBackupHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ConnectPrefs"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 15
    .local v0, helper:Landroid/app/backup/SharedPreferencesBackupHelper;
    const-string v1, "SwypeConnect"

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/connect/util/ConnectBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 16
    return-void
.end method
