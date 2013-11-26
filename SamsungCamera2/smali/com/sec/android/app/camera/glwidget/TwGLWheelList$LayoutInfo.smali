.class public Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;
.super Ljava/lang/Object;
.source "TwGLWheelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLWheelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutInfo"
.end annotation


# instance fields
.field public mAlpha:F

.field public mScale:F

.field public mX:F

.field public mY:F

.field public mZ:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    .line 776
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    .line 777
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    .line 778
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    .line 779
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    .line 780
    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "scale"
    .parameter "alpha"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    .line 776
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    .line 777
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    .line 778
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    .line 779
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    .line 783
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    .line 784
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    .line 785
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    .line 786
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    .line 787
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    .line 788
    return-void
.end method
