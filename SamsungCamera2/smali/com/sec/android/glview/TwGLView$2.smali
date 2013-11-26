.class Lcom/sec/android/glview/TwGLView$2;
.super Ljava/lang/Object;
.source "TwGLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLView;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLView;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView$2;->this$0:Lcom/sec/android/glview/TwGLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 464
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$2;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;
    invoke-static {v1}, Lcom/sec/android/glview/TwGLView;->access$000(Lcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$2;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;
    invoke-static {v1}, Lcom/sec/android/glview/TwGLView;->access$000(Lcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$2;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mLongClickable:Z
    invoke-static {v1}, Lcom/sec/android/glview/TwGLView;->access$400(Lcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$2;->this$0:Lcom/sec/android/glview/TwGLView;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLView;->mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    if-eqz v1, :cond_2

    .line 468
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$2;->this$0:Lcom/sec/android/glview/TwGLView;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLView;->mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView$2;->this$0:Lcom/sec/android/glview/TwGLView;

    iget-object v2, v2, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    invoke-interface {v1, v2}, Lcom/sec/android/glview/TwGLView$OnLongClickListener;->onLongClick(Lcom/sec/android/glview/TwGLView;)Z

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$2;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mLongClickVibration:Z
    invoke-static {v1}, Lcom/sec/android/glview/TwGLView;->access$500(Lcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 471
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$2;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;
    invoke-static {v1}, Lcom/sec/android/glview/TwGLView;->access$000(Lcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    .line 472
    .local v0, vibrator:Landroid/os/SystemVibrator;
    const-wide/16 v1, 0x32

    const/16 v3, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/SystemVibrator;->vibrate(JI)V

    .line 474
    .end local v0           #vibrator:Landroid/os/SystemVibrator;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$2;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z
    invoke-static {v1}, Lcom/sec/android/glview/TwGLView;->access$600(Lcom/sec/android/glview/TwGLView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$2;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;
    invoke-static {v1}, Lcom/sec/android/glview/TwGLView;->access$000(Lcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView$2;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/glview/TwGLView;->access$700(Lcom/sec/android/glview/TwGLView;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView$2;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I
    invoke-static {v3}, Lcom/sec/android/glview/TwGLView;->access$800(Lcom/sec/android/glview/TwGLView;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
