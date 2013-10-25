.class Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x4

.field static final CONTENT_APP_IDLE_OFFSET:J = 0x3a98L

.field static final DEBUG:Z = false

.field static final DHA_INCREASE_THRESHOLD:J = 0xa00000L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static final EMPTY_APP_IDLE_OFFSET:J = 0x1d4c0L

.field static final FOREGROUND_APP_ADJ:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final FREEMEM_FOR_LARGEMEM_MODEL:J = 0x0L

.field static final HDPI_1024_INIT:I = 0x18

.field static final HDPI_1024_MAX:I = 0x24

.field static final HDPI_1024_MIN:I = 0xf

.field static final HDPI_768_INIT:I = 0xf

.field static final HDPI_768_MAX:I = 0x18

.field static final HDPI_768_MIN:I = 0xf

.field static final HDPI_over1024_INIT:I = 0x24

.field static final HDPI_over1024_MAX:I = 0x3c

.field static final HDPI_over1024_MIN:I = 0x24

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x3

.field static final HIDDEN_APP_MAX_ADJ:I = 0xf

.field static HIDDEN_APP_MIN_ADJ:I = 0x0

.field static final HOME_APP_ADJ:I = 0x6

#the value of this static final field might be set in the static constructor
.field static final INIT_HIDDEN_APPS:I = 0x0

.field static final LDPI_INIT:I = 0xf

.field static final LDPI_MAX:I = 0x18

.field static final LDPI_MIN:I = 0xf

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

#the value of this static final field might be set in the static constructor
.field static final MAX_HIDDEN_APPS:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final MAX_HIDDEN_APPS_FOR_LOWMEM:I = 0x0

.field static final MAX_SUSPICIOUS_HIDDEN_TIME:J = 0x36ee80L

.field static final MDPI_1024_INIT:I = 0x18

.field static final MDPI_1024_MAX:I = 0x24

.field static final MDPI_1024_MIN:I = 0xf

.field static final MDPI_512_INIT:I = 0xf

.field static final MDPI_512_MAX:I = 0x15

.field static final MDPI_512_MIN:I = 0xf

.field static final MDPI_768_INIT:I = 0x18

.field static final MDPI_768_MAX:I = 0x18

.field static final MDPI_768_MIN:I = 0xf

.field static final MDPI_over1024_INIT:I = 0x18

.field static final MDPI_over1024_MAX:I = 0x3c

.field static final MDPI_over1024_MIN:I = 0x15

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final MIN_HIDDEN_APPS:I = 0x2

#the value of this static final field might be set in the static constructor
.field static final MIN_HIDDEN_APPS_FOR_DHA:I = 0x0

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final SUSPICIOUS_HIDDEN_CHECK_PERIOD:J = 0x1b7740L

.field static final SYSTEM_ADJ:I = -0x10

#the value of this static final field might be set in the static constructor
.field static final TOTAL_DEVICE_MEMORY:J = 0x0L

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_EMPTY_APPS:I = 0x3

.field static final TRIM_HIDDEN_APPS:I = 0x3

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final VISIBLE_APP_ADJ:I = 0x1

.field static final XHDPI_1024_INIT:I = 0x18

.field static final XHDPI_1024_MAX:I = 0x1e

.field static final XHDPI_1024_MIN:I = 0x12

.field static final XHDPI_1536_INIT:I = 0x18

.field static final XHDPI_1536_MAX:I = 0x33

.field static final XHDPI_1536_MIN:I = 0x15

.field static final XHDPI_2048_INIT:I = 0x1e

.field static final XHDPI_2048_MAX:I = 0x3c

.field static final XHDPI_2048_MIN:I = 0x18

.field static final XXHDPI_2048_INIT:I = 0x2d

.field static final XXHDPI_2048_MAX:I = 0x3c

.field static final XXHDPI_2048_MIN:I = 0x1e

.field static final XXHDPI_over2048_INIT:I = 0x2d

.field static final XXHDPI_over2048_MAX:I = 0x3c

.field static final XXHDPI_over2048_MIN:I = 0x1e

.field private static mInfo:Lcom/android/internal/util/MemInfoReader;


