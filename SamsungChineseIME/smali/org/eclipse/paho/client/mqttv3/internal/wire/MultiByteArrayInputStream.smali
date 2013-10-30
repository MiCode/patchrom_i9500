.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;
.super Ljava/io/InputStream;
.source "MultiByteArrayInputStream.java"


# instance fields
.field private bytesA:[B

.field private bytesB:[B

.field private lengthA:I

.field private lengthB:I

.field private offsetA:I

.field private offsetB:I

.field private pos:I


# direct methods
.method public constructor <init>([BII[BII)V
    .locals 1
    .parameter "bytesA"
    .parameter "offsetA"
    .parameter "lengthA"
    .parameter "bytesB"
    .parameter "offsetB"
    .parameter "lengthB"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->pos:I

    .line 29
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->bytesA:[B

    .line 30
    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->bytesB:[B

    .line 31
    iput p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->offsetA:I

    .line 32
    iput p5, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->offsetB:I

    .line 33
    iput p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->lengthA:I

    .line 34
    iput p6, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->lengthB:I

    .line 35
    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, -0x1

    .line 38
    .local v0, result:I
    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->pos:I

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->lengthA:I

    if-ge v1, v2, :cond_1

    .line 39
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->bytesA:[B

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->offsetA:I

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->pos:I

    add-int/2addr v2, v3

    aget-byte v0, v1, v2

    .line 45
    :goto_0
    if-gez v0, :cond_0

    .line 46
    add-int/lit16 v0, v0, 0x100

    .line 48
    :cond_0
    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->pos:I

    move v1, v0

    .line 49
    :goto_1
    return v1

    .line 40
    :cond_1
    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->pos:I

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->lengthA:I

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->lengthB:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 41
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->bytesB:[B

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->offsetB:I

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->pos:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;->lengthA:I

    sub-int/2addr v2, v3

    aget-byte v0, v1, v2

    goto :goto_0

    .line 43
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method
