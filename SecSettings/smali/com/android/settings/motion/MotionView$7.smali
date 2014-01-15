.class Lcom/android/settings_ex/motion/MotionView$7;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/motion/MotionView;->showGuideDialog()V
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
    .line 333
    iput-object p1, p0, Lcom/android/settings_ex/motion/MotionView$7;->this$0:Lcom/android/settings_ex/motion/MotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView$7;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #calls: Lcom/android/settings_ex/motion/MotionView;->stopAnimation()V
    invoke-static {v0}, Lcom/android/settings_ex/motion/MotionView;->access$1200(Lcom/android/settings_ex/motion/MotionView;)V

    .line 336
    return-void
.end method
