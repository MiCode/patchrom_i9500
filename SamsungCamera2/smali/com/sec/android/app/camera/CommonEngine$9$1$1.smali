.class Lcom/sec/android/app/camera/CommonEngine$9$1$1;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CommonEngine$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/camera/CommonEngine$9$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CommonEngine$9$1;)V
    .locals 0

    .prologue
    .line 5796
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$9$1$1;->this$2:Lcom/sec/android/app/camera/CommonEngine$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5798
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$9$1$1;->this$2:Lcom/sec/android/app/camera/CommonEngine$9$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine$9$1;->this$1:Lcom/sec/android/app/camera/CommonEngine$9;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0a0161

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5799
    return-void
.end method
