.class public Landroid/nfc/NfcUtility;
.super Ljava/lang/Object;
.source "NfcUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcUtility$NfcUtilityCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NfcUtility"

.field private static nfcUtilManager:Landroid/nfc/NfcUtilityManager;

.field private static sService:Landroid/nfc/INfcUtility;

.field private static sSingleton:Landroid/nfc/NfcUtility;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcUtility;
    .locals 4
    .parameter "adapter"

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 73
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "You must pass a context to your NfcAdapter to use the NFC Utility APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    const-class v2, Landroid/nfc/NfcUtility;

    monitor-enter v2

    .line 77
    :try_start_0
    invoke-static {p0}, Landroid/nfc/NfcUtility;->initServivce(Landroid/nfc/NfcAdapter;)V

    .line 78
    sget-object v1, Landroid/nfc/NfcUtility;->sSingleton:Landroid/nfc/NfcUtility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 80
    :try_start_1
    new-instance v1, Landroid/nfc/NfcUtility;

    invoke-direct {v1}, Landroid/nfc/NfcUtility;-><init>()V

    sput-object v1, Landroid/nfc/NfcUtility;->sSingleton:Landroid/nfc/NfcUtility;

    .line 81
    new-instance v1, Landroid/nfc/NfcUtilityManager;

    invoke-direct {v1}, Landroid/nfc/NfcUtilityManager;-><init>()V

    sput-object v1, Landroid/nfc/NfcUtility;->nfcUtilManager:Landroid/nfc/NfcUtilityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    sget-object v1, Landroid/nfc/NfcUtility;->sSingleton:Landroid/nfc/NfcUtility;

    if-nez v1, :cond_1

    .line 84
    const/4 v1, 0x0

    sput-object v1, Landroid/nfc/NfcUtility;->sService:Landroid/nfc/INfcUtility;

    .line 88
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    sget-object v1, Landroid/nfc/NfcUtility;->sSingleton:Landroid/nfc/NfcUtility;

    return-object v1

    .line 83
    :catchall_0
    move-exception v1

    :try_start_3
    sget-object v3, Landroid/nfc/NfcUtility;->sSingleton:Landroid/nfc/NfcUtility;

    if-nez v3, :cond_2

    .line 84
    const/4 v3, 0x0

    sput-object v3, Landroid/nfc/NfcUtility;->sService:Landroid/nfc/INfcUtility;

    :cond_2
    throw v1

    .line 88
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private static initServivce(Landroid/nfc/NfcAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getNfcUtilityInterface()Landroid/nfc/INfcUtility;

    move-result-object v0

    .line 63
    .local v0, service:Landroid/nfc/INfcUtility;
    if-eqz v0, :cond_0

    .line 64
    sput-object v0, Landroid/nfc/NfcUtility;->sService:Landroid/nfc/INfcUtility;

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public waitSimBoot(Landroid/nfc/NfcUtility$NfcUtilityCallback;Z)Z
    .locals 4
    .parameter "callback"
    .parameter "isLock"

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, result:Z
    sget-object v2, Landroid/nfc/NfcUtility;->sService:Landroid/nfc/INfcUtility;

    if-nez v2, :cond_0

    move v2, v1

    .line 110
    :goto_0
    return v2

    .line 103
    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/NfcUtility;->nfcUtilManager:Landroid/nfc/NfcUtilityManager;

    invoke-virtual {v2, p1}, Landroid/nfc/NfcUtilityManager;->setNfcUtilityCallback(Landroid/nfc/NfcUtility$NfcUtilityCallback;)V

    .line 104
    sget-object v2, Landroid/nfc/NfcUtility;->sService:Landroid/nfc/INfcUtility;

    sget-object v3, Landroid/nfc/NfcUtility;->nfcUtilManager:Landroid/nfc/NfcUtilityManager;

    invoke-interface {v2, v3, p2}, Landroid/nfc/INfcUtility;->waitSimBootCallback(Landroid/nfc/INfcUtilityCallback;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method
