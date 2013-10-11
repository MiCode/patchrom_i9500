.class Landroid/hardware/scontext/SContextService$2;
.super Ljava/lang/Object;
.source "SContextService.java"

# interfaces
.implements Landroid/hardware/sensorhub/SensorHubEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextService;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSensorHubData(Landroid/hardware/sensorhub/SensorHubEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 768
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService;->access$1700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    aget v2, v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mAngle:I

    .line 770
    iget-object v1, p1, Landroid/hardware/sensorhub/SensorHubEvent;->values:[F

    aget v1, v1, v3

    float-to-int v1, v1

    int-to-char v0, v1

    .line 771
    .local v0, direction:C
    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 772
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService;->access$1700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    .line 773
    const-string v1, "SContextService"

    const-string v2, "AirMotion : Down"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :goto_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v2, 0x7

    iget-object v3, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService;->access$1700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v3

    #calls: Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V
    invoke-static {v1, v2, v3}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;ILandroid/hardware/scontext/ISContextContexts;)V

    .line 789
    return-void

    .line 774
    :cond_0
    const/16 v1, 0x4c

    if-ne v0, v1, :cond_1

    .line 775
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService;->access$1700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    .line 776
    const-string v1, "SContextService"

    const-string v2, "AirMotion : Up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 777
    :cond_1
    const/16 v1, 0x44

    if-ne v0, v1, :cond_2

    .line 778
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService;->access$1700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v1

    iput v4, v1, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    .line 779
    const-string v1, "SContextService"

    const-string v2, "AirMotion : Left"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 780
    :cond_2
    const/16 v1, 0x55

    if-ne v0, v1, :cond_3

    .line 781
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService;->access$1700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    .line 782
    const-string v1, "SContextService"

    const-string v2, "AirMotion : Right"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 784
    :cond_3
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$2;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextAirMotionContext:Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService;->access$1700(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;

    move-result-object v1

    iput v3, v1, Landroid/hardware/scontext/SContextContexts$SContextAirMotionContext;->mDirection:I

    .line 785
    const-string v1, "SContextService"

    const-string v2, "AirMotion : Unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
