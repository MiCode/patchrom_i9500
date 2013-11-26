.class Lcom/sec/android/glview/TwGLView$3;
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
    .line 482
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView$3;->this$0:Lcom/sec/android/glview/TwGLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView$3;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLView;->access$000(Lcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView$3;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLView;->access$000(Lcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView$3;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mLongClickable:Z
    invoke-static {v0}, Lcom/sec/android/glview/TwGLView;->access$400(Lcom/sec/android/glview/TwGLView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView$3;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z
    invoke-static {v0}, Lcom/sec/android/glview/TwGLView;->access$600(Lcom/sec/android/glview/TwGLView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView$3;->this$0:Lcom/sec/android/glview/TwGLView;

    iget-object v0, v0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView$3;->this$0:Lcom/sec/android/glview/TwGLView;

    iget-object v0, v0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$3;->this$0:Lcom/sec/android/glview/TwGLView;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView$3;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLView;->access$000(Lcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView$3;->this$0:Lcom/sec/android/glview/TwGLView;

    #getter for: Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I
    invoke-static {v1}, Lcom/sec/android/glview/TwGLView;->access$800(Lcom/sec/android/glview/TwGLView;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
