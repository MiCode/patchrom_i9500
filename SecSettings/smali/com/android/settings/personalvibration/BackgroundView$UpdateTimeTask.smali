.class Lcom/android/settings_ex/personalvibration/BackgroundView$UpdateTimeTask;
.super Ljava/util/TimerTask;
.source "BackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/personalvibration/BackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateTimeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/personalvibration/BackgroundView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/personalvibration/BackgroundView;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/settings_ex/personalvibration/BackgroundView$UpdateTimeTask;->this$0:Lcom/android/settings_ex/personalvibration/BackgroundView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/BackgroundView$UpdateTimeTask;->this$0:Lcom/android/settings_ex/personalvibration/BackgroundView;

    iget-object v0, v0, Lcom/android/settings_ex/personalvibration/BackgroundView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/personalvibration/BackgroundView$UpdateTimeTask$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/personalvibration/BackgroundView$UpdateTimeTask$1;-><init>(Lcom/android/settings_ex/personalvibration/BackgroundView$UpdateTimeTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method
