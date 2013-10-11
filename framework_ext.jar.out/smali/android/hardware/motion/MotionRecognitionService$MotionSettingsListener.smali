.class public abstract Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MotionSettingsListener"
.end annotation


# instance fields
.field final mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1790
    new-instance v0, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener$1;-><init>(Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public abstract onChange()V
.end method
