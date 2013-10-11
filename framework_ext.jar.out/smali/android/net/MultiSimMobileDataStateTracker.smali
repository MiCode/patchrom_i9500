.class public Landroid/net/MultiSimMobileDataStateTracker;
.super Landroid/net/MobileDataStateTracker;
.source "MultiSimMobileDataStateTracker.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "netType"
    .parameter "tag"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "netType"
    .parameter "tag"
    .parameter "simSlot"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;)V

    .line 66
    return-void
.end method
