.class public Landroid/view/WindowManagerPolicy$WindowModeHelper;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowModeHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mode(I)I
    .locals 1
    .parameter "params"

    .prologue
    .line 270
    const/high16 v0, -0x100

    and-int/2addr v0, p0

    return v0
.end method

.method public static option(I)I
    .locals 1
    .parameter "params"

    .prologue
    .line 273
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static setWindowMode(II)I
    .locals 1
    .parameter "fromWindowMode"
    .parameter "toWindowMode"

    .prologue
    .line 279
    const/high16 v0, 0x4c

    and-int/2addr p1, v0

    .line 280
    const v0, -0x4c0001

    and-int/2addr v0, p0

    or-int/2addr p1, v0

    return p1
.end method

.method public static zonePolicy(I)I
    .locals 1
    .parameter "params"

    .prologue
    .line 276
    const/high16 v0, 0x3

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method
