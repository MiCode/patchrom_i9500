.class public Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;
.super Ljava/lang/Object;
.source "SContextContexts.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextContexts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextContexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SContextFlipCoverActionContext"
.end annotation


# instance fields
.field protected mAction:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextContexts$SContextFlipCoverActionContext;->mAction:I

    .line 304
    return-void
.end method
