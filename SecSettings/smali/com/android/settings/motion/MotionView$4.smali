.class Lcom/android/settings_ex/motion/MotionView$4;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 277
    iput-object p1, p0, Lcom/android/settings_ex/motion/MotionView$4;->this$0:Lcom/android/settings_ex/motion/MotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 279
    const-string v1, "MotionView"

    const-string v2, "showMotionDialog, positive click"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView$4;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/motion/MotionView;->access$500(Lcom/android/settings_ex/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/motion/MotionView$4;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #getter for: Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/motion/MotionView;->access$200(Lcom/android/settings_ex/motion/MotionView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView$4;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/motion/MotionView;->access$600(Lcom/android/settings_ex/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 284
    .local v0, motionState:I
    if-nez v0, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView$4;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/motion/MotionView;->access$700(Lcom/android/settings_ex/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 286
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView$4;->this$0:Lcom/android/settings_ex/motion/MotionView;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView$4;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #calls: Lcom/android/settings_ex/motion/MotionView;->startTryActually()V
    invoke-static {v1}, Lcom/android/settings_ex/motion/MotionView;->access$800(Lcom/android/settings_ex/motion/MotionView;)V

    .line 289
    return-void
.end method
