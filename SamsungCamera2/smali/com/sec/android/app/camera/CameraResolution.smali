.class public Lcom/sec/android/app/camera/CameraResolution;
.super Ljava/lang/Object;
.source "CameraResolution.java"


# static fields
.field public static final RESOLUTION_1024X768:I = 0x25

.field public static final RESOLUTION_1248X672:I = 0x1d

.field public static final RESOLUTION_1280X720:I = 0xe

.field public static final RESOLUTION_1280X800:I = 0x16

.field public static final RESOLUTION_1280X960:I = 0xa

.field public static final RESOLUTION_1392X1392:I = 0x18

.field public static final RESOLUTION_1440X1080:I = 0x1f

.field public static final RESOLUTION_1536X864:I = 0x1c

.field public static final RESOLUTION_1600X1200:I = 0x8

.field public static final RESOLUTION_1600X960:I = 0x9

.field public static final RESOLUTION_1632X880:I = 0x1b

.field public static final RESOLUTION_176X144:I = 0x13

.field public static final RESOLUTION_1920X1080:I = 0xd

.field public static final RESOLUTION_2048X1104:I = 0x1a

.field public static final RESOLUTION_2048X1152:I = 0x17

.field public static final RESOLUTION_2048X1232:I = 0x7

.field public static final RESOLUTION_2048X1536:I = 0x6

.field public static final RESOLUTION_2560X1440:I = 0x15

.field public static final RESOLUTION_2560X1536:I = 0x5

.field public static final RESOLUTION_2560X1920:I = 0x4

.field public static final RESOLUTION_2592X1944:I = 0x19

.field public static final RESOLUTION_3072X1856:I = 0x3

.field public static final RESOLUTION_3072X2304:I = 0x2

.field public static final RESOLUTION_320X240:I = 0x12

.field public static final RESOLUTION_3264X1836:I = 0x14

.field public static final RESOLUTION_3264X1968:I = 0x1

.field public static final RESOLUTION_3264X2448:I = 0x0

.field public static final RESOLUTION_352X288:I = 0x11

.field public static final RESOLUTION_400X240:I = 0x10

.field public static final RESOLUTION_4096X2304:I = 0x24

.field public static final RESOLUTION_4096X3072:I = 0x1e

.field public static final RESOLUTION_4128X2322:I = 0x21

.field public static final RESOLUTION_4128X3096:I = 0x20

.field public static final RESOLUTION_640X480:I = 0xb

.field public static final RESOLUTION_720X480:I = 0xf

.field public static final RESOLUTION_800X450:I = 0x23

.field public static final RESOLUTION_800X480:I = 0xc

