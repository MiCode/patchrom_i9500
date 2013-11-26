.class Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu$2;
.super Ljava/lang/Object;
.source "TwGLReviewMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->showReviewRecodingImage(Landroid/graphics/Bitmap;IZILandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 145
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->content_uri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->mReviewTimeOutCallback:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->content_uri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 153
    const-string v1, "from-Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 155
    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    move v1, v2

    .line 159
    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
