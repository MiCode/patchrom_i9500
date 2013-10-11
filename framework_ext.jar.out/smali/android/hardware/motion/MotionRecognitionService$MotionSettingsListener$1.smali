.class Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener$1;
.super Landroid/database/ContentObserver;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1790
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener$1;->this$0:Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 1792
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener$1;->this$0:Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;

    invoke-virtual {v0}, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->onChange()V

    .line 1793
    return-void
.end method
