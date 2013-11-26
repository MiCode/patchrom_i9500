.class Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$2;
.super Ljava/lang/Object;
.source "TwGLDualShotMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandlerDragEnd(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;->onHandlerDragEnd(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V

    .line 135
    :cond_0
    return-void
.end method

.method public onHandlerDragStart(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;->onHandlerDragStart(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V

    .line 131
    :cond_0
    return-void
.end method
