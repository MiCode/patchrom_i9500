.class public Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;
.super Lcom/sec/chaton/clientapi/exception/ClientAPIException;
.source "IllegalArgumentClientAPIException.java"


# static fields
.field private static final serialVersionUID:J = -0x6d1f417ec2b6d10bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "throwable"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    return-void
.end method
