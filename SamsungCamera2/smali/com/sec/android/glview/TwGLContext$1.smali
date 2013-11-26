.class Lcom/sec/android/glview/TwGLContext$1;
.super Landroid/view/OrientationEventListener;
.source "TwGLContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/glview/TwGLContext;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLContext;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLContext;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 790
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 792
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 793
    const-string v1, "TwGLRenderer"

    const-string v2, "onOrientationChanged - ORIENTATION_UNKNOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    invoke-static {p1}, Lcom/sec/android/glview/TwGLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    .line 798
    .local v0, newOrientation:I
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    #getter for: Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->access$000(Lcom/sec/android/glview/TwGLContext;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 799
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    #getter for: Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->access$100(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 800
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    #getter for: Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->access$200(Lcom/sec/android/glview/TwGLContext;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 801
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    #getter for: Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->access$100(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 805
    :goto_1
    const-string v1, "TwGLRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOrientationChanged - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    #getter for: Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->access$200(Lcom/sec/android/glview/TwGLContext;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 808
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    #setter for: Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I
    invoke-static {v1, v0}, Lcom/sec/android/glview/TwGLContext;->access$002(Lcom/sec/android/glview/TwGLContext;I)I

    goto :goto_0

    .line 803
    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext$1;->this$0:Lcom/sec/android/glview/TwGLContext;

    #getter for: Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->access$100(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    goto :goto_1
.end method
