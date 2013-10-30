.class public final enum Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;
.super Ljava/lang/Enum;
.source "MqttConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/comm/MqttConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MQTTConnectionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

.field public static final enum CONNECTED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

.field public static final enum CONNECTING:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

.field public static final enum INITIAL:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

.field public static final enum NOTCONNECTED_DATADISABLED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

.field public static final enum NOTCONNECTED_UNKNOWNREASON:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

.field public static final enum NOTCONNECTED_USERDISCONNECT:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

.field public static final enum NOTCONNECTED_WAITINGFORINTERNET:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->INITIAL:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    .line 231
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->CONNECTING:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    .line 233
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->CONNECTED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    .line 235
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    const-string v1, "NOTCONNECTED_WAITINGFORINTERNET"

    invoke-direct {v0, v1, v6}, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_WAITINGFORINTERNET:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    .line 237
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    const-string v1, "NOTCONNECTED_USERDISCONNECT"

    invoke-direct {v0, v1, v7}, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_USERDISCONNECT:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    .line 239
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    const-string v1, "NOTCONNECTED_DATADISABLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_DATADISABLED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    .line 241
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    const-string v1, "NOTCONNECTED_UNKNOWNREASON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_UNKNOWNREASON:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    .line 227
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->INITIAL:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->CONNECTING:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->CONNECTED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_WAITINGFORINTERNET:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_USERDISCONNECT:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_DATADISABLED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_UNKNOWNREASON:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->$VALUES:[Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

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
    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 227
    const-class v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->$VALUES:[Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    invoke-virtual {v0}, [Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    return-object v0
.end method
