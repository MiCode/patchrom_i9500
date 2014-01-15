.class Lcom/android/settings_ex/motion/MotionTutorialSettings$5;
.super Ljava/lang/Object;
.source "MotionTutorialSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/motion/MotionTutorialSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/motion/MotionTutorialSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings$5;->this$0:Lcom/android/settings_ex/motion/MotionTutorialSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings$5;->this$0:Lcom/android/settings_ex/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings_ex/motion/MotionTutorialSettings;->stopAnimation()V
    invoke-static {v0}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->access$900(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V

    .line 424
    return-void
.end method
