.class public Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;
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
    name = "SContextPutDownMotionContext"
.end annotation


# instance fields
.field protected mAction:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextContexts$SContextPutDownMotionContext;->mAction:I

    .line 342
    return-void
.end method
