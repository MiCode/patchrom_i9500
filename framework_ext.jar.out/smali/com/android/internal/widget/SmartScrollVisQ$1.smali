.class Lcom/android/internal/widget/SmartScrollVisQ$1;
.super Ljava/lang/Object;
.source "SmartScrollVisQ.java"

# interfaces
.implements Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SmartScrollVisQ;->InitFManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SmartScrollVisQ;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SmartScrollVisQ;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/internal/widget/SmartScrollVisQ$1;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/sec/android/smartface/FaceInfo;I)V
    .locals 5
    .parameter "data"
    .parameter "service_type"

    .prologue
    .line 153
    iget v1, p1, Lcom/sec/android/smartface/FaceInfo;->processStatus:I

    .line 154
    .local v1, processStatus:I
    iget v0, p1, Lcom/sec/android/smartface/FaceInfo;->guideDir:I

    .line 156
    .local v0, guideDirction:I
    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ$1;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget v2, v2, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevStatus:I

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ$1;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget v2, v2, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevStatus:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ$1;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget v2, v2, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevDirection:I

    if-eq v2, v0, :cond_1

    .line 157
    :cond_0
    const-string v2, "SmartScrollVisQ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " processStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": guideDirction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ$1;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iput v1, v2, Lcom/android/internal/widget/SmartScrollVisQ;->mPrevStatus:I

    .line 159
    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ$1;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget-boolean v2, v2, Lcom/android/internal/widget/SmartScrollVisQ;->mVisQEnabled:Z

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ$1;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/widget/SmartScrollVisQ;->setStatus(II)V

    .line 163
    :cond_1
    return-void
.end method
