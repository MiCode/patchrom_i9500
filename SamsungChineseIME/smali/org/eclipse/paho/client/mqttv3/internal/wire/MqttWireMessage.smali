.class public abstract Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
.super Ljava/lang/Object;
.source "MqttWireMessage.java"


# static fields
.field public static final MESSAGE_TYPE_CONNACK:B = 0x2t

.field public static final MESSAGE_TYPE_CONNECT:B = 0x1t

.field public static final MESSAGE_TYPE_DISCONNECT:B = 0xet

.field public static final MESSAGE_TYPE_PINGREQ:B = 0xct

.field public static final MESSAGE_TYPE_PINGRESP:B = 0xdt

.field public static final MESSAGE_TYPE_PUBACK:B = 0x4t

.field public static final MESSAGE_TYPE_PUBCOMP:B = 0x7t

.field public static final MESSAGE_TYPE_PUBLISH:B = 0x3t

.field public static final MESSAGE_TYPE_PUBREC:B = 0x5t

.field public static final MESSAGE_TYPE_PUBREL:B = 0x6t

.field public static final MESSAGE_TYPE_SUBACK:B = 0x9t

.field public static final MESSAGE_TYPE_SUBSCRIBE:B = 0x8t

.field public static final MESSAGE_TYPE_UNSUBACK:B = 0xbt

.field public static final MESSAGE_TYPE_UNSUBSCRIBE:B = 0xat

.field protected static final STRING_ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field protected duplicate:Z

