.class public final enum Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;
.super Ljava/lang/Enum;
.source "MqttConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/comm/MqttConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MQTTStartupStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

.field public static final enum CONFIGURED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

.field public static final enum CONFIGURING:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

.field public static final enum INITIAL:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

.field public static final enum READY:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

.field public static final enum RESUMING:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

.field public static final enum STARTED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 254
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->INITIAL:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->READY:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    const-string v1, "CONFIGURING"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->CONFIGURING:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    const-string v1, "CONFIGURED"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->CONFIGURED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    const-string v1, "RESUMING"

    invoke-direct {v0, v1, v7}, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->RESUMING:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    const-string v1, "STARTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->STARTED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    .line 253
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->INITIAL:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->READY:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->CONFIGURING:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->CONFIGURED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->RESUMING:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->STARTED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->$VALUES:[Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 253
    const-class v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->$VALUES:[Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    invoke-virtual {v0}, [Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    return-object v0
.end method
