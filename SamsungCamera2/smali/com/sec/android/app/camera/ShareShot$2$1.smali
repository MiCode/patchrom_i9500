.class Lcom/sec/android/app/camera/ShareShot$2$1;
.super Ljava/lang/Object;
.source "ShareShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ShareShot$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/ShareShot$2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ShareShot$2;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$2$1;->this$1:Lcom/sec/android/app/camera/ShareShot$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$2$1;->this$1:Lcom/sec/android/app/camera/ShareShot$2;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot$2;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$2$1;->this$1:Lcom/sec/android/app/camera/ShareShot$2;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot$2;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$2$1;->this$1:Lcom/sec/android/app/camera/ShareShot$2;

    iget-object v2, v2, Lcom/sec/android/app/camera/ShareShot$2;->this$0:Lcom/sec/android/app/camera/ShareShot;

    #getter for: Lcom/sec/android/app/camera/ShareShot;->mActiveIp:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/ShareShot;->access$000(Lcom/sec/android/app/camera/ShareShot;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->activateUser(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
