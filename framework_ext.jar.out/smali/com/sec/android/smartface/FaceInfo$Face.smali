.class public Lcom/sec/android/smartface/FaceInfo$Face;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/smartface/FaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# instance fields
.field public expression:Lcom/sec/android/smartface/FaceInfo$FaceExpression;

.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public nose:Landroid/graphics/Point;

.field public pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/sec/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    .line 47
    iput-object v0, p0, Lcom/sec/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    .line 48
    iput-object v0, p0, Lcom/sec/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    .line 49
    iput-object v0, p0, Lcom/sec/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    .line 50
    iput-object v0, p0, Lcom/sec/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    .line 51
    iput-object v0, p0, Lcom/sec/android/smartface/FaceInfo$Face;->pose:Lcom/sec/android/smartface/FaceInfo$FacePoseInfo;

    .line 52
    iput-object v0, p0, Lcom/sec/android/smartface/FaceInfo$Face;->expression:Lcom/sec/android/smartface/FaceInfo$FaceExpression;

    .line 55
    return-void
.end method
