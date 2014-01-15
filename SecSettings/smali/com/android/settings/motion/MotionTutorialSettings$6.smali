.class Lcom/android/settings_ex/motion/MotionTutorialSettings$6;
.super Ljava/lang/Object;
.source "MotionTutorialSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/motion/MotionTutorialSettings;->showUseRingDialog()V
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
    .line 440
    iput-object p1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings$6;->this$0:Lcom/android/settings_ex/motion/MotionTutorialSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings$6;->this$0:Lcom/android/settings_ex/motion/MotionTutorialSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/settings_ex/motion/MotionTutorialSettings;->startTryActually(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->access$1000(Lcom/android/settings_ex/motion/MotionTutorialSettings;Z)V

    .line 443
    return-void
.end method
