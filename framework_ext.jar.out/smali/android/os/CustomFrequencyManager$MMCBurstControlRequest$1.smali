.class Landroid/os/CustomFrequencyManager$MMCBurstControlRequest$1;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest$1;->this$1:Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 472
    const-string v0, "CustomFrequencyManager"

    const-string v1, "MMCBurstControlRequest:: mMCBurstModeReleaser -> cancelFrequencyRequest."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest$1;->this$1:Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;->cancelFrequencyRequest()V

    .line 474
    return-void
.end method
