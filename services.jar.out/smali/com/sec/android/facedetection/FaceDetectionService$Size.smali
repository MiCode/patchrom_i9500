.class public Lcom/sec/android/facedetection/FaceDetectionService$Size;
.super Ljava/lang/Object;
.source "FaceDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/facedetection/FaceDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    iput p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$Size;->width:I

    .line 880
    iput p2, p0, Lcom/sec/android/facedetection/FaceDetectionService$Size;->height:I

    .line 881
    return-void
.end method
