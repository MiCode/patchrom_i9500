.class public final Landroid/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# instance fields
.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private mFirst:Z

.field private mIsBinded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v3, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    .line 43
    iput-boolean v3, p0, Landroid/nfc/NfcManager;->mFirst:Z

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context not associated with any application (using a mock context?)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 57
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/nfc/NfcManager;->mIsBinded:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 63
    iput-boolean v3, p0, Landroid/nfc/NfcManager;->mFirst:Z

    .line 64
    return-void

    .line 58
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const/4 v0, 0x0

    .line 60
    .restart local v0       #adapter:Landroid/nfc/NfcAdapter;
    iput-boolean v3, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    goto :goto_0
.end method


# virtual methods
.method public bindNfcService(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 70
    iget-boolean v2, p0, Landroid/nfc/NfcManager;->mFirst:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    if-eqz v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 74
    if-nez p1, :cond_2

    .line 75
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context not associated with any application (using a mock context?)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_2
    :try_start_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    :goto_1
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 84
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    goto :goto_0

    .line 80
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const/4 v0, 0x0

    .restart local v0       #adapter:Landroid/nfc/NfcAdapter;
    goto :goto_1
.end method

.method public getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/nfc/NfcManager;->mFirst:Z

    .line 95
    iget-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method public setPollDuration(I)I
    .locals 1
    .parameter "pollDurationMs"

    .prologue
    const/4 v0, 0x0

    return v0
.end method
