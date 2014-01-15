.class Lcom/android/settings_ex/motion2013/SMotionGuideHub$4;
.super Ljava/lang/Object;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/motion2013/SMotionGuideHub;->showUseRingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/motion2013/SMotionGuideHub;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/motion2013/SMotionGuideHub;)V
    .locals 0

    .prologue
    .line 965
    iput-object p1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub$4;->this$0:Lcom/android/settings_ex/motion2013/SMotionGuideHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub$4;->this$0:Lcom/android/settings_ex/motion2013/SMotionGuideHub;

    const/4 v1, 0x0

    #calls: Lcom/android/settings_ex/motion2013/SMotionGuideHub;->startTurnOverTryActually(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/motion2013/SMotionGuideHub;->access$1000(Lcom/android/settings_ex/motion2013/SMotionGuideHub;Z)V

    .line 968
    return-void
.end method
