.class Lcom/sec/android/app/camera/Camera$32;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;

.field final synthetic val$filePaths:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 4459
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$32;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-object p3, p0, Lcom/sec/android/app/camera/Camera$32;->val$filePaths:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4462
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$32;->val$filePaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4463
    .local v0, filePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$32;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mShareShot:Lcom/sec/android/app/camera/ShareShot;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$3100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ShareShot;

    move-result-object v2

    const-string v3, "photo"

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/camera/ShareShot;->sendIntentForDirectShareFileTransfer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4465
    .end local v0           #filePath:Ljava/lang/String;
    :cond_0
    return-void
.end method
