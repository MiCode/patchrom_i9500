.class public final enum Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/cloud/network/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/providers/settings/cloud/network/Connection$NetworkError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

.field public static final enum ACCOUNT_CHANGED_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

.field public static final enum AUTH_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

.field public static final enum CLIENT_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

.field public static final enum NETWORK_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

.field public static final enum OK:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

.field public static final enum RESULT_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

.field public static final enum SERVER_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

.field public static final enum UNKNOWN_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

.field public static final enum URL_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->OK:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    .line 35
    new-instance v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    const-string v1, "URL_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->URL_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    .line 36
    new-instance v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->NETWORK_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    .line 37
    new-instance v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    const-string v1, "ACCOUNT_CHANGED_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->ACCOUNT_CHANGED_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    .line 38
    new-instance v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    const-string v1, "AUTH_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->AUTH_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    .line 39
    new-instance v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    const-string v1, "CLIENT_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->CLIENT_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    .line 40
    new-instance v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    const-string v1, "SERVER_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->SERVER_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    .line 41
    new-instance v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->RESULT_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    .line 42
    new-instance v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->UNKNOWN_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    .line 33
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    sget-object v1, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->OK:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->URL_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->NETWORK_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->ACCOUNT_CHANGED_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->AUTH_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->CLIENT_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->SERVER_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->RESULT_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->UNKNOWN_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->$VALUES:[Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    .locals 1
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    return-object v0
.end method

.method public static values()[Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->$VALUES:[Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    invoke-virtual {v0}, [Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    return-object v0
.end method
