.class Lcom/android/settings_ex/motion2013/SMotionSettings$6;
.super Ljava/lang/Object;
.source "SMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/motion2013/SMotionSettings;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/motion2013/SMotionSettings;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$6;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$6;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    iget-object v0, v0, Lcom/android/settings_ex/motion2013/SMotionSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 291
    return-void
.end method
