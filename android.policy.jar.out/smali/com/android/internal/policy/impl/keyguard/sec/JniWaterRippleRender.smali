.class public Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;
.super Ljava/lang/Object;
.source "JniWaterRippleRender.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "WaterRipple"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native clearInkValue()V
.end method

.method public static native getClearInkValue()I
.end method

.method public static native initWaters([F[SIIIII)V
.end method

.method public static native move([F[FIIIIIIZFF)I
.end method

.method public static native onDraw([F[F[SIII[FIIIIFFFFFFFIFFF)V
.end method

.method public static native onInitInkGPU(ZZ)V
.end method

.method public static native onInitInkSetting(II)V
.end method

.method public static native onInitInkTextures()V
.end method

.method public static native onTouch(IIIF)V
.end method

.method public static native ripple([FIIIIFFF)V
.end method

.method public static native transferBitmapFunc1(Landroid/graphics/Bitmap;)V
.end method

.method public static native transferBitmapFunc2(Landroid/graphics/Bitmap;)V
.end method
