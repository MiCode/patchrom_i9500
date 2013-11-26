.class Lcom/sec/android/app/camera/ShareShot$6$1;
.super Ljava/util/TimerTask;
.source "ShareShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ShareShot$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/ShareShot$6;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ShareShot$6;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$6$1;->this$1:Lcom/sec/android/app/camera/ShareShot$6;

    iput-object p2, p0, Lcom/sec/android/app/camera/ShareShot$6$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 625
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$6$1;->this$1:Lcom/sec/android/app/camera/ShareShot$6;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot$6;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$6$1;->val$intent:Landroid/content/Intent;

    const/16 v2, 0x7d6

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 626
    return-void
.end method
