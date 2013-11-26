.class Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu$1;
.super Ljava/lang/Object;
.source "TwGLReviewMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;
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
    .line 60
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLReviewMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 63
    return-void
.end method
