.class final Landroid/app/ContextImpl$39;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$simSlot:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 602
    iput p1, p0, Landroid/app/ContextImpl$39;->val$simSlot:I

    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 604
    new-instance v0, Landroid/telephony/MultiSimTelephonyManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/app/ContextImpl$39;->val$simSlot:I

    invoke-direct {v0, v1, v2}, Landroid/telephony/MultiSimTelephonyManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
