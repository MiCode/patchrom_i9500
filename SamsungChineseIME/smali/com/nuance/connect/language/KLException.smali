.class public Lcom/nuance/connect/language/KLException;
.super Ljava/lang/Exception;
.source "KLException.java"


# static fields
.field public static final ACTIVITY_NOT_AVAILABLE:I = 0x66

.field public static final CORE_VERSIONS_NOT_SPECIFIED:I = 0x6a

.field public static final ILLEGAL_STATE:I = 0x6d

.field public static final INVALID_APPLICATION_ID:I = 0x6b

.field public static final INVALID_IDLE_TIMEOUT:I = 0x70

.field public static final INVALID_LIBRARY:I = 0x67

.field public static final LANGUAGE_NOT_AVAILABLE:I = 0x6e

.field public static final LANGUAGE_NOT_SUPPORTED:I = 0x6f

.field public static final NETWORK_PERMISSION_MISSING:I = 0x64

.field public static final REASON_UNSPECIFIED:I = 0x0

.field public static final SDK_LICENSE_EXPIRED:I = 0x6c

.field public static final SERVICE_NOT_AVAILABLE:I = 0x65

.field public static final SERVICE_NOT_STARTED:I = 0x69

.field public static final TOS_NOT_ACCEPTED:I = 0x68

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "reasonCode"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/language/KLException;->reason:I

    .line 66
    iput p1, p0, Lcom/nuance/connect/language/KLException;->reason:I

    .line 67
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "reasonCode"
    .parameter "description"

    .prologue
    .line 70
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/language/KLException;->reason:I

    .line 71
    iput p1, p0, Lcom/nuance/connect/language/KLException;->reason:I

    .line 72
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .parameter "reasonCode"
    .parameter "cause"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/language/KLException;->reason:I

    .line 88
    iput p1, p0, Lcom/nuance/connect/language/KLException;->reason:I

    .line 89
    iput-object p2, p0, Lcom/nuance/connect/language/KLException;->cause:Ljava/lang/Throwable;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "cause"

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 61
    iput v0, p0, Lcom/nuance/connect/language/KLException;->reason:I

    .line 76
    iput v0, p0, Lcom/nuance/connect/language/KLException;->reason:I

    .line 77
    iput-object p1, p0, Lcom/nuance/connect/language/KLException;->cause:Ljava/lang/Throwable;

    .line 78
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nuance/connect/language/KLException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KLException reason: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/language/KLException;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonCode()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/nuance/connect/language/KLException;->reason:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/nuance/connect/language/KLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/language/KLException;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/language/KLException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_0
    return-object v0
.end method
