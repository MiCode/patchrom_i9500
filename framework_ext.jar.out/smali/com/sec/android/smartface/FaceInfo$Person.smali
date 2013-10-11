.class public Lcom/sec/android/smartface/FaceInfo$Person;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/smartface/FaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Person"
.end annotation


# instance fields
.field public face:Lcom/sec/android/smartface/FaceInfo$Face;

.field public personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/sec/android/smartface/FaceInfo$Person;->face:Lcom/sec/android/smartface/FaceInfo$Face;

    .line 70
    iput-object v0, p0, Lcom/sec/android/smartface/FaceInfo$Person;->personInfo:Lcom/sec/android/smartface/FaceInfo$PersonInfo;

    .line 73
    return-void
.end method
