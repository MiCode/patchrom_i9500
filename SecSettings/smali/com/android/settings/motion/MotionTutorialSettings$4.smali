.class Lcom/android/settings_ex/motion/MotionTutorialSettings$4;
.super Ljava/lang/Object;
.source "MotionTutorialSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 405
    iput-object p1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings$4;->this$0:Lcom/android/settings_ex/motion/MotionTutorialSettings;

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

    .line 407
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings$4;->this$0:Lcom/android/settings_ex/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->access$600(Lcom/android/settings_ex/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 410
    .local v0, motionState:I
    if-nez v0, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings$4;->this$0:Lcom/android/settings_ex/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings_ex/motion/MotionTutorialSettings;->showMotionDialog()V
    invoke-static {v1}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->access$700(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V

    .line 417
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings$4;->this$0:Lcom/android/settings_ex/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->access$800(Lcom/android/settings_ex/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings$4;->this$0:Lcom/android/settings_ex/motion/MotionTutorialSettings;

    #getter for: Lcom/android/settings_ex/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->access$200(Lcom/android/settings_ex/motion/MotionTutorialSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings$4;->this$0:Lcom/android/settings_ex/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings_ex/motion/MotionTutorialSettings;->startTryActually()V
    invoke-static {v1}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->access$500(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V

    goto :goto_0

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionTutorialSettings$4;->this$0:Lcom/android/settings_ex/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings_ex/motion/MotionTutorialSettings;->showMotionDialog()V
    invoke-static {v1}, Lcom/android/settings_ex/motion/MotionTutorialSettings;->access$700(Lcom/android/settings_ex/motion/MotionTutorialSettings;)V

    goto :goto_0
.end method
