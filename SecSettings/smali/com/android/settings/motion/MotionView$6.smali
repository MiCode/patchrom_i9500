.class Lcom/android/settings_ex/motion/MotionView$6;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 317
    iput-object p1, p0, Lcom/android/settings_ex/motion/MotionView$6;->this$0:Lcom/android/settings_ex/motion/MotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 319
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView$6;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/motion/MotionView;->access$900(Lcom/android/settings_ex/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 322
    .local v0, motionState:I
    if-nez v0, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView$6;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #calls: Lcom/android/settings_ex/motion/MotionView;->showMotionDialog()V
    invoke-static {v1}, Lcom/android/settings_ex/motion/MotionView;->access$1000(Lcom/android/settings_ex/motion/MotionView;)V

    .line 329
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView$6;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/motion/MotionView;->access$1100(Lcom/android/settings_ex/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionView$6;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #getter for: Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/motion/MotionView;->access$200(Lcom/android/settings_ex/motion/MotionView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView$6;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #calls: Lcom/android/settings_ex/motion/MotionView;->startTryActually()V
    invoke-static {v1}, Lcom/android/settings_ex/motion/MotionView;->access$800(Lcom/android/settings_ex/motion/MotionView;)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView$6;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #calls: Lcom/android/settings_ex/motion/MotionView;->showMotionDialog()V
    invoke-static {v1}, Lcom/android/settings_ex/motion/MotionView;->access$1000(Lcom/android/settings_ex/motion/MotionView;)V

    goto :goto_0
.end method
