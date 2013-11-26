.class Lcom/sec/android/glview/TwGLContext$hoverclass;
.super Ljava/lang/Object;
.source "TwGLContext.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "hoverclass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLContext;


# direct methods
.method private constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext$hoverclass;->this$0:Lcom/sec/android/glview/TwGLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/glview/TwGLContext;Lcom/sec/android/glview/TwGLContext$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLContext$hoverclass;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext$hoverclass;->this$0:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext$hoverclass;->this$0:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLContext;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