# instance fields
.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomKillDepth:[I

.field private final mOomMinFree:[J

.field private final mOomMinFreeHigh:[J

.field private final mOomMinFreeLow:[J

.field private mSzDHADefendThreshold:J

.field private mSzDHAThreshold:J

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    const/16 v0, 0x9

    sput v0, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 158
    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    .line 351
    const-string v0, "MAX_HIDDEN_APPS"

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->dynamicStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_HIDDEN_APPS:I

    .line 353
    const-string v0, "INIT_HIDDEN_APPS"

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->dynamicStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->INIT_HIDDEN_APPS:I

    .line 355
    const-string v0, "MIN_HIDDEN_APPS_FOR_DHA"

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->dynamicStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    .line 357
    const-string v0, "MAX_HIDDEN_APPS_FOR_LOWMEM"

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->dynamicStatus(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_HIDDEN_APPS_FOR_LOWMEM:I

    .line 437
    const-string v0, "FREEMEM_FOR_LARGEMEM_MODEL"

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->dynamicStatus(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->FREEMEM_FOR_LARGEMEM_MODEL:J

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-array v1, v5, [I

    aput v4, v1, v4

    aput v2, v1, v2

    aput v3, v1, v3

    const/4 v2, 0x3

    aput v6, v1, v2

    sget v2, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    aput v2, v1, v6

    const/4 v2, 0x5

    const/16 v3, 0xf

    aput v3, v1, v2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 397
    new-array v1, v5, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    .line 406
    new-array v1, v5, [J

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    .line 415
    new-array v1, v5, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomKillDepth:[I

    .line 421
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    .line 427
    const-wide/32 v1, 0x2000000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 429
    const-wide/32 v1, 0x1800000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 440
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 441
    .local v0, minfo:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 442
    sget-wide v1, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 443
    invoke-direct {p0, v4, v4, v4}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 444
    return-void

    .line 397
    :array_0
    .array-data 0x8
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x30t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x60t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x70t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 406
    :array_1
    .array-data 0x8
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xa0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xc0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 415
    :array_2
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static dynamicStatus(Ljava/lang/String;)I
    .locals 13
    .parameter "varS"

    .prologue
    .line 171
    const/16 v4, 0x78

    .line 172
    .local v4, ldpi:I
    const/16 v5, 0xa0

    .line 173
    .local v5, mdpi:I
    const/16 v3, 0xf0

    .line 174
    .local v3, hdpi:I
    const/16 v7, 0x140

    .line 175
    .local v7, xhdpi:I
    const/16 v8, 0x1e0

    .line 177
    .local v8, xxhdpi:I
    const/4 v6, 0x0

    .line 178
    .local v6, varI:I
    const-string v9, "ro.sf.lcd_density"

    const-string v10, "empty"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, densityS:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 187
    .local v0, densityI:I
    const-string v9, "DHA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "density is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v9, "FREEMEM_FOR_LARGEMEM_MODEL"

    if-ne p0, v9, :cond_2

    .line 190
    const/16 v9, 0x140

    if-gt v0, v9, :cond_1

    .line 191
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x600

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    .line 192
    const/high16 v6, 0x1f40

    .line 344
    .end local v0           #densityI:I
    :goto_0
    return v6

    .line 195
    .restart local v0       #densityI:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 199
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 202
    :cond_2
    const-string v9, "MAX_HIDDEN_APPS"

    if-ne p0, v9, :cond_3

    .line 203
    const/16 v6, 0x3c

    goto :goto_0

    .line 205
    :cond_3
    const-string v9, "INIT_HIDDEN_APPS"

    if-ne p0, v9, :cond_10

    .line 206
    const/16 v9, 0x78

    if-gt v0, v9, :cond_4

    .line 208
    const/16 v6, 0xf

    goto :goto_0

    .line 210
    :cond_4
    const/16 v9, 0xa0

    if-gt v0, v9, :cond_8

    .line 212
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x200

    cmp-long v9, v9, v11

    if-gez v9, :cond_5

    .line 213
    const/16 v6, 0xf

    goto :goto_0

    .line 214
    :cond_5
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x200

    cmp-long v9, v9, v11

    if-ltz v9, :cond_6

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-gez v9, :cond_6

    .line 215
    const/16 v6, 0x18

    goto :goto_0

    .line 216
    :cond_6
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-ltz v9, :cond_7

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-gez v9, :cond_7

    .line 217
    const/16 v6, 0x18

    goto :goto_0

    .line 219
    :cond_7
    const/16 v6, 0x18

    goto :goto_0

    .line 222
    :cond_8
    const/16 v9, 0xf0

    if-gt v0, v9, :cond_b

    .line 224
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-gez v9, :cond_9

    .line 225
    const/16 v6, 0xf

    goto :goto_0

    .line 226
    :cond_9
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-ltz v9, :cond_a

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-gez v9, :cond_a

    .line 227
    const/16 v6, 0x18

    goto :goto_0

    .line 229
    :cond_a
    const/16 v6, 0x24

    goto :goto_0

    .line 231
    :cond_b
    const/16 v9, 0x140

    if-gt v0, v9, :cond_e

    .line 233
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-gez v9, :cond_c

    .line 234
    const/16 v6, 0x18

    goto/16 :goto_0

    .line 235
    :cond_c
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-ltz v9, :cond_d

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x600

    cmp-long v9, v9, v11

    if-gez v9, :cond_d

    .line 236
    const/16 v6, 0x18

    goto/16 :goto_0

    .line 238
    :cond_d
    const/16 v6, 0x1e

    goto/16 :goto_0

    .line 243
    :cond_e
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x800

    cmp-long v9, v9, v11

    if-gez v9, :cond_f

    .line 244
    const/16 v6, 0x2d

    goto/16 :goto_0

    .line 246
    :cond_f
    const/16 v6, 0x2d

    goto/16 :goto_0

    .line 249
    :cond_10
    const-string v9, "MIN_HIDDEN_APPS_FOR_DHA"

    if-ne p0, v9, :cond_1d

    .line 250
    const/16 v9, 0x78

    if-gt v0, v9, :cond_11

    .line 252
    const/16 v6, 0xf

    goto/16 :goto_0

    .line 254
    :cond_11
    const/16 v9, 0xa0

    if-gt v0, v9, :cond_15

    .line 256
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x200

    cmp-long v9, v9, v11

    if-gez v9, :cond_12

    .line 257
    const/16 v6, 0xf

    goto/16 :goto_0

    .line 258
    :cond_12
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-gez v9, :cond_13

    .line 259
    const/16 v6, 0xf

    goto/16 :goto_0

    .line 260
    :cond_13
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-gez v9, :cond_14

    .line 261
    const/16 v6, 0xf

    goto/16 :goto_0

    .line 263
    :cond_14
    const/16 v6, 0x15

    goto/16 :goto_0

    .line 265
    :cond_15
    const/16 v9, 0xf0

    if-gt v0, v9, :cond_18

    .line 267
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-gez v9, :cond_16

    .line 268
    const/16 v6, 0xf

    goto/16 :goto_0

    .line 269
    :cond_16
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-ltz v9, :cond_17

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-gez v9, :cond_17

    .line 270
    const/16 v6, 0xf

    goto/16 :goto_0

    .line 272
    :cond_17
    const/16 v6, 0x24

    goto/16 :goto_0

    .line 274
    :cond_18
    const/16 v9, 0x140

    if-gt v0, v9, :cond_1b

    .line 276
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-gez v9, :cond_19

    .line 277
    const/16 v6, 0x12

    goto/16 :goto_0

    .line 278
    :cond_19
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1a

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x600

    cmp-long v9, v9, v11

    if-gez v9, :cond_1a

    .line 279
    const/16 v6, 0x15

    goto/16 :goto_0

    .line 281
    :cond_1a
    const/16 v6, 0x18

    goto/16 :goto_0

    .line 285
    :cond_1b
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x800

    cmp-long v9, v9, v11

    if-gez v9, :cond_1c

    .line 286
    const/16 v6, 0x1e

    goto/16 :goto_0

    .line 288
    :cond_1c
    const/16 v6, 0x1e

    goto/16 :goto_0

    .line 292
    :cond_1d
    const/16 v9, 0x78

    if-gt v0, v9, :cond_1e

    .line 294
    const/16 v6, 0x18

    goto/16 :goto_0

    .line 296
    :cond_1e
    const/16 v9, 0xa0

    if-gt v0, v9, :cond_22

    .line 298
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x200

    cmp-long v9, v9, v11

    if-gez v9, :cond_1f

    .line 299
    const/16 v6, 0x15

    goto/16 :goto_0

    .line 300
    :cond_1f
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-gez v9, :cond_20

    .line 301
    const/16 v6, 0x18

    goto/16 :goto_0

    .line 302
    :cond_20
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-gez v9, :cond_21

    .line 303
    const/16 v6, 0x24

    goto/16 :goto_0

    .line 305
    :cond_21
    const/16 v6, 0x3c

    goto/16 :goto_0

    .line 307
    :cond_22
    const/16 v9, 0xf0

    if-gt v0, v9, :cond_25

    .line 309
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-gez v9, :cond_23

    .line 310
    const/16 v6, 0x18

    goto/16 :goto_0

    .line 311
    :cond_23
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x300

    cmp-long v9, v9, v11

    if-ltz v9, :cond_24

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-gez v9, :cond_24

    .line 312
    const/16 v6, 0x24

    goto/16 :goto_0

    .line 314
    :cond_24
    const/16 v6, 0x3c

    goto/16 :goto_0

    .line 316
    :cond_25
    const/16 v9, 0x140

    if-gt v0, v9, :cond_28

    .line 318
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-gez v9, :cond_26

    .line 319
    const/16 v6, 0x1e

    goto/16 :goto_0

    .line 320
    :cond_26
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x400

    cmp-long v9, v9, v11

    if-ltz v9, :cond_27

    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v11, 0x600

    cmp-long v9, v9, v11

    if-gez v9, :cond_27

    .line 321
    const/16 v6, 0x33

    goto/16 :goto_0

    .line 323
    :cond_27
    const/16 v6, 0x3c

    goto/16 :goto_0

    .line 327
    :cond_28
    sget-wide v9, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v11, 0x800

    cmp-long v9, v9, v11

    if-gez v9, :cond_29

    .line 328
    const/16 v6, 0x3c

    goto/16 :goto_0

    .line 330
    :cond_29
    const/16 v6, 0x3c

    goto/16 :goto_0

    .line 333
    .end local v0           #densityI:I
    :catch_0
    move-exception v2

    .line 334
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v9, "DHA"

    const-string v10, "densityS is invalid"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v9, "MAX_HIDDEN_APPS"

    if-ne p0, v9, :cond_2a

    .line 336
    const/16 v6, 0x3c

    goto/16 :goto_0

    .line 337
    :cond_2a
    const-string v9, "INIT_HIDDEN_APPS"

    if-ne p0, v9, :cond_2b

    .line 338
    const/16 v6, 0x18

    goto/16 :goto_0

    .line 339
    :cond_2b
    const-string v9, "MIN_HIDDEN_APPS_FOR_DHA"

    if-ne p0, v9, :cond_2c

    .line 340
    const/16 v6, 0xf

    goto/16 :goto_0

    .line 342
    :cond_2c
    const/16 v6, 0x18

    goto/16 :goto_0
.end method

.method static totalDeviceMemory()J
    .locals 4

    .prologue
    .line 161
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 164
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 166
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private updateOomLevels(IIZ)V
    .locals 19
    .parameter "displayWidth"
    .parameter "displayHeight"
    .parameter "write"

    .prologue
    .line 460
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v17, 0x12c

    sub-long v15, v15, v17

    long-to-float v15, v15

    const/high16 v16, 0x43c8

    div-float v14, v15, v16

    .line 463
    .local v14, scaleMem:F
    const v11, 0x25800

    .line 464
    .local v11, minSize:I
    const v9, 0xfa000

    .line 465
    .local v9, maxSize:I
    mul-int v15, p1, p2

    int-to-float v15, v15

    int-to-float v0, v11

    move/from16 v16, v0

    sub-float v15, v15, v16

    const v16, 0xd4800

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 468
    .local v13, scaleDisp:F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .local v2, adjString:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .local v10, memString:Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .local v6, killString:Ljava/lang/StringBuilder;
    cmpl-float v15, v14, v13

    if-lez v15, :cond_2

    move v12, v14

    .line 473
    .local v12, scale:F
    :goto_0
    const/4 v15, 0x0

    cmpg-float v15, v12, v15

    if-gez v15, :cond_3

    const/4 v12, 0x0

    .line 475
    :cond_0
    :goto_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v15, v15

    if-ge v5, v15, :cond_4

    .line 476
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    aget-wide v7, v15, v5

    .line 477
    .local v7, low:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    aget-wide v3, v15, v5

    .line 478
    .local v3, high:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    long-to-float v0, v7

    move/from16 v16, v0

    sub-long v17, v3, v7

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-long v0, v0

    move-wide/from16 v16, v0

    aput-wide v16, v15, v5

    .line 480
    if-lez v5, :cond_1

    .line 481
    const/16 v15, 0x2c

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    const/16 v15, 0x2c

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    const/16 v15, 0x2c

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v15, v15, v5

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v15, v15, v5

    const-wide/16 v17, 0x400

    mul-long v15, v15, v17

    const-wide/16 v17, 0x1000

    div-long v15, v15, v17

    move-wide v0, v15

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 487
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomKillDepth:[I

    aget v15, v15, v5

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v3           #high:J
    .end local v5           #i:I
    .end local v7           #low:J
    .end local v12           #scale:F
    :cond_2
    move v12, v13

    .line 472
    goto :goto_0

    .line 474
    .restart local v12       #scale:F
    :cond_3
    const/high16 v15, 0x3f80

    cmpl-float v15, v12, v15

    if-lez v15, :cond_0

    const/high16 v12, 0x3f80

    goto :goto_1

    .line 498
    .restart local v5       #i:I
    :cond_4
    if-eqz p3, :cond_5

    .line 499
    const-string v15, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v15, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v15, "/sys/module/lowmemorykiller/parameters/adj_killed_level"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_5
    const/16 v15, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v15

    const/high16 v17, 0x4a80

    const/high16 v18, 0x4a80

    mul-float v18, v18, v12

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 508
    mul-int v15, p2, p1

    const v16, 0x1fa400

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 509
    const-wide/32 v15, 0x9600000

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 510
    const-wide/32 v15, 0x3200000

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 512
    :cond_6
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "data"

    .prologue
    .line 524
    const/4 v1, 0x0

    .line 526
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 527
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 531
    if-eqz v2, :cond_2

    .line 533
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 538
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 534
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 535
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 528
    :catch_1
    move-exception v0

    .line 529
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 531
    if-eqz v1, :cond_0

    .line 533
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 534
    :catch_2
    move-exception v3

    goto :goto_0

    .line 531
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 533
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 535
    :cond_1
    :goto_3
    throw v3

    .line 534
    :catch_3
    move-exception v4

    goto :goto_3

    .line 531
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 528
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .parameter "wm"

    .prologue
    const/4 v3, 0x1

    .line 447
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_0

    .line 448
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 449
    .local v0, p:Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 450
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 451
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 452
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 455
    .end local v0           #p:Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method getMemLevel(I)J
    .locals 5
    .parameter "adjustment"

    .prologue
    const-wide/16 v3, 0x400

    .line 515
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v1, v1, v0

    mul-long/2addr v1, v3

    .line 520
    :goto_1
    return-wide v1

    .line 515
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    mul-long/2addr v1, v3

    goto :goto_1
.end method

.method public updateHiddenAppNum(III)I
    .locals 12
    .parameter "maxHiddenApp"
    .parameter "curHidden"
    .parameter "curEmpty"

    .prologue
    .line 542
    move v2, p1

    .line 543
    .local v2, ret:I
    mul-int/lit8 v8, p1, 0x2

    div-int/lit8 v0, v8, 0x3

    .line 544
    .local v0, maxEmpty:I
    sub-int v1, p1, v0

    .line 546
    .local v1, maxHidden:I
    sget-object v8, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v8, :cond_2

    .line 548
    sget-object v8, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 551
    sget-object v8, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v6

    .line 552
    .local v6, szFreeMem:J
    sget-object v8, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v8

    sget-object v10, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v10

    add-long v4, v8, v10

    .line 561
    .local v4, szAvailableMem:J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_0

    move v3, v2

    .line 594
    .end local v2           #ret:I
    .end local v4           #szAvailableMem:J
    .end local v6           #szFreeMem:J
    .local v3, ret:I
    :goto_0
    return v3

    .line 566
    .end local v3           #ret:I
    .restart local v2       #ret:I
    .restart local v4       #szAvailableMem:J
    .restart local v6       #szFreeMem:J
    :cond_0
    iget-wide v8, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v8, v6, v8

    if-ltz v8, :cond_1

    iget-wide v8, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_3

    :cond_1
    sget v8, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    if-le v2, v8, :cond_3

    .line 567
    add-int/lit8 v2, v2, -0x3

    .end local v4           #szAvailableMem:J
    .end local v6           #szFreeMem:J
    :cond_2
    :goto_1
    move v3, v2

    .line 594
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto :goto_0

    .line 574
    .end local v3           #ret:I
    .restart local v2       #ret:I
    .restart local v4       #szAvailableMem:J
    .restart local v6       #szFreeMem:J
    :cond_3
    iget-wide v8, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    const-wide/32 v10, 0xa00000

    add-long/2addr v8, v10

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    iget-wide v8, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    const-wide/32 v10, 0xa00000

    add-long/2addr v8, v10

    cmp-long v8, v4, v8

    if-lez v8, :cond_2

    sget v8, Lcom/android/server/am/ProcessList;->MAX_HIDDEN_APPS:I

    if-ge v2, v8, :cond_2

    if-le v1, p2, :cond_4

    if-gt v0, p3, :cond_2

    .line 577
    :cond_4
    sget v8, Lcom/android/server/am/ProcessList;->MAX_HIDDEN_APPS_FOR_LOWMEM:I

    if-ge v2, v8, :cond_5

    .line 578
    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 584
    :cond_5
    sget-wide v8, Lcom/android/server/am/ProcessList;->FREEMEM_FOR_LARGEMEM_MODEL:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    sget-wide v8, Lcom/android/server/am/ProcessList;->FREEMEM_FOR_LARGEMEM_MODEL:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    .line 585
    add-int/lit8 v2, v2, 0x3

    goto :goto_1
.end method