.field private encodedHeader:[B

.field protected msgId:I

.field private type:B


# direct methods
.method public constructor <init>(B)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->duplicate:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->encodedHeader:[B

    .line 57
    iput-byte p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->type:B

    .line 60
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->msgId:I

    .line 61
    return-void
.end method

.method private static createWireMessage(Ljava/io/InputStream;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .locals 17
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 153
    :try_start_0
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/CountingInputStream;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 154
    .local v1, counter:Lorg/eclipse/paho/client/mqttv3/internal/wire/CountingInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 155
    .local v4, in:Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 156
    .local v3, first:I
    shr-int/lit8 v15, v3, 0x4

    int-to-byte v14, v15

    .line 157
    .local v14, type:B
    and-int/lit8 v3, v3, 0xf

    int-to-byte v5, v3

    .line 158
    .local v5, info:B
    invoke-static {v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->readMBI(Ljava/io/DataInputStream;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;

    move-result-object v15

    invoke-virtual {v15}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;->getValue()J

    move-result-wide v7

    .line 159
    .local v7, remLen:J
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/CountingInputStream;->getCounter()I

    move-result v15

    int-to-long v15, v15

    add-long v12, v15, v7

    .line 162
    .local v12, totalToRead:J
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/CountingInputStream;->getCounter()I

    move-result v15

    int-to-long v15, v15

    sub-long v9, v12, v15

    .line 163
    .local v9, remainder:J
    const/4 v15, 0x0

    new-array v2, v15, [B

    .line 165
    .local v2, data:[B
    const-wide/16 v15, 0x0

    cmp-long v15, v9, v15

    if-lez v15, :cond_0

    .line 166
    long-to-int v15, v9

    new-array v2, v15, [B

    .line 167
    const/4 v15, 0x0

    array-length v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v2, v15, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 170
    :cond_0
    const/4 v15, 0x3

    if-ne v14, v15, :cond_1

    .line 171
    new-instance v11, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    invoke-direct {v11, v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;-><init>(B[B)V

    .line 200
    .local v11, result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :goto_0
    return-object v11

    .line 173
    .end local v11           #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_1
    const/4 v15, 0x4

    if-ne v14, v15, :cond_2

    .line 174
    new-instance v11, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubAck;

    invoke-direct {v11, v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubAck;-><init>(B[B)V

    .restart local v11       #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    goto :goto_0

    .line 176
    .end local v11           #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_2
    const/4 v15, 0x7

    if-ne v14, v15, :cond_3

    .line 177
    new-instance v11, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;

    invoke-direct {v11, v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;-><init>(B[B)V

    .restart local v11       #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    goto :goto_0

    .line 179
    .end local v11           #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_3
    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    .line 180
    new-instance v11, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    invoke-direct {v11, v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;-><init>(B[B)V

    .restart local v11       #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    goto :goto_0

    .line 182
    .end local v11           #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_4
    const/16 v15, 0xd

    if-ne v14, v15, :cond_5

    .line 183
    new-instance v11, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingResp;

    invoke-direct {v11, v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingResp;-><init>(B[B)V

    .restart local v11       #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    goto :goto_0

    .line 185
    .end local v11           #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_5
    const/16 v15, 0x9

    if-ne v14, v15, :cond_6

    .line 186
    new-instance v11, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSuback;

    invoke-direct {v11, v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSuback;-><init>(B[B)V

    .restart local v11       #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    goto :goto_0

    .line 188
    .end local v11           #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_6
    const/16 v15, 0xb

    if-ne v14, v15, :cond_7

    .line 189
    new-instance v11, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubAck;

    invoke-direct {v11, v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubAck;-><init>(B[B)V

    .restart local v11       #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    goto :goto_0

    .line 191
    .end local v11           #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_7
    const/4 v15, 0x6

    if-ne v14, v15, :cond_8

    .line 192
    new-instance v11, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    invoke-direct {v11, v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;-><init>(B[B)V

    .restart local v11       #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    goto :goto_0

    .line 194
    .end local v11           #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_8
    const/4 v15, 0x5

    if-ne v14, v15, :cond_9

    .line 195
    new-instance v11, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;

    invoke-direct {v11, v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;-><init>(B[B)V

    .restart local v11       #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    goto :goto_0

    .line 198
    .end local v11           #result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_9
    const/4 v15, 0x6

    invoke-static {v15}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v15

    throw v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1           #counter:Lorg/eclipse/paho/client/mqttv3/internal/wire/CountingInputStream;
    .end local v2           #data:[B
    .end local v3           #first:I
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #info:B
    .end local v7           #remLen:J
    .end local v9           #remainder:J
    .end local v12           #totalToRead:J
    .end local v14           #type:B
    :catch_0
    move-exception v6

    .line 202
    .local v6, io:Ljava/io/IOException;
    new-instance v15, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v15, v6}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v15
.end method

.method public static createWireMessage(Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .locals 7
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-interface {p0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadBytes()[B

    move-result-object v4

    .line 133
    .local v4, payload:[B
    if-nez v4, :cond_0

    .line 134
    const/4 v1, 0x0

    new-array v4, v1, [B

    .line 136
    :cond_0
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;

    invoke-interface {p0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getHeaderBytes()[B

    move-result-object v1

    invoke-interface {p0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getHeaderOffset()I

    move-result v2

    invoke-interface {p0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getHeaderLength()I

    move-result v3

    invoke-interface {p0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadOffset()I

    move-result v5

    invoke-interface {p0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadLength()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;-><init>([BII[BII)V

    .line 143
    .local v0, mbais:Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteArrayInputStream;
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->createWireMessage(Ljava/io/InputStream;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v1

    return-object v1
.end method

.method public static createWireMessage([B)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .locals 2
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 148
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->createWireMessage(Ljava/io/InputStream;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v1

    return-object v1
.end method

.method protected static encodeMBI(J)[B
    .locals 9
    .parameter "number"

    .prologue
    const-wide/16 v7, 0x80

    const-wide/16 v5, 0x0

    .line 207
    const/4 v2, 0x0

    .line 208
    .local v2, numBytes:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 211
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :cond_0
    rem-long v3, p0, v7

    long-to-int v3, v3

    int-to-byte v1, v3

    .line 212
    .local v1, digit:B
    div-long/2addr p0, v7

    .line 213
    cmp-long v3, p0, v5

    if-lez v3, :cond_1

    .line 214
    or-int/lit16 v3, v1, 0x80

    int-to-byte v1, v3

    .line 216
    :cond_1
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 217
    add-int/lit8 v2, v2, 0x1

    .line 218
    cmp-long v3, p0, v5

    if-lez v3, :cond_2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 220
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method protected static readMBI(Ljava/io/DataInputStream;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;
    .locals 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const-wide/16 v2, 0x0

    .line 229
    .local v2, msgLength:J
    const/4 v4, 0x1

    .line 230
    .local v4, multiplier:I
    const/4 v0, 0x0

    .line 233
    .local v0, count:I
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 234
    .local v1, digit:B
    add-int/lit8 v0, v0, 0x1

    .line 235
    and-int/lit8 v5, v1, 0x7f

    mul-int/2addr v5, v4

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 236
    mul-int/lit16 v4, v4, 0x80

    .line 237
    and-int/lit16 v5, v1, 0x80

    if-nez v5, :cond_0

    .line 239
    new-instance v5, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;

    invoke-direct {v5, v2, v3, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;-><init>(JI)V

    return-object v5
.end method


# virtual methods
.method protected encodeMessageId()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 244
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 246
    .local v1, dos:Ljava/io/DataOutputStream;
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->msgId:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 247
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 248
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 250
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 251
    .local v2, ex:Ljava/io/IOException;
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v3, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getHeader()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->encodedHeader:[B

    if-nez v6, :cond_0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getType()B

    move-result v6

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x4

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageInfo()B

    move-result v7

    and-int/lit8 v7, v7, 0xf

    xor-int v2, v6, v7

    .line 101
    .local v2, first:I
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getVariableHeader()[B

    move-result-object v5

    .line 102
    .local v5, varHeader:[B
    array-length v6, v5

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getPayload()[B

    move-result-object v7

    array-length v7, v7

    add-int v4, v6, v7

    .line 104
    .local v4, remLen:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 105
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 106
    .local v1, dos:Ljava/io/DataOutputStream;
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 107
    int-to-long v6, v4

    invoke-static {v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->encodeMBI(J)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 108
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 109
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 110
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->encodedHeader:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .end local v2           #first:I
    .end local v4           #remLen:I
    .end local v5           #varHeader:[B
    :cond_0
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->encodedHeader:[B

    return-object v6

    .line 111
    :catch_0
    move-exception v3

    .line 112
    .local v3, ioe:Ljava/io/IOException;
    new-instance v6, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v6, v3}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->msgId:I

    return v0
.end method

.method protected abstract getMessageInfo()B
.end method

.method public getPayload()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 80
    iget-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->type:B

    return v0
.end method

.method protected abstract getVariableHeader()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation
.end method

.method public isMessageIdRequired()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public isRetryable()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public setMessageId(I)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 94
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->msgId:I

    .line 95
    return-void
.end method