.field public static final RESOLUTION_960X720:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .locals 4
    .parameter "res1"
    .parameter "res2"

    .prologue
    .line 527
    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 528
    .local v1, dw:I
    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 530
    .local v0, dh:I
    if-lez v1, :cond_1

    .line 539
    .end local v1           #dw:I
    :cond_0
    :goto_0
    return v1

    .line 532
    .restart local v1       #dw:I
    :cond_1
    if-nez v1, :cond_0

    .line 533
    if-lez v0, :cond_2

    move v1, v0

    .line 534
    goto :goto_0

    .line 535
    :cond_2
    if-nez v0, :cond_0

    .line 536
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCamcorderProfileQualityLevel(I)I
    .locals 1
    .parameter "resolution"

    .prologue
    .line 502
    packed-switch p0, :pswitch_data_0

    .line 516
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 504
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 506
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 508
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 510
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 512
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 514
    :pswitch_6
    const/4 v0, 0x2

    goto :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getIntHeight(I)I
    .locals 1
    .parameter "resid"

    .prologue
    const/16 v0, 0x1e0

    .line 136
    packed-switch p0, :pswitch_data_0

    .line 206
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 138
    :pswitch_2
    const/16 v0, 0xc18

    goto :goto_0

    .line 140
    :pswitch_3
    const/16 v0, 0xc00

    goto :goto_0

    .line 142
    :pswitch_4
    const/16 v0, 0x990

    goto :goto_0

    .line 144
    :pswitch_5
    const/16 v0, 0x912

    goto :goto_0

    .line 147
    :pswitch_6
    const/16 v0, 0x900

    goto :goto_0

    .line 149
    :pswitch_7
    const/16 v0, 0x7b0

    goto :goto_0

    .line 151
    :pswitch_8
    const/16 v0, 0x798

    goto :goto_0

    .line 153
    :pswitch_9
    const/16 v0, 0x780

    goto :goto_0

    .line 155
    :pswitch_a
    const/16 v0, 0x740

    goto :goto_0

    .line 157
    :pswitch_b
    const/16 v0, 0x72c

    goto :goto_0

    .line 160
    :pswitch_c
    const/16 v0, 0x600

    goto :goto_0

    .line 162
    :pswitch_d
    const/16 v0, 0x5a0

    goto :goto_0

    .line 164
    :pswitch_e
    const/16 v0, 0x4d0

    goto :goto_0

    .line 166
    :pswitch_f
    const/16 v0, 0x4b0

    goto :goto_0

    .line 168
    :pswitch_10
    const/16 v0, 0x570

    goto :goto_0

    .line 170
    :pswitch_11
    const/16 v0, 0x480

    goto :goto_0

    .line 172
    :pswitch_12
    const/16 v0, 0x450

    goto :goto_0

    .line 175
    :pswitch_13
    const/16 v0, 0x438

    goto :goto_0

    .line 178
    :pswitch_14
    const/16 v0, 0x3c0

    goto :goto_0

    .line 180
    :pswitch_15
    const/16 v0, 0x370

    goto :goto_0

    .line 182
    :pswitch_16
    const/16 v0, 0x360

    goto :goto_0

    .line 184
    :pswitch_17
    const/16 v0, 0x320

    goto :goto_0

    .line 189
    :pswitch_18
    const/16 v0, 0x1c2

    goto :goto_0

    .line 192
    :pswitch_19
    const/16 v0, 0x2d0

    goto :goto_0

    .line 194
    :pswitch_1a
    const/16 v0, 0x2a0

    goto :goto_0

    .line 199
    :pswitch_1b
    const/16 v0, 0xf0

    goto :goto_0

    .line 201
    :pswitch_1c
    const/16 v0, 0x90

    goto :goto_0

    .line 203
    :pswitch_1d
    const/16 v0, 0x300

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_14
        :pswitch_14
        :pswitch_1
        :pswitch_1
        :pswitch_13
        :pswitch_19
        :pswitch_1
        :pswitch_1b
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_b
        :pswitch_d
        :pswitch_17
        :pswitch_11
        :pswitch_10
        :pswitch_8
        :pswitch_12
        :pswitch_15
        :pswitch_16
        :pswitch_1a
        :pswitch_3
        :pswitch_13
        :pswitch_2
        :pswitch_5
        :pswitch_19
        :pswitch_18
        :pswitch_6
        :pswitch_1d
    .end packed-switch
.end method

.method public static getIntWidth(I)I
    .locals 1
    .parameter "resid"

    .prologue
    .line 69
    packed-switch p0, :pswitch_data_0

    .line 132
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 72
    :pswitch_1
    const/16 v0, 0x1020

    goto :goto_0

    .line 75
    :pswitch_2
    const/16 v0, 0x1000

    goto :goto_0

    .line 79
    :pswitch_3
    const/16 v0, 0xcc0

    goto :goto_0

    .line 82
    :pswitch_4
    const/16 v0, 0xc00

    goto :goto_0

    .line 84
    :pswitch_5
    const/16 v0, 0xa20

    goto :goto_0

    .line 88
    :pswitch_6
    const/16 v0, 0xa00

    goto :goto_0

    .line 93
    :pswitch_7
    const/16 v0, 0x800

    goto :goto_0

    .line 95
    :pswitch_8
    const/16 v0, 0x780

    goto :goto_0

    .line 97
    :pswitch_9
    const/16 v0, 0x660

    goto :goto_0

    .line 100
    :pswitch_a
    const/16 v0, 0x640

    goto :goto_0

    .line 102
    :pswitch_b
    const/16 v0, 0x600

    goto :goto_0

    .line 104
    :pswitch_c
    const/16 v0, 0x5a0

    goto :goto_0

    .line 106
    :pswitch_d
    const/16 v0, 0x570

    goto :goto_0

    .line 110
    :pswitch_e
    const/16 v0, 0x500

    goto :goto_0

    .line 112
    :pswitch_f
    const/16 v0, 0x4e0

    goto :goto_0

    .line 114
    :pswitch_10
    const/16 v0, 0x3c0

    goto :goto_0

    .line 117
    :pswitch_11
    const/16 v0, 0x320

    goto :goto_0

    .line 119
    :pswitch_12
    const/16 v0, 0x2d0

    goto :goto_0

    .line 121
    :pswitch_13
    const/16 v0, 0x280

    goto :goto_0

    .line 123
    :pswitch_14
    const/16 v0, 0x190

    goto :goto_0

    .line 125
    :pswitch_15
    const/16 v0, 0x140

    goto :goto_0

    .line 127
    :pswitch_16
    const/16 v0, 0xb0

    goto :goto_0

    .line 129
    :pswitch_17
    const/16 v0, 0x400

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_e
        :pswitch_13
        :pswitch_11
        :pswitch_8
        :pswitch_e
        :pswitch_12
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_3
        :pswitch_6
        :pswitch_e
        :pswitch_7
        :pswitch_d
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_f
        :pswitch_2
        :pswitch_c
        :pswitch_1
        :pswitch_1
        :pswitch_10
        :pswitch_11
        :pswitch_2
        :pswitch_17
    .end packed-switch
