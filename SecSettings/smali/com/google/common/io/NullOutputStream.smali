.class public final Lcom/google/common/io/NullOutputStream;
.super Ljava/io/OutputStream;
.source "NullOutputStream.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .parameter "b"

    .prologue
    .line 33
    return-void
.end method

.method public write([BII)V
    .locals 0
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 37
    return-void
.end method
