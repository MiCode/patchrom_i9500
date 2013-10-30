.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/UnsignedShort;
.super Ljava/lang/Object;
.source "UnsignedShort.java"


# instance fields
.field private value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/UnsignedShort;->value:I

    .line 22
    return-void
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/UnsignedShort;->value:I

    return v0
.end method
