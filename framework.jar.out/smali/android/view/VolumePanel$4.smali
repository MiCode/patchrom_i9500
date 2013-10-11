.class Landroid/view/VolumePanel$4;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 443
    invoke-static {}, Landroid/view/VolumePanel;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "******* onDismiss *******"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    invoke-static {}, Landroid/view/VolumePanel;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VolumePanel"

    const-string v1, "onDismiss: setSeekbarSlidingAnimation(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_1
    iget-object v0, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/VolumePanel;->setSeekbarSlidingAnimation(Z)V

    .line 446
    iget-object v0, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    const/4 v1, -0x1

    #setter for: Landroid/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$602(Landroid/view/VolumePanel;I)I

    .line 447
    iget-object v0, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mActiveStreamType:I
    invoke-static {v1}, Landroid/view/VolumePanel;->access$600(Landroid/view/VolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 449
    iget-object v0, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Landroid/view/VolumePanel;->access$800(Landroid/view/VolumePanel;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    iget-object v0, v0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Landroid/view/VolumePanel;->access$800(Landroid/view/VolumePanel;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 451
    :cond_2
    iget-object v0, p0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    const/4 v1, 0x0

    #setter for: Landroid/view/VolumePanel;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$802(Landroid/view/VolumePanel;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 452
    return-void
.end method