.end method

.method public static getResolutionFullString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 341
    packed-switch p0, :pswitch_data_0

    .line 415
    :pswitch_0
    const-string v0, "176x144"

    :goto_0
    return-object v0

    .line 343
    :pswitch_1
    const-string v0, "13.0M (4128x3096)"

    goto :goto_0

    .line 345
    :pswitch_2
    const-string v0, "w9.6M (4128x2322)"

    goto :goto_0

    .line 347
    :pswitch_3
    const-string v0, "13.0M (4096x3072)"

    goto :goto_0

    .line 349
    :pswitch_4
    const-string v0, "w9.4M (4096x2304)"

    goto :goto_0

    .line 351
    :pswitch_5
    const-string v0, "8.0M (3264x2448)"

    goto :goto_0

    .line 353
    :pswitch_6
    const-string v0, "w6.5M (3264x1968)"

    goto :goto_0

    .line 355
    :pswitch_7
    const-string v0, "w6.0M (3264x1836)"

    goto :goto_0

    .line 357
    :pswitch_8
    const-string v0, "7.1M (3072x2304)"

    goto :goto_0

    .line 359
    :pswitch_9
    const-string v0, "w5.7M (3072x1856)"

    goto :goto_0

    .line 361
    :pswitch_a
    const-string v0, "5.1M (2592x1944)"

    goto :goto_0

    .line 363
    :pswitch_b
    const-string v0, "5.0M (2560x1920)"

    goto :goto_0

    .line 365
    :pswitch_c
    const-string v0, "w4.0M (2560x1536)"

    goto :goto_0

    .line 367
    :pswitch_d
    const-string v0, "w3.7M (2560x1440)"

    goto :goto_0

    .line 369
    :pswitch_e
    const-string v0, "3.0M (2048x1536)"

    goto :goto_0

    .line 371
    :pswitch_f
    const-string v0, "w2.6M (2048x1232)"

    goto :goto_0

    .line 373
    :pswitch_10
    const-string v0, "w2.4M (2048x1152)"

    goto :goto_0

    .line 375
    :pswitch_11
    const-string v0, "w2.3M 2048x1104"

    goto :goto_0

    .line 377
    :pswitch_12
    const-string v0, "w2.0M (1920x1080)"

    goto :goto_0

    .line 379
    :pswitch_13
    const-string v0, "w1.5M (1632x880)"

    goto :goto_0

    .line 381
    :pswitch_14
    const-string v0, "2.0M (1600x1200)"

    goto :goto_0

    .line 383
    :pswitch_15
    const-string v0, "w1.6M (1600x960)"

    goto :goto_0

    .line 385
    :pswitch_16
    const-string v0, "w1.4M 1536x864"

    goto :goto_0

    .line 387
    :pswitch_17
    const-string v0, "1.9M (1392x1392)"

    goto :goto_0

    .line 389
    :pswitch_18
    const-string v0, "1.6M (1440x1080)"

    goto :goto_0

    .line 391
    :pswitch_19
    const-string v0, "1.3M (1280x960)"

    goto :goto_0

    .line 393
    :pswitch_1a
    const-string v0, "w1.0M (1280x800)"

    goto :goto_0

    .line 395
    :pswitch_1b
    const-string v0, "w0.4M (800x480)"

    goto :goto_0

    .line 397
    :pswitch_1c
    const-string v0, "w0.4M (800x450)"

    goto :goto_0

    .line 399
    :pswitch_1d
    const-string v0, "0.3M (640x480)"

    goto :goto_0

    .line 401
    :pswitch_1e
    const-string v0, "w0.8M (1248x672)"

    goto :goto_0

    .line 403
    :pswitch_1f
    const-string v0, "w0.9M (1280x720)"

    goto :goto_0

    .line 405
    :pswitch_20
    const-string v0, "0.7M (960x720)"

    goto :goto_0

    .line 407
    :pswitch_21
    const-string v0, "0.4M (720x480)"

    goto :goto_0

    .line 409
    :pswitch_22
    const-string v0, "400x240"

    goto :goto_0

    .line 411
    :pswitch_23
    const-string v0, "320x240"

    goto :goto_0

    .line 413
    :pswitch_24
    const-string v0, "176x144"

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_1b
        :pswitch_12
        :pswitch_1f
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_7
        :pswitch_d
        :pswitch_1a
        :pswitch_10
        :pswitch_17
        :pswitch_a
        :pswitch_11
        :pswitch_13
        :pswitch_16
        :pswitch_1e
        :pswitch_3
        :pswitch_18
        :pswitch_1
        :pswitch_2
        :pswitch_20
        :pswitch_1c
        :pswitch_4
    .end packed-switch
