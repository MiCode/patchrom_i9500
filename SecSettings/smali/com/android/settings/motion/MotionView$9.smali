.class Lcom/android/settings_ex/motion/MotionView$9;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/motion/MotionView;->showUseRingDialog()V
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
    .line 347
    iput-object p1, p0, Lcom/android/settings_ex/motion/MotionView$9;->this$0:Lcom/android/settings_ex/motion/MotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView$9;->this$0:Lcom/android/settings_ex/motion/MotionView;

    const/4 v1, 0x1

    #calls: Lcom/android/settings_ex/motion/MotionView;->startTryActually(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/motion/MotionView;->access$1300(Lcom/android/settings_ex/motion/MotionView;Z)V

    .line 350
    return-void
.end method
