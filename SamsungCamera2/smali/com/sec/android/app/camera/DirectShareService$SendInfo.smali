.class public Lcom/sec/android/app/camera/DirectShareService$SendInfo;
.super Ljava/lang/Object;
.source "DirectShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/DirectShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendInfo"
.end annotation


# instance fields
.field public mReceiverList:Ljava/lang/String;

.field public mRequestId:I

.field public mTransferState:Z

.field public mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/DirectShareService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/DirectShareService;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "type"
    .parameter "state"
    .parameter "receiver"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/sec/android/app/camera/DirectShareService$SendInfo;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput p2, p0, Lcom/sec/android/app/camera/DirectShareService$SendInfo;->mRequestId:I

    .line 301
    iput-object p3, p0, Lcom/sec/android/app/camera/DirectShareService$SendInfo;->mType:Ljava/lang/String;

    .line 302
    iput-boolean p4, p0, Lcom/sec/android/app/camera/DirectShareService$SendInfo;->mTransferState:Z

    .line 303
    iput-object p5, p0, Lcom/sec/android/app/camera/DirectShareService$SendInfo;->mReceiverList:Ljava/lang/String;

    .line 304
    return-void
.end method
