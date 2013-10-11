.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;
.source "SensorHubParserProvider.java"


# static fields
.field private static final PACKET_MAX_SIZE:I = 0xbb8

.field private static volatile instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;


# instance fields
.field private mExtLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

.field private mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

.field private final mSensorHubListener:Landroid/hardware/sensorhub/SensorHubEventListener;

.field private mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;-><init>()V

    .line 62
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;-><init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;[B)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parse([B)Z

    move-result v0

    return v0
.end method

.method private checkInstruction(B)Z
    .locals 5
    .parameter "inst"

    .prologue
    .line 314
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 315
    .local v1, i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    iget-byte v4, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne v4, p1, :cond_0

    .line 316
    const/4 v4, 0x1

    .line 320
    .end local v1           #i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    :goto_1
    return v4

    .line 314
    .restart local v1       #i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    .end local v1           #i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkLibType(B)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 331
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 332
    .local v1, i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    iget-byte v4, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne v4, p1, :cond_0

    .line 333
    const/4 v4, 0x1

    .line 337
    .end local v1           #i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    :goto_1
    return v4

    .line 331
    .restart local v1       #i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    .end local v1           #i:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkPacketSize([B)Z
    .locals 3
    .parameter "packet"

    .prologue
    const/4 v0, 0x0

    .line 190
    array-length v1, p1

    if-gtz v1, :cond_0

    .line 191
    const-string v1, "Packet array length is zero"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 197
    :goto_0
    return v0

    .line 193
    :cond_0
    array-length v1, p1

    const/16 v2, 0xbb8

    if-le v1, v2, :cond_1

    .line 194
    const-string v1, "Packet size overflow"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parse([B)Z
    .locals 7
    .parameter "packet"

    .prologue
    const/4 v4, 0x0

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buffer size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkPacketSize([B)Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    const-string v5, "Packet length error"

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 168
    :goto_0
    return v4

    .line 136
    :cond_0
    invoke-static {p1}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, str:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 138
    :cond_1
    const-string v5, "Packet is null"

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 143
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :cond_2
    array-length v5, p1

    if-ge v0, v5, :cond_7

    .line 144
    array-length v5, p1

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x2

    if-gez v5, :cond_4

    .line 145
    const-string v5, "Header length error"

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    .end local v0           #i:I
    :cond_3
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 149
    .restart local v0       #i:I
    :cond_4
    aget-byte v5, p1, v0

    invoke-direct {p0, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkInstruction(B)Z

    move-result v5

    if-nez v5, :cond_5

    .line 150
    const-string v5, "Instruction parsing error"

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_5
    aget-byte v1, p1, v0

    .line 155
    .local v1, inst:B
    add-int/lit8 v0, v0, 0x1

    aget-byte v5, p1, v0

    invoke-direct {p0, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkLibType(B)Z

    move-result v5

    if-nez v5, :cond_6

    .line 156
    const-string v5, "Type parsing error"

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_6
    aget-byte v3, p1, v0

    .line 161
    .local v3, type:B
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v1, v3, p1, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseData(BB[BI)I

    move-result v0

    .line 162
    if-gez v0, :cond_2

    .line 163
    const-string v5, "Data parsing error"

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v1           #inst:B
    .end local v3           #type:B
    :cond_7
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private parseData(BB[BI)I
    .locals 4
    .parameter "inst"
    .parameter "type"
    .parameter "packet"
    .parameter "next"

    .prologue
    const/4 v2, -0x1

    .line 215
    move v1, p4

    .line 216
    .local v1, tmpNext:I
    const/4 v0, 0x0

    .line 218
    .local v0, parsingResult:I
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap()Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    :cond_0
    const-string v3, "mLibParser is false"

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 247
    :goto_0
    return v2

    .line 223
    :cond_1
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseNotiPowerData(BB[BI)I

    move-result v0

    .line 224
    if-lez v0, :cond_2

    move v2, v0

    .line 225
    goto :goto_0

    .line 228
    :cond_2
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseDebugMsg(BB[BI)I

    move-result v0

    .line 229
    if-lez v0, :cond_3

    move v2, v0

    .line 230
    goto :goto_0

    .line 233
    :cond_3
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_LIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v3, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-eq p1, v3, :cond_4

    .line 234
    const-string v3, "Instruction is false"

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_4
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_5

    .line 239
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2, p3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;->parse([BI)I

    move-result v1

    :goto_1
    move v2, v1

    .line 247
    goto :goto_0

    .line 240
    :cond_5
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY_EXT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_6

    .line 241
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2, p3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;->parse([BI)I

    move-result v1

    goto :goto_1

    .line 243
    :cond_6
    const-string v2, "Type is false"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 244
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private parseDebugMsg(BB[BI)I
    .locals 4
    .parameter "inst"
    .parameter "type"
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 293
    move v1, p4

    .line 294
    .local v1, tmpNext:I
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_SENSORHUB_DEBUG_MSG:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v0

    .line 297
    .local v0, debugMsgParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_LIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne p1, v2, :cond_0

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_SENSORHUB_DEBUG_MSG:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0, p3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v2

    .line 303
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private parseNotiPowerData(BB[BI)I
    .locals 4
    .parameter "inst"
    .parameter "type"
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 265
    move v1, p4

    .line 266
    .local v1, tmpNext:I
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v0

    .line 269
    .local v0, notiParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_NOTI:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne p1, v2, :cond_0

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0, p3, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v2

    .line 275
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final getExtLibParser()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method public final getLibParser()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method public final initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "sensorhub"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sensorhub/SensorHubManager;

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 97
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/sensorhub/SensorHubManager;->registerListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;I)Z

    .line 102
    :cond_0
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeParser;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeParser;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 103
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 104
    return-void
.end method

.method public final parseForScenarioTesting([B)Z
    .locals 1
    .parameter "packet"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parse([B)Z

    move-result v0

    return v0
.end method

.method public final terminate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/sensorhub/SensorHubManager;->unregisterListener(Landroid/hardware/sensorhub/SensorHubEventListener;)V

    .line 115
    iput-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 117
    iput-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 118
    iput-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TypeParser;

    goto :goto_0
.end method
