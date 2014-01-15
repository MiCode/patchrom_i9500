.class Lcom/android/settings_ex/motion/MotionView$2;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/motion/MotionView;->showCameraShortCutDialog()V
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
    .line 252
    iput-object p1, p0, Lcom/android/settings_ex/motion/MotionView$2;->this$0:Lcom/android/settings_ex/motion/MotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 254
    const-string v0, "MotionView"

    const-string v1, "showCameraShortCutDialog, positive click"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView$2;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/motion/MotionView;->access$100(Lcom/android/settings_ex/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/motion/MotionView$2;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #getter for: Lcom/android/settings_ex/motion/MotionView;->mCurrentDB:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/motion/MotionView;->access$200(Lcom/android/settings_ex/motion/MotionView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView$2;->this$0:Lcom/android/settings_ex/motion/MotionView;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/motion/MotionView;->access$300(Lcom/android/settings_ex/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/motion/MotionView$2;->this$0:Lcom/android/settings_ex/motion/MotionView;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 258
    return-void
.end method
