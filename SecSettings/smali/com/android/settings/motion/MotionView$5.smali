.class Lcom/android/settings_ex/motion/MotionView$5;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/motion/MotionView;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/motion/MotionView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/motion/MotionView;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/settings_ex/motion/MotionView$5;->this$0:Lcom/android/settings_ex/motion/MotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 296
    const-string v0, "MotionView"

    const-string v1, "use motion dismiss"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView$5;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #calls: Lcom/android/settings_ex/motion/MotionView;->updateCheckedUI()V
    invoke-static {v0}, Lcom/android/settings_ex/motion/MotionView;->access$400(Lcom/android/settings_ex/motion/MotionView;)V

    .line 298
    return-void
.end method