.end method

.method public static getResolutionID(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    const/16 v0, 0x23

    .line 420
    const-string v1, "4128x3096"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    const/16 v0, 0x20

    .line 497
    :cond_0
    :goto_0
    return v0

    .line 422
    :cond_1
    const-string v1, "4128x2322"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    const/16 v0, 0x21

    goto :goto_0

    .line 424
    :cond_2
    const-string v1, "4096x3072"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 425
    const/16 v0, 0x1e

    goto :goto_0

    .line 426
    :cond_3
    const-string v1, "4096x2304"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 427
    const/16 v0, 0x24

    goto :goto_0

    .line 428
    :cond_4
    const-string v1, "3264x2448"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 429
    const/4 v0, 0x0

    goto :goto_0

    .line 430
    :cond_5
    const-string v1, "3264x1968"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 431
    const/4 v0, 0x1

    goto :goto_0

    .line 432
    :cond_6
    const-string v1, "3264x1836"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 433
    const/16 v0, 0x14

    goto :goto_0

    .line 434
    :cond_7
    const-string v1, "3072x2304"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 435
    const/4 v0, 0x2

    goto :goto_0

    .line 436
    :cond_8
    const-string v1, "3072x1856"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 437
    const/4 v0, 0x3

    goto :goto_0

    .line 438
    :cond_9
    const-string v1, "2592x1944"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 439
    const/16 v0, 0x19

    goto :goto_0

    .line 440
    :cond_a
    const-string v1, "2560x1920"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 441
    const/4 v0, 0x4

    goto :goto_0

    .line 442
    :cond_b
    const-string v1, "2560x1536"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 443
    const/4 v0, 0x5

    goto :goto_0

    .line 444
    :cond_c
    const-string v1, "2560x1440"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 445
    const/16 v0, 0x15

    goto :goto_0

    .line 446
    :cond_d
    const-string v1, "2048x1536"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 447
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 448
    :cond_e
    const-string v1, "2048x1232"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 449
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 450
    :cond_f
    const-string v1, "2048x1152"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 451
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 452
    :cond_10
    const-string v1, "2048x1104"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 453
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 454
    :cond_11
    const-string v1, "1920x1080"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 455
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 456
    :cond_12
    const-string v1, "1440x1080"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 457
    const/16 v0, 0x1f

    goto/16 :goto_0

    .line 458
    :cond_13
    const-string v1, "1632x880"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 459
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 460
    :cond_14
    const-string v1, "1600x1200"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 461
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 462
    :cond_15
    const-string v1, "1600x960"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 463
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 464
    :cond_16
    const-string v1, "1536x864"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 465
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 466
    :cond_17
    const-string v1, "1392x1392"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 467
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 468
    :cond_18
    const-string v1, "1280x960"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 469
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 470
    :cond_19
    const-string v1, "960x720"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 471
    const/16 v0, 0x22

    goto/16 :goto_0

    .line 472
    :cond_1a
    const-string v1, "800x480"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 473
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 474
    :cond_1b
    const-string v1, "800x450"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    const-string v1, "640x480"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 477
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 478
    :cond_1c
    const-string v1, "1280x800"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 479
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 480
    :cond_1d
    const-string v1, "1280x720"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 481
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 482
    :cond_1e
    const-string v1, "1248x672"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 483
    const/16 v0, 0x1d

    goto/16 :goto_0

    .line 484
    :cond_1f
    const-string v1, "800x450"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    const-string v0, "720x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 487
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 488
    :cond_20
    const-string v0, "400x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 489
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 490
    :cond_21
    const-string v0, "320x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 491
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 492
    :cond_22
    const-string v0, "176x144"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 493
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 494
    :cond_23
    const-string v0, "1024x768"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 495
    const/16 v0, 0x25

    goto/16 :goto_0

    .line 497
    :cond_24
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getResolutionString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 260
    packed-switch p0, :pswitch_data_0

    .line 336
    :pswitch_0
    const-string v0, "176x144"

    :goto_0
    return-object v0

    .line 262
    :pswitch_1
    const-string v0, "4128x3096"

    goto :goto_0

    .line 264
    :pswitch_2
    const-string v0, "4128x2322"

    goto :goto_0

    .line 266
    :pswitch_3
    const-string v0, "4096x3072"

    goto :goto_0

    .line 268
    :pswitch_4
    const-string v0, "4096x2304"

    goto :goto_0

    .line 270
    :pswitch_5
    const-string v0, "3264x2448"

    goto :goto_0

    .line 272
    :pswitch_6
    const-string v0, "3264x1968"

    goto :goto_0

    .line 274
    :pswitch_7
    const-string v0, "3264x1836"

    goto :goto_0

    .line 276
    :pswitch_8
    const-string v0, "3072x2304"

    goto :goto_0

    .line 278
    :pswitch_9
    const-string v0, "3072x1856"

    goto :goto_0

    .line 280
    :pswitch_a
    const-string v0, "2592x1944"

    goto :goto_0

    .line 282
    :pswitch_b
    const-string v0, "2560x1920"

    goto :goto_0

    .line 284
    :pswitch_c
    const-string v0, "2560x1536"

    goto :goto_0

    .line 286
    :pswitch_d
    const-string v0, "2560x1440"

    goto :goto_0

    .line 288
    :pswitch_e
    const-string v0, "2048x1536"

    goto :goto_0

    .line 290
    :pswitch_f
    const-string v0, "2048x1232"

    goto :goto_0

    .line 292
    :pswitch_10
    const-string v0, "2048x1152"

    goto :goto_0

    .line 294
    :pswitch_11
    const-string v0, "2048x1104"

    goto :goto_0

    .line 296
    :pswitch_12
    const-string v0, "1920x1080"

    goto :goto_0

    .line 298
    :pswitch_13
    const-string v0, "1632x880"

    goto :goto_0

    .line 300
    :pswitch_14
    const-string v0, "1600x1200"

    goto :goto_0

    .line 302
    :pswitch_15
    const-string v0, "1600x960"

    goto :goto_0

    .line 304
    :pswitch_16
    const-string v0, "1536x864"

    goto :goto_0

    .line 306
    :pswitch_17
    const-string v0, "1392x1392"

    goto :goto_0

    .line 308
    :pswitch_18
    const-string v0, "1440x1080"

    goto :goto_0

    .line 310
    :pswitch_19
    const-string v0, "1280x960"

    goto :goto_0

    .line 312
    :pswitch_1a
    const-string v0, "1280x800"

    goto :goto_0

    .line 314
    :pswitch_1b
    const-string v0, "800x480"

    goto :goto_0

    .line 316
    :pswitch_1c
    const-string v0, "800x450"

    goto :goto_0

    .line 318
    :pswitch_1d
    const-string v0, "640x480"

    goto :goto_0

    .line 320
    :pswitch_1e
    const-string v0, "1248x672"

    goto :goto_0

    .line 322
    :pswitch_1f
    const-string v0, "1280x720"

    goto :goto_0

    .line 324
    :pswitch_20
    const-string v0, "960x720"

    goto :goto_0

    .line 326
    :pswitch_21
    const-string v0, "720x480"

    goto :goto_0

    .line 328
    :pswitch_22
    const-string v0, "400x240"

    goto :goto_0

    .line 330
    :pswitch_23
    const-string v0, "320x240"

    goto :goto_0

    .line 332
    :pswitch_24
    const-string v0, "176x144"

    goto :goto_0

    .line 334
    :pswitch_25
    const-string v0, "1024x768"

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_1b
        :pswitch_12
        :pswitch_1f
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_7
        :pswitch_d
        :pswitch_1a
        :pswitch_10
        :pswitch_17
        :pswitch_a
        :pswitch_11
        :pswitch_13
        :pswitch_16
        :pswitch_1e
        :pswitch_3
        :pswitch_18
        :pswitch_1
        :pswitch_2
        :pswitch_20
        :pswitch_1c
        :pswitch_4
        :pswitch_25
    .end packed-switch
.end method

.method public static isWideResolution(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    const/4 v0, 0x1

    .line 210
    packed-switch p0, :pswitch_data_0

    .line 255
    :pswitch_0
    const/4 v0, 0x0

    :pswitch_1
    return v0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
