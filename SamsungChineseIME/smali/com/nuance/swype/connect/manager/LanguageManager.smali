.class public Lcom/nuance/swype/connect/manager/LanguageManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "LanguageManager.java"


# static fields
.field public static final COMMAND_DOWNLOAD_LANGUAGE_PACK:Ljava/lang/String; = "downloadLangPack"

.field public static final COMMAND_FAMILY:Ljava/lang/String; = "language"

.field public static final COMMAND_VERSION:I = 0x6

.field public static final DOWNLOAD_LIST_STATE_AVAILABLE:I = 0x1

.field public static final DOWNLOAD_LIST_STATE_NONE:I = 0x2

.field public static final DOWNLOAD_LIST_STATE_PREF:Ljava/lang/String; = "DOWNLOAD_LIST_STATE"

.field public static final DOWNLOAD_LIST_STATE_UNKNOWN:I = 0x0

.field public static final INITIAL_LIST_ALARM:Ljava/lang/String; = "init_list_alarm"

.field public static final LANGUAGE_DISPLAY_PREFIX_PREF:Ljava/lang/String; = "LANGUAGE_DISPLAY_"

.field public static final LANGUAGE_INSTALLER_PREF:Ljava/lang/String; = "LANGUAGE_INSTALLER_DATA"

.field public static final LANGUAGE_UPGRADE_PREF:Ljava/lang/String; = "LANGUAGE_UPGRADE_DATA"

.field public static final MANAGER_NAME:Ljava/lang/String; = "language"

