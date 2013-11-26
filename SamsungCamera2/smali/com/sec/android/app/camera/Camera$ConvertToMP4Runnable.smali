.class Lcom/sec/android/app/camera/Camera$ConvertToMP4Runnable;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConvertToMP4Runnable"
.end annotation


# instance fields
.field private mInFilePath:Ljava/lang/String;

.field private mOutFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "inFilePath"

    .prologue
    .line 6924
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$ConvertToMP4Runnable;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6925
    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$ConvertToMP4Runnable;->mInFilePath:Ljava/lang/String;

    .line 6926
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6930
    const-string v0, "Camera2"

    const-string v1, "Conversion starts"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6931
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ConvertToMP4Runnable;->mInFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$ConvertToMP4Runnable;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/SoundShotConverter;->convertToMP4(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera$ConvertToMP4Runnable;->mOutFilePath:Ljava/lang/String;

    .line 6932
    const-string v0, "Camera2"

    const-string v1, "Conversion ends"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 6933
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ConvertToMP4Runnable;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$ConvertToMP4Runnable;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$ConvertToMP4Runnable;->mOutFilePath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6934
    return-void
.end method
