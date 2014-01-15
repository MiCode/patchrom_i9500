.class Lcom/android/settings_ex/motion2013/SMotionGuideHub$3;
.super Ljava/lang/Object;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/motion2013/SMotionGuideHub;->showMotionDialog()V
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
    .line 947
    iput-object p1, p0, Lcom/android/settings_ex/motion2013/SMotionGuideHub$3;->this$0:Lcom/android/settings_ex/motion2013/SMotionGuideHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 949
    const-string v0, "SMotionGuideHub"

    const-string v1, "use motion dismiss"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    return-void
.end method
