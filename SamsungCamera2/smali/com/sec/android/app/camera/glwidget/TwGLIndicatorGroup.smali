.class public Lcom/sec/android/app/camera/glwidget/TwGLIndicatorGroup;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLIndicatorGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLIndicator"


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 0
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 46
    return-void
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 53
    :cond_0
    iput-object p0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 54
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 55
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 56
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 57
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 58
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->updateAlpha()V

    .line 60
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public setVisibility(Lcom/sec/android/glview/TwGLView;I)V
    .locals 6
    .parameter "view"
    .parameter "visibility"

    .prologue
    const/4 v5, 0x1

    .line 64
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, padding:I
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 72
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 74
    .local v2, v:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 75
    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 76
    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 77
    int-to-float v3, v1

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_1

    .line 80
    .end local v2           #v:Lcom/sec/android/glview/TwGLView;
    :cond_2
    invoke-virtual {p1, v5}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 81
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->updateAlpha()V

    goto :goto_0
.end method
