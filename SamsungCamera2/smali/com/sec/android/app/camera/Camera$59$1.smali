.class Lcom/sec/android/app/camera/Camera$59$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera$59;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/Camera$59;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera$59;)V
    .locals 0

    .prologue
    .line 6725
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$59$1;->this$1:Lcom/sec/android/app/camera/Camera$59;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6728
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$59$1;->this$1:Lcom/sec/android/app/camera/Camera$59;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$59;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mEasyCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 6729
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$59$1;->this$1:Lcom/sec/android/app/camera/Camera$59;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$59;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$59$1;->this$1:Lcom/sec/android/app/camera/Camera$59;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera$59;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mEasyCameraBaseMenu:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6730
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$59$1;->this$1:Lcom/sec/android/app/camera/Camera$59;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$59;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$59$1;->this$1:Lcom/sec/android/app/camera/Camera$59;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera$59;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6731
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$59$1;->this$1:Lcom/sec/android/app/camera/Camera$59;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$59;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/MenuBase;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6735
    :goto_0
    return-void

    .line 6732
    :catch_0
    move-exception v0

    goto :goto_0
.end method
