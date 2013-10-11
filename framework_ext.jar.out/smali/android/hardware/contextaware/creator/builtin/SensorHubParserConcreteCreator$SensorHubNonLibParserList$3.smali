.class final enum Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList$3;
.super Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
.source "SensorHubParserConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "x0"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$1;)V

    return-void
.end method


# virtual methods
.method protected final createObj()V
    .locals 2

    .prologue
    .line 69
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_SENSORHUB_DEBUG_MSG:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubDebugMsgParser;

    invoke-direct {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubDebugMsgParser;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->registerParser(Ljava/lang/String;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;)V

    .line 71
    return-void
.end method
