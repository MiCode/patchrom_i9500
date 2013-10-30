.class public Lcom/nuance/swype/connect/security/RequestKey;
.super Ljava/lang/Object;
.source "RequestKey.java"


# static fields
.field private static requestKey:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method private static generateKey()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "R3JvbWl0LCB0aGF0J3MgaXRcISBDaGVlc2VcISBXZSdsbCBnbyBzb21ld2hlcmU"

    sput-object v0, Lcom/nuance/swype/connect/security/RequestKey;->requestKey:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/nuance/swype/connect/security/RequestKey;->requestKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/nuance/swype/connect/security/RequestKey;->generateKey()V

    .line 23
    :cond_0
    sget-object v0, Lcom/nuance/swype/connect/security/RequestKey;->requestKey:Ljava/lang/String;

    return-object v0
.end method
