.class public Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;
.super Lcom/sec/chaton/clientapi/exception/ClientAPIException;
.source "NotActivatedClientAPIException.java"


# static fields
.field private static final serialVersionUID:J = 0x5dd45b9e4e5cb0f3L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "throwable"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/chaton/clientapi/exception/ClientAPIException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method
