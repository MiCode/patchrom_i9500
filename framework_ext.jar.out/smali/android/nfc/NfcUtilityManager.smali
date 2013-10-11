.class public final Landroid/nfc/NfcUtilityManager;
.super Landroid/nfc/INfcUtilityCallback$Stub;
.source "NfcUtilityManager.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NfcUtilityManager"

.field static nfcUtilityCallback:Landroid/nfc/NfcUtility$NfcUtilityCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/nfc/INfcUtilityCallback$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/nfc/NfcUtility$NfcUtilityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/nfc/INfcUtilityCallback$Stub;-><init>()V

    .line 33
    sput-object p1, Landroid/nfc/NfcUtilityManager;->nfcUtilityCallback:Landroid/nfc/NfcUtility$NfcUtilityCallback;

    .line 34
    return-void
.end method


# virtual methods
.method public SimBootComplete()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/nfc/NfcUtilityManager;->nfcUtilityCallback:Landroid/nfc/NfcUtility$NfcUtilityCallback;

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Landroid/nfc/NfcUtilityManager;->nfcUtilityCallback:Landroid/nfc/NfcUtility$NfcUtilityCallback;

    invoke-interface {v0}, Landroid/nfc/NfcUtility$NfcUtilityCallback;->SimBootComplete()V

    .line 50
    :cond_0
    return-void
.end method

.method public setNfcUtilityCallback(Landroid/nfc/NfcUtility$NfcUtilityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 37
    sput-object p1, Landroid/nfc/NfcUtilityManager;->nfcUtilityCallback:Landroid/nfc/NfcUtility$NfcUtilityCallback;

    .line 38
    return-void
.end method
