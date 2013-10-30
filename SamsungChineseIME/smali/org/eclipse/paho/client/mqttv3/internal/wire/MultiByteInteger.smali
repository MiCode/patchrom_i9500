.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;
.super Ljava/lang/Object;
.source "MultiByteInteger.java"


# instance fields
.field private length:I

.field private value:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 23
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;-><init>(JI)V

    .line 24
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0
    .parameter "value"
    .parameter "length"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;->value:J

    .line 28
    iput p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;->length:I

    .line 29
    return-void
.end method


# virtual methods
.method public getEncodedLength()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;->length:I

    return v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;->value:J

    return-wide v0
.end method
