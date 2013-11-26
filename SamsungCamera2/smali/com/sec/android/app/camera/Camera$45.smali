.class Lcom/sec/android/app/camera/Camera$45;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    .prologue
    .line 5892
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$45;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 5894
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$45;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->hideDlg(I)V

    .line 5895
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$45;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 5896
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$45;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-boolean v1, v0, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    .line 5901
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$45;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShareMode(I)V

    .line 5903
    return-void
.end method
