.class Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;
.super Landroid/os/Handler;
.source "TwGLPanoramaMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 156
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 159
    :pswitch_0
    :try_start_0
    const-string v1, "TwGLPanoramaMenu"

    const-string v2, "Inactivity timer is expired. finish."

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;)Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;->onPanoramaCaptureCancelled()V

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "TwGLPanoramaMenu"

    const-string v2, "MSG arrived after the onDestro. Ignore exception"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