.field private static final MESSAGES_HANDLED:[I = null

.field public static final USER_LANGUAGES_PREF:Ljava/lang/String; = "LANGUAGES_DL"


# instance fields
.field private downloadListState:I

.field private downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

.field private languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/connect/manager/LanguageManager;->MESSAGES_HANDLED:[I

    return-void

    :array_0
    .array-data 0x4
        0x13t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0xd7t 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xd9t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 6
    .parameter "ctx"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 144
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 125
    iput v4, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->downloadListState:I

    .line 145
    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->version:I

    .line 146
    const-string v0, "language"

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->commandFamily:Ljava/lang/String;

    .line 147
    sget-object v0, Lcom/nuance/swype/connect/manager/LanguageManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->messages:[I

    .line 150
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 153
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 156
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "downloadLangPack"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 163
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 168
    new-instance v0, Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v1, "LANGUAGE_INSTALLER_DATA"

    invoke-direct {v0, p1, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    .line 169
    new-instance v0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;-><init>(Lcom/nuance/swype/connect/manager/AbstractCommandManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    .line 170
    iput-boolean v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->trackSentCommands:Z

    .line 171
    return-void

    .line 159
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 163
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private cleanUpFromFailedInstall(Ljava/lang/String;Z)V
    .locals 5
    .parameter "lang"
    .parameter "processQueue"

    .prologue
    .line 887
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 888
    if-eqz p2, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->processQueuedInstalls()V

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "FILE_LOCATION"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, filePath:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 895
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 896
    .local v1, f:Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 898
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    .end local v1           #f:Ljava/io/File;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->uninstallPackage(Ljava/lang/String;)V

    .line 906
    if-eqz p2, :cond_0

    .line 907
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->processQueuedInstalls()V

    goto :goto_0

    .line 899
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 900
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private cleanupFailedButResumableInstall(Ljava/lang/String;Z)V
    .locals 3
    .parameter "lang"
    .parameter "processQueue"

    .prologue
    .line 922
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 923
    if-eqz p2, :cond_0

    .line 924
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->processQueuedInstalls()V

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "FILE_LOCATION"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, filePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->uninstallPackage(Ljava/lang/String;)V

    .line 931
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/ConnectClient;->doesFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 932
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "FILE_LOCATION"

    invoke-virtual {v1, p1, v2, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    :cond_2
    if-eqz p2, :cond_0

    .line 936
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->processQueuedInstalls()V

    goto :goto_0
.end method

.method private cleanupFailedButResumableInstall(Ljava/lang/String;ZLcom/nuance/swype/connect/util/Command;)V
    .locals 3
    .parameter "lang"
    .parameter "processQueue"
    .parameter "command"

    .prologue
    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupFailedButResumableInstall(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/nuance/swype/connect/util/Command;->fileResumeLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 913
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/nuance/swype/connect/util/Command;->fileResumeLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v1, "FILE_LOCATION"

    iget-object v2, p3, Lcom/nuance/swype/connect/util/Command;->fileResumeLocation:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/connect/manager/LanguageManager;->cleanupFailedButResumableInstall(Ljava/lang/String;Z)V

    .line 919
    return-void
.end method

.method private clearQueuedInstalls()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 967
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    new-array v4, v9, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 970
    .local v1, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 971
    .local v2, lang:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 973
    .end local v2           #lang:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private isWaitingOnCommands(Ljava/lang/String;)Z
    .locals 5
    .parameter "lang"

    .prologue
    .line 1206
    const/4 v2, 0x0

    .line 1207
    .local v2, isWaiting:Z
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->sentCommands:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/nuance/swype/connect/util/Command;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/util/Command;

    .line 1209
    .local v0, c:Lcom/nuance/swype/connect/util/Command;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "13"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1210
    const/4 v2, 0x1

    .line 1214
    .end local v0           #c:Lcom/nuance/swype/connect/util/Command;
    :cond_1
    return v2
.end method

.method private loadPreferences()V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DOWNLOAD_LIST_STATE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->downloadListState:I

    .line 367
    return-void
.end method

.method private notifyUserOfFailedInstall(Ljava/lang/String;I)V
    .locals 4
    .parameter "lang"
    .parameter "reasonCode"

    .prologue
    .line 1189
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1190
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    const-string v3, "LANGUAGES"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    new-instance v2, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    const-string v3, "DOWNLOAD_FAILED"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setReplaceText(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    const-string v3, "DISPLAY_LANG"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setReplaceTextDecorator(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    const-string v3, "com.nuance.swype.input.DisplaySettings"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/swype/connect/util/StatusBarNotification;

    .line 1199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1200
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1201
    const-string v2, "PROP_LANGUAGE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v3, 0x9b

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 1203
    return-void
.end method

.method private processAckLanguagePackResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 6
    .parameter "response"

    .prologue
    const/4 v5, 0x1

    .line 697
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processAckLanguagePackResponse()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 698
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v3, v3, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "13"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 699
    .local v1, lang:Ljava/lang/String;
    iget v3, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v5, v3, :cond_0

    .line 700
    const-string v3, "processAckLanguagePackResponse() -- SUCCESS sending message to Swype"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 701
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 702
    .local v2, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "STEP"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 705
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v4, "filePath"

    const-string v3, "FILE_LOCATION"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v4, 0x5a

    invoke-virtual {v3, v4, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 709
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 710
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 715
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 713
    :cond_0
    invoke-direct {p0, v1, v5}, Lcom/nuance/swype/connect/manager/LanguageManager;->cleanUpFromFailedInstall(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private processDownloadLanguagePackResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 654
    const-string v3, "processDownloadLanguagePackResponse()"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 655
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v3, v3, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "13"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 656
    .local v1, lang:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 658
    .local v2, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-static {v3}, Lcom/nuance/swype/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, checksum:Ljava/lang/String;
    const-string v3, "FILE_LOCATION"

    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string v3, "CHECKSUM"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string v3, "STEP"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "language pack file path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 664
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 667
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v3, v3, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/nuance/swype/connect/manager/LanguageManager;->ackLanguagePack(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method private processGetLanguagePackResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 9
    .parameter "response"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 578
    iget-object v5, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v5, v5, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v6, "13"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 581
    .local v2, lang:Ljava/lang/String;
    iget v5, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v7, v5, :cond_2

    .line 582
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v5, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 583
    .local v4, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "TRANSACTION_ID"

    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v5, "URL"

    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v5, "STEP"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v5, v2, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 587
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 589
    const-string v5, "FILE_LOCATION"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 591
    .local v1, fileLocation:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5, v1}, Lcom/nuance/swype/connect/ConnectClient;->doesFileExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 592
    :cond_0
    const-string v1, ""

    .line 595
    :cond_1
    iget-object v5, p1, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {p0, v2, v5, v6, v1}, Lcom/nuance/swype/connect/manager/LanguageManager;->downloadLanguagePack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .end local v1           #fileLocation:Ljava/lang/String;
    .end local v4           #props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 597
    :cond_2
    iget v5, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->lastCommandRetryCount:I

    if-gt v5, v8, :cond_3

    .line 598
    invoke-direct {p0, v2, v7}, Lcom/nuance/swype/connect/manager/LanguageManager;->cleanupFailedButResumableInstall(Ljava/lang/String;Z)V

    .line 599
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x13

    invoke-virtual {v5, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 601
    .local v3, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 602
    .local v0, data:Landroid/os/Bundle;
    const-string v5, "DEFAULT_KEY"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 604
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->calcMessageSendDelay()J

    move-result-wide v6

    invoke-virtual {v5, v3, v6, v7}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 608
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processGetLanguagePackResponse() server returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " notifying user. giving up."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 610
    invoke-direct {p0, v2, v7}, Lcom/nuance/swype/connect/manager/LanguageManager;->cleanupFailedButResumableInstall(Ljava/lang/String;Z)V

    .line 612
    invoke-direct {p0, v2, v7}, Lcom/nuance/swype/connect/manager/LanguageManager;->notifyUserOfFailedInstall(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private processQueuedInstalls()V
    .locals 15

    .prologue
    .line 989
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processQueuedInstalls() isInstalling "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v12}, Lcom/nuance/swype/connect/util/InstallMetadata;->isInstalling()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 992
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v11}, Lcom/nuance/swype/connect/util/InstallMetadata;->isInstalling()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 993
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Integer;

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/nuance/swype/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 996
    .local v4, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 997
    .local v5, lang:Ljava/lang/String;
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v11, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v9

    .line 998
    .local v9, step:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processQueuedInstalls() lang: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " step: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 999
    const/4 v11, 0x1

    if-le v9, v11, :cond_2

    invoke-direct {p0, v5}, Lcom/nuance/swype/connect/manager/LanguageManager;->isWaitingOnCommands(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1064
    .end local v5           #lang:Ljava/lang/String;
    .end local v9           #step:I
    :cond_1
    :goto_0
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 1065
    return-void

    .line 1003
    .restart local v5       #lang:Ljava/lang/String;
    .restart local v9       #step:I
    :cond_2
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v12, "TRANSACTION_ID"

    invoke-virtual {v11, v5, v12}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1005
    .local v10, transactionId:Ljava/lang/String;
    const/4 v11, 0x2

    if-eq v9, v11, :cond_3

    const/4 v11, 0x3

    if-ne v9, v11, :cond_4

    .line 1008
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processQueuedInstalls() lang: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " INSTALL_REQUEST or INSTALL_DOWNLOAD . starting now."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1011
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 1012
    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    goto :goto_0

    .line 1014
    :cond_4
    const/4 v11, 0x4

    if-ne v9, v11, :cond_6

    .line 1015
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processQueuedInstalls() lang: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " INSTALL_DOWNLOAD_COMPLETE. ack now."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1019
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v12, "FILE_LOCATION"

    invoke-virtual {v11, v5, v12}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1021
    .local v2, filePath:Ljava/lang/String;
    if-eqz v2, :cond_5

    const-string v11, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1022
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1023
    .local v1, f:Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1024
    invoke-virtual {p0, v5, v10}, Lcom/nuance/swype/connect/manager/LanguageManager;->ackLanguagePack(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1027
    .end local v1           #f:Ljava/io/File;
    :cond_5
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 1028
    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1031
    .end local v2           #filePath:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x5

    if-ne v9, v11, :cond_0

    .line 1032
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processQueuedInstalls() lang: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " INSTALL_DOWNLOAD_VERIFIED. install now."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1034
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1035
    .local v0, data:Landroid/os/Bundle;
    const-string v11, "DEFAULT_KEY"

    invoke-virtual {v0, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const-string v11, "filePath"

    iget-object v12, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v13, "FILE_LOCATION"

    invoke-virtual {v12, v5, v13}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v12, 0x5a

    invoke-virtual {v11, v12, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1044
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #lang:Ljava/lang/String;
    .end local v9           #step:I
    .end local v10           #transactionId:Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Integer;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/nuance/swype/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1045
    .restart local v4       #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1046
    .local v6, nextLang:Ljava/lang/String;
    const-wide v7, 0x7fffffffffffffffL

    .line 1047
    .local v7, requestTime:J
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1048
    .restart local v5       #lang:Ljava/lang/String;
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v11, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    iget-object v11, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v12, "INSTALL_TIME"

    invoke-virtual {v11, v5, v12}, Lcom/nuance/swype/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v11, v11, v7

    if-gez v11, :cond_8

    .line 1050
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v12, "INSTALL_TIME"

    invoke-virtual {v11, v5, v12}, Lcom/nuance/swype/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    .line 1051
    move-object v6, v5

    goto :goto_1

    .line 1055
    .end local v5           #lang:Ljava/lang/String;
    :cond_9
    if-eqz v6, :cond_1

    .line 1056
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processQueuedInstalls() lang: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " INSTALL_PENDING. starting now."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p0, v6}, Lcom/nuance/swype/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processRequestLanguagesListResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 11
    .parameter "response"

    .prologue
    const/4 v10, 0x1

    .line 433
    const-string v6, "processRequestLanguagesListResponse()"

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 434
    iget v6, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v10, v6, :cond_6

    .line 435
    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v7, "43"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 436
    const-string v6, "Processing languages available for download."

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 437
    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v7, "43"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 438
    .local v2, jsonLangList:Lorg/json/JSONArray;
    if-eqz v2, :cond_5

    .line 439
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 440
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->beginTransaction()V

    .line 442
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-ge v1, v6, :cond_4

    .line 444
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 445
    .local v3, languageData:Lorg/json/JSONObject;
    const-string v6, "11"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, languageName:Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    .line 449
    const-string v6, "20"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 450
    .local v5, version:Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v7, "PROP_VERSION"

    invoke-virtual {v6, v4, v7, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v6, "102"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 454
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE"

    const-string v8, "102"

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE_VERSION"

    const-string v8, "102"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .end local v3           #languageData:Lorg/json/JSONObject;
    .end local v4           #languageName:Ljava/lang/String;
    .end local v5           #version:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    .restart local v3       #languageData:Lorg/json/JSONObject;
    .restart local v4       #languageName:Ljava/lang/String;
    .restart local v5       #version:Ljava/lang/String;
    :cond_1
    const-string v6, "103"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 459
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE"

    const-string v8, "103"

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE_VERSION"

    const-string v8, "103"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 474
    .end local v3           #languageData:Lorg/json/JSONObject;
    .end local v4           #languageName:Ljava/lang/String;
    .end local v5           #version:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 475
    .local v0, ex:Lorg/json/JSONException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure processing JSON object: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 479
    .end local v0           #ex:Lorg/json/JSONException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    throw v6

    .line 463
    .restart local v3       #languageData:Lorg/json/JSONObject;
    .restart local v4       #languageName:Ljava/lang/String;
    .restart local v5       #version:Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v6, "104"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 464
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE"

    const-string v8, "104"

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE_VERSION"

    const-string v8, "104"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 468
    :cond_3
    const-string v6, "105"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 469
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE"

    const-string v8, "105"

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v7, "PROP_CORE_VERSION"

    const-string v8, "105"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 479
    .end local v3           #languageData:Lorg/json/JSONObject;
    .end local v4           #languageName:Ljava/lang/String;
    .end local v5           #version:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    .line 500
    iput v10, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->downloadListState:I

    .line 507
    .end local v1           #i:I
    .end local v2           #jsonLangList:Lorg/json/JSONArray;
    :cond_5
    :goto_2
    new-instance v6, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v7, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "init_list_alarm"

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    const/16 v7, 0x1e

    invoke-virtual {v6, v7}, Lcom/nuance/swype/connect/util/Alarm$Builder;->seconds(I)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/util/Alarm;->cancel()V

    .line 508
    invoke-direct {p0, v10}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 510
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->managerStartComplete()V

    .line 511
    return-void

    .line 502
    .restart local v2       #jsonLangList:Lorg/json/JSONArray;
    :cond_7
    const/4 v6, 0x2

    iput v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->downloadListState:I

    goto :goto_2
.end method

.method private processSendStatusResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 748
    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_0

    .line 751
    :cond_0
    return-void
.end method

.method private saveInstalledLanguageList()V
    .locals 3

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "LANGUAGES_DL"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getInstalledPackageList()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1162
    return-void
.end method

.method private sendDownloadLanguagesStatus(Z)V
    .locals 3
    .parameter "sendIfNotStarted"

    .prologue
    .line 1137
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v2, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    if-eqz v1, :cond_1

    .line 1139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1140
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getAllMetadata()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1141
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 1144
    .end local v0           #data:Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method private sendLanguageDownloadProgress()V
    .locals 3

    .prologue
    .line 1151
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    if-eqz v1, :cond_0

    .line 1152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1153
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getAllMetadata()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1154
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x5c

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 1157
    .end local v0           #data:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private upgrade()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1105
    const/4 v4, 0x0

    .line 1106
    .local v4, previousLanguages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v6

    const-string v7, "LANGUAGE_UPGRADE_DATA"

    invoke-interface {v6, v7, v8}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1107
    .local v5, temp:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1108
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #previousLanguages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1112
    .restart local v4       #previousLanguages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/ConnectClient;->getLanguagesAvailable()Ljava/lang/String;

    move-result-object v3

    .line 1113
    .local v3, languagesAvailable:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1114
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1118
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1119
    .local v1, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1120
    .local v2, lang:Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v6, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->isAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1121
    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    goto :goto_1

    .line 1110
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #lang:Ljava/lang/String;
    .end local v3           #languagesAvailable:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #previousLanguages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4       #previousLanguages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 1123
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #lang:Ljava/lang/String;
    .restart local v3       #languagesAvailable:Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " will not be installed on upgrade.  The server reports it is no longer available"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 1127
    .end local v2           #lang:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v6

    const-string v7, "LANGUAGE_UPGRADE_DATA"

    invoke-interface {v6, v7, v8}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1128
    return-void
.end method


# virtual methods
.method public ackLanguagePack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "lang"
    .parameter "transactionId"

    .prologue
    .line 680
    const-string v2, "ackLanguagePack()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 681
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 682
    .local v1, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ack"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/LanguageManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 683
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-object p2, v0, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 684
    iget-object v2, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "10"

    const-string v4, "CHECKSUM"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v2, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "13"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 687
    return-void
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "type"
    .parameter "data"

    .prologue
    .line 359
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    .line 219
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->saveInstalledLanguageList()V

    .line 220
    invoke-super {p0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->destroy()V

    .line 221
    return-void
.end method

.method public downloadLanguagePack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "lang"
    .parameter "URL"
    .parameter "transactionId"
    .parameter "fileLocation"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 627
    const-string v1, "downloadLanguagePack()"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 629
    const-string v1, "downloadLangPack"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/LanguageManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 630
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-object p2, v0, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    .line 631
    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->method:Ljava/lang/String;

    .line 632
    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->hasBody:Z

    .line 633
    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->handleIOException:Z

    .line 634
    iput-boolean v3, v0, Lcom/nuance/swype/connect/util/Command;->notifyDownloadStatus:Z

    .line 635
    iput-boolean v3, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 636
    iget-object v1, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "13"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object v1, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "4"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iput-object p4, v0, Lcom/nuance/swype/connect/util/Command;->fileResumeLocation:Ljava/lang/String;

    .line 640
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 642
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->disableAlarm()V

    .line 643
    return-void
.end method

.method public finishLanguageInstall(Ljava/lang/String;)V
    .locals 3
    .parameter "lang"

    .prologue
    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishLanguageInstall("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 827
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 828
    .local v0, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x1f7

    const-string v1, "TRANSACTION_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendStatus(Ljava/lang/String;ILjava/lang/String;)V

    .line 829
    const-string v1, "STEP"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-string v1, "PROP_INSTALLEDVERSION"

    const-string v2, "PROP_VERSION"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string v1, "TRANSACTION_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    const-string v1, "CHECKSUM"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    const-string v1, "URL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    const-string v1, "INSTALL_TIME"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1, p1, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 837
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 838
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->saveInstalledLanguageList()V

    .line 840
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasMoreInstalls()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasMoreRemoves()Z

    move-result v1

    if-nez v1, :cond_0

    .line 841
    const-string v1, "finishLanguageInstall() -  All installs complete.  Updating device."

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 842
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->processQueuedInstalls()V

    goto :goto_0
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "session"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "messaging"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getInstalledLanguages()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1170
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1174
    .local v0, languages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1175
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v2

    const-string v3, "LANGUAGE_UPGRADE_DATA"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1176
    .local v1, upgradeLanguages:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1177
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1180
    .end local v1           #upgradeLanguages:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getLanguagePack(Ljava/lang/String;)V
    .locals 7
    .parameter "lang"

    .prologue
    const/4 v6, 0x1

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLanguagePack(lang: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 521
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Language is not available for download! ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 566
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->beginTransaction()V

    .line 530
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->isInstalling(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 531
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 532
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v3, "INSTALL_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

    .line 537
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->isInstalling()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Another language is already installing.  Adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to queue to process later."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    .line 565
    invoke-direct {p0, v6}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    goto :goto_0

    .line 541
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 543
    const-string v2, "get"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/LanguageManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 544
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v2, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "13"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v3, "PROP_CORE"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 546
    iget-object v2, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "PROP_CORE"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "PROP_CORE_VERSION"

    invoke-virtual {v4, p1, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :cond_3
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 552
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 553
    .local v1, data:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v2, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v2, p0, v3}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;-><init>(Lcom/nuance/swype/connect/manager/AbstractCommandManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    .line 556
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->init(Landroid/os/Bundle;)V

    .line 558
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v3, "PROP_DOWNLOAD_PERCENT"

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v4, v1}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->updateInitialDownloadPercent(Landroid/os/Bundle;)I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 562
    .end local v0           #command:Lcom/nuance/swype/connect/util/Command;
    .end local v1           #data:Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    throw v2
.end method

.method public init()V
    .locals 6

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->loadPreferences()V

    .line 178
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v2

    const-string v3, "LANG_AUTO_LIST"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->getIntProperty(Ljava/lang/String;)I

    move-result v1

    .line 180
    .local v1, alarmValue:I
    if-lez v1, :cond_0

    .line 181
    new-instance v2, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "init_list_alarm"

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;->seconds(I)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 182
    .local v0, alarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    .line 184
    .end local v0           #alarm:Lcom/nuance/swype/connect/util/Alarm;
    :cond_0
    return-void
.end method

.method public onCancel(Lcom/nuance/swype/connect/util/Command;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 788
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/LanguageManager;->sentCommandFilter(Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;

    .line 789
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 790
    .local v0, lang:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 791
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/nuance/swype/connect/manager/LanguageManager;->cleanupFailedButResumableInstall(Ljava/lang/String;ZLcom/nuance/swype/connect/util/Command;)V

    .line 793
    :cond_0
    return-void
.end method

.method public onDownloadStatusResponse(Lcom/nuance/swype/connect/util/Command;II)V
    .locals 4
    .parameter "command"
    .parameter "downloaded"
    .parameter "total"

    .prologue
    .line 755
    if-ltz p2, :cond_1

    .line 756
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "downloadLangPack"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Command;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    iget-object v0, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "13"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "PROP_DOWNLOAD_PERCENT"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v3, p2, p3}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->updateDownloadTotals(II)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 768
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendLanguageDownloadProgress()V

    .line 769
    return-void

    .line 763
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed to install due to insufficient storage."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->unwind()V

    goto :goto_0
.end method

.method public onFailure(Lcom/nuance/swype/connect/util/Command;)V
    .locals 4
    .parameter "command"

    .prologue
    const/4 v3, 0x0

    .line 400
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->onFailure(Lcom/nuance/swype/connect/util/Command;)V

    .line 401
    const-string v1, "get"

    iget-object v2, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 404
    .local v0, lang:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed to install."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 405
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/nuance/swype/connect/manager/LanguageManager;->cleanupFailedButResumableInstall(Ljava/lang/String;ZLcom/nuance/swype/connect/util/Command;)V

    .line 406
    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 408
    invoke-direct {p0, v0, v3}, Lcom/nuance/swype/connect/manager/LanguageManager;->notifyUserOfFailedInstall(Ljava/lang/String;I)V

    .line 410
    .end local v0           #lang:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onFileResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 389
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/LanguageManager;->sentCommandFilter(Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 390
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->canceled:Z

    if-eqz v1, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "downloadLangPack"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/LanguageManager;->processDownloadLanguagePackResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 12
    .parameter "message"

    .prologue
    const/16 v11, 0xa0

    const/4 v10, 0x1

    .line 228
    const/4 v2, 0x0

    .line 229
    .local v2, handled:Z
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 339
    :goto_0
    return v2

    .line 231
    :sswitch_0
    const-string v8, "LanguageManager.onHandleMessage(MESSAGE_COMMAND_LANGUAGE_GET)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, lang:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    .line 234
    const/4 v2, 0x1

    .line 235
    goto :goto_0

    .line 238
    .end local v4           #lang:Ljava/lang/String;
    :sswitch_1
    const-string v8, "LanguageManager.onHandleMessage(MESSAGE_COMMAND_LANGUAGE_UPGRADE)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 239
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v9, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    if-ne v8, v9, :cond_0

    iget v8, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->downloadListState:I

    if-nez v8, :cond_1

    .line 241
    :cond_0
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v9, 0x15

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(IJ)V

    .line 246
    :goto_1
    const/4 v2, 0x1

    .line 247
    goto :goto_0

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->upgrade()V

    goto :goto_1

    .line 250
    :sswitch_2
    const-string v8, "LanguageManager.onHandleMessage(MESSAGE_COMMAND_REFRESH_LANGUAGE_MANAGER)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 251
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v9, 0x6a

    invoke-virtual {v8, v9}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 252
    const/4 v2, 0x1

    .line 253
    goto :goto_0

    .line 256
    :sswitch_3
    const-string v8, "LanguageManager.onHandleMessage(MESSAGE_CLIENT_LANGUAGE_INSTALL)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, language:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message: MESSAGE_CLIENT_LANGUAGE_INSTALL -- language: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    .line 260
    const/4 v2, 0x1

    .line 261
    goto :goto_0

    .line 264
    .end local v5           #language:Ljava/lang/String;
    :sswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LanguageManager.onHandleMessage(MESSAGE_CLIENT_LANGUAGE_INSTALLED) msg.arg1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 267
    .restart local v5       #language:Ljava/lang/String;
    iget v8, p1, Landroid/os/Message;->arg1:I

    sget v9, Lcom/nuance/swype/connect/api/Integers;->STATUS_SUCCESS:I

    if-ne v8, v9, :cond_3

    .line 268
    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/manager/LanguageManager;->finishLanguageInstall(Ljava/lang/String;)V

    .line 277
    :cond_2
    :goto_2
    const/4 v2, 0x1

    .line 278
    goto/16 :goto_0

    .line 269
    :cond_3
    iget v8, p1, Landroid/os/Message;->arg1:I

    sget v9, Lcom/nuance/swype/connect/api/Integers;->STATUS_FAILED:I

    if-ne v8, v9, :cond_4

    .line 270
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed to install."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 271
    invoke-direct {p0, v5, v10}, Lcom/nuance/swype/connect/manager/LanguageManager;->cleanupFailedButResumableInstall(Ljava/lang/String;Z)V

    goto :goto_2

    .line 272
    :cond_4
    iget v8, p1, Landroid/os/Message;->arg1:I

    sget v9, Lcom/nuance/swype/connect/api/Integers;->STATUS_EXCEPTION:I

    if-ne v8, v9, :cond_2

    .line 274
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed to install."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->unwind()V

    goto :goto_2

    .line 281
    .end local v5           #language:Ljava/lang/String;
    :sswitch_5
    const-string v8, "LanguageManager.onHandleMessage(MESSAGE_CLIENT_LANGUAGE_UNINSTALL)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 283
    .restart local v5       #language:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/manager/LanguageManager;->uninstallLanguage(Ljava/lang/String;)V

    .line 284
    const/4 v2, 0x1

    .line 285
    goto/16 :goto_0

    .line 288
    .end local v5           #language:Ljava/lang/String;
    :sswitch_6
    const-string v8, "LanguageManager.onHandleMessage(MESSAGE_REMOVE_LANGUAGES)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, languages:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/nuance/swype/connect/manager/LanguageManager;->uninstallLanguages(Ljava/lang/String;)V

    .line 291
    const/4 v2, 0x1

    .line 292
    goto/16 :goto_0

    .line 295
    .end local v6           #languages:Ljava/lang/String;
    :sswitch_7
    const-string v8, "LanguageManager.onHandleMessage(MESSAGE_CLIENT_LANGUAGE_DOWNLOAD_CANCEL)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 297
    .restart local v4       #lang:Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v8, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 298
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v8, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v7

    .line 299
    .local v7, step:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Lang: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " step: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 300
    if-ne v7, v10, :cond_5

    .line 301
    const/4 v8, 0x0

    invoke-direct {p0, v4, v8}, Lcom/nuance/swype/connect/manager/LanguageManager;->cleanupFailedButResumableInstall(Ljava/lang/String;Z)V

    .line 302
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v8, v11, v4}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 304
    invoke-direct {p0, v10}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 305
    const/4 v2, 0x1

    .line 306
    goto/16 :goto_0

    .line 309
    :cond_5
    if-le v7, v10, :cond_8

    const/4 v8, 0x7

    if-ge v7, v8, :cond_8

    .line 311
    const/4 v1, 0x1

    .line 312
    .local v1, cleanupNow:Z
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->sentCommands:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/nuance/swype/connect/util/Command;>;>;"
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 313
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/util/Command;

    .line 314
    .local v0, c:Lcom/nuance/swype/connect/util/Command;
    if-eqz v0, :cond_6

    iget-object v8, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v9, "13"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v9, "13"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 317
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageManager;->cancelCommand(Lcom/nuance/swype/connect/util/Command;)Z

    move-result v8

    and-int/2addr v1, v8

    .line 319
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "marking command canceled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 323
    .end local v0           #c:Lcom/nuance/swype/connect/util/Command;
    :cond_7
    if-eqz v1, :cond_9

    .line 324
    invoke-direct {p0, v4, v10}, Lcom/nuance/swype/connect/manager/LanguageManager;->cleanupFailedButResumableInstall(Ljava/lang/String;Z)V

    .line 331
    .end local v1           #cleanupNow:Z
    .end local v3           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/nuance/swype/connect/util/Command;>;>;"
    .end local v7           #step:I
    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v8, v11, v4}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 333
    invoke-direct {p0, v10}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 335
    const/4 v2, 0x1

    .line 336
    goto/16 :goto_0

    .line 326
    .restart local v1       #cleanupNow:Z
    .restart local v3       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/nuance/swype/connect/util/Command;>;>;"
    .restart local v7       #step:I
    :cond_9
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/16 v9, 0x8

    invoke-virtual {v8, v4, v9}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    goto :goto_4

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3e -> :sswitch_6
        0xd7 -> :sswitch_3
        0xd8 -> :sswitch_4
        0xd9 -> :sswitch_5
        0x111 -> :sswitch_7
    .end sparse-switch
.end method

.method public onIOExceptionResponse(Lcom/nuance/swype/connect/util/Command;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 773
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/LanguageManager;->sentCommandFilter(Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;

    .line 774
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "downloadLangPack"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Command;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 777
    .local v0, lang:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 778
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/nuance/swype/connect/manager/LanguageManager;->cleanupFailedButResumableInstall(Ljava/lang/String;ZLcom/nuance/swype/connect/util/Command;)V

    .line 779
    iget-boolean v1, p1, Lcom/nuance/swype/connect/util/Command;->canceled:Z

    if-nez v1, :cond_0

    .line 780
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    .line 784
    .end local v0           #lang:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onNetworkTimeout(Lcom/nuance/swype/connect/util/Command;)V
    .locals 4
    .parameter "command"

    .prologue
    .line 797
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/LanguageManager;->sentCommandFilter(Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;

    .line 799
    iget-object v2, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    const-string v3, "downloadLangPack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 800
    iget-object v2, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "13"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 801
    .local v1, lang:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 802
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1}, Lcom/nuance/swype/connect/manager/LanguageManager;->cleanupFailedButResumableInstall(Ljava/lang/String;ZLcom/nuance/swype/connect/util/Command;)V

    .line 806
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 807
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v3, 0xa2

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 813
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #lang:Ljava/lang/String;
    :goto_0
    return-void

    .line 811
    :cond_1
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->onNetworkTimeout(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 371
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/LanguageManager;->sentCommandFilter(Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 372
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->canceled:Z

    if-eqz v1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "list"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/LanguageManager;->processRequestLanguagesListResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "get"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 379
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/LanguageManager;->processGetLanguagePackResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 380
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "ack"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 381
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/LanguageManager;->processAckLanguagePackResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 382
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "status"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/LanguageManager;->processSendStatusResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0
.end method

.method public postUpgrade()V
    .locals 4

    .prologue
    .line 1089
    const-string v0, "LanguageManager.postUpgrade()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->downloadListState:I

    if-nez v0, :cond_1

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x15

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(IJ)V

    .line 1096
    :goto_0
    return-void

    .line 1094
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->upgrade()V

    goto :goto_0
.end method

.method public prepareForUpgrade()V
    .locals 6

    .prologue
    .line 1073
    const-string v3, "prepareForUpgrade()"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1074
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v3

    const-string v4, "LANGUAGE_UPGRADE_DATA"

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->getInstalledPackageList()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1078
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    monitor-enter v4

    .line 1079
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v1

    .line 1080
    .local v1, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->clear()V

    .line 1081
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1083
    .local v2, lang:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v4, 0x5b

    invoke-virtual {v3, v4, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    goto :goto_0

    .line 1081
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #lang:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1085
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public rebind()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "LanguageManager.rebind()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->getManagerStartState()Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 214
    :cond_0
    return-void
.end method

.method public requestLanguagesList()V
    .locals 4

    .prologue
    .line 418
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 419
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "12"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v2, "list"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/LanguageManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 421
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 422
    return-void
.end method

.method public sendStatus(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "lang"
    .parameter "status"
    .parameter "transactionId"

    .prologue
    .line 731
    const-string v1, "SendStatus()"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 732
    const-string v1, "status"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/LanguageManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 733
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v1, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "13"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v1, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "6"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    if-eqz p3, :cond_0

    .line 736
    iput-object p3, v0, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 738
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 739
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 188
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->clearQueuedInstalls()V

    .line 193
    iget v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->downloadListState:I

    if-nez v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->requestLanguagesList()V

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LanguageManager;->managerStartComplete()V

    goto :goto_0
.end method

.method public uninstallLanguage(Ljava/lang/String;)V
    .locals 2
    .parameter "language"

    .prologue
    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uninstallLanguage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->uninstallPackage(Ljava/lang/String;)V

    .line 857
    const/16 v0, 0x1f8

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendStatus(Ljava/lang/String;ILjava/lang/String;)V

    .line 858
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 859
    return-void
.end method

.method public uninstallLanguages(Ljava/lang/String;)V
    .locals 6
    .parameter "languages"

    .prologue
    .line 868
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstallLanguages("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 869
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 870
    .local v2, lang:Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v4, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->uninstallPackage(Ljava/lang/String;)V

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 872
    .end local v2           #lang:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 873
    return-void
.end method

.method public unwind()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 945
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 949
    .local v2, installing:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 950
    .local v3, lang:Ljava/lang/String;
    invoke-direct {p0, v3, v7}, Lcom/nuance/swype/connect/manager/LanguageManager;->cleanUpFromFailedInstall(Ljava/lang/String;Z)V

    goto :goto_0

    .line 953
    .end local v3           #lang:Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 954
    .local v0, extras:Landroid/os/Bundle;
    const-string v4, "DEFAULT_KEY"

    const-string v5, "LANGUAGES"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    new-instance v4, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/LanguageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v4, v5}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    const-string v5, "INSUFFICIENT_SPACE"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v4

    const-string v5, "com.nuance.swype.input.DisplaySettings"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/swype/connect/util/StatusBarNotification;

    .line 962
    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/manager/LanguageManager;->sendDownloadLanguagesStatus(Z)V

    .line 963
    return-void
.end method
