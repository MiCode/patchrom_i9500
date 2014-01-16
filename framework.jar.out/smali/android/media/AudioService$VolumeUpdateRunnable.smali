.class Landroid/media/AudioService$VolumeUpdateRunnable;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService;->handleSendVolumeUpdate(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;

.field final synthetic val$flags:I

.field final synthetic val$index:I

.field final synthetic val$oldIndex:I

.field final synthetic val$streamType:I


# direct methods
.method constructor <init>(Landroid/media/AudioService;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6181
    iput-object p1, p0, Landroid/media/AudioService$VolumeUpdateRunnable;->this$0:Landroid/media/AudioService;

    iput p2, p0, Landroid/media/AudioService$VolumeUpdateRunnable;->val$streamType:I

    iput p3, p0, Landroid/media/AudioService$VolumeUpdateRunnable;->val$oldIndex:I

    iput p4, p0, Landroid/media/AudioService$VolumeUpdateRunnable;->val$index:I

    iput p5, p0, Landroid/media/AudioService$VolumeUpdateRunnable;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    iget-object v0, p0, Landroid/media/AudioService$VolumeUpdateRunnable;->this$0:Landroid/media/AudioService;

    iget v1, p0, Landroid/media/AudioService$VolumeUpdateRunnable;->val$streamType:I

    iget v2, p0, Landroid/media/AudioService$VolumeUpdateRunnable;->val$oldIndex:I

    iget v3, p0, Landroid/media/AudioService$VolumeUpdateRunnable;->val$index:I

    iget v4, p0, Landroid/media/AudioService$VolumeUpdateRunnable;->val$flags:I

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(IIII)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/media/AudioService;->access$sendVolumeUpdate(Landroid/media/AudioService;IIII)V

    .line 6185
    return-void
.end method
