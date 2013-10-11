.class public final Lcom/android/server/ssrm/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# static fields
.field static final BROWSER:Ljava/lang/String; = "com.android.browser"

.field static final CONTACTS:Ljava/lang/String; = "com.android.contacts"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final GMAPS:Ljava/lang/String; = "com.google.android.apps.maps"

.field static final GTALK:Ljava/lang/String; = "com.google.android.talk"

.field static final LAUNCHER:Ljava/lang/String; = "com.sec.android.app.launcher"

.field static final MESSAGING:Ljava/lang/String; = "com.android.mms"

.field static final PHONE:Ljava/lang/String; = "com.android.phone"

.field static final SKYPE:Ljava/lang/String; = "com.skype.raider"

.field private static TAG:Ljava/lang/String; = null

.field static final VIDEO_PLAYER:Ljava/lang/String; = "com.sec.android.app.videoplayer"

.field static final YOUTUBE:Ljava/lang/String; = "com.google.android.youtube"

.field private static busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private static cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private static cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private static frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private static gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Controller;->DEBUG:Z

    .line 43
    const-string v0, "Controller"

    sput-object v0, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    .line 44
    sput-object v2, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 45
    sput-object v2, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 46
    sput-object v2, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 47
    sput-object v2, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 48
    sput-object v2, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boost(Ljava/lang/String;Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;JLcom/android/server/ssrm/Monitor$SIOPLevel;)V
    .locals 12
    .parameter "packageName"
    .parameter "attr"
    .parameter "timeOut"
    .parameter "siopLevel"

    .prologue
    .line 93
    sget-object v3, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 94
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    const-string v4, "boost:: mContext is null"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    sget-object v3, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    const-string v4, "CustomFrequencyManagerService"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    .line 100
    .local v0, mCustomFreqManager:Landroid/os/CustomFrequencyManager;
    sget-object v3, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 103
    .local v10, mPowerManager:Landroid/os/PowerManager;
    if-eqz v0, :cond_2

    if-nez v10, :cond_3

    .line 104
    :cond_2
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    const-string v4, "boost:: mCustomFreqManager or mPowerManager is null"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_3
    if-nez p1, :cond_4

    .line 108
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    const-string v4, "boost:: attr is null"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_4
    const/4 v1, -0x1

    .line 114
    .local v1, freqType:I
    const/4 v2, -0x1

    .line 115
    .local v2, freqValue:I
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 120
    .local v11, pkgName:Ljava/lang/String;
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-nez v3, :cond_6

    .line 121
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    const-string v4, "In Controller :: App status Old CPu request exists..removing... = "

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_5

    .line 123
    sget-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 124
    :cond_5
    sget-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_6

    .line 125
    sget-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 129
    :cond_6
    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v8

    .line 130
    .local v8, cpuFreq:[I
    if-eqz v8, :cond_18

    .line 132
    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 134
    const/4 v1, 0x7

    .line 135
    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 136
    const/4 v3, 0x0

    aget v2, v8, v3

    .line 144
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_7

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v3

    if-le v2, v3, :cond_7

    .line 145
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SSRM is restricting the CPU Boost freq to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "based on Device Temperature Level Value Requested = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v2

    .line 151
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 152
    sget-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 154
    :cond_8
    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 155
    const/4 v1, 0x6

    .line 156
    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 158
    const/4 v3, 0x0

    aget v2, v8, v3

    .line 167
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_9

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v3

    if-le v2, v3, :cond_9

    .line 168
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSRM is restricting the CPU Boost freq to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "based on Device Temperature Level Value Requested = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v2

    .line 174
    :cond_9
    sget-object v6, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    move-wide v3, p2

    move-object v5, v11

    invoke-virtual/range {v0 .. v6}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 175
    sget-object v3, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 184
    :cond_a
    :goto_3
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-nez v3, :cond_b

    sget-object v3, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_b

    .line 185
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    const-string v4, "In Controller :: App status Old GPu request exists..removing... = "

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v3, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 188
    :cond_b
    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v9

    .line 189
    .local v9, gpuFreq:[I
    if-eqz v9, :cond_1e

    .line 190
    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 192
    :cond_c
    const/4 v1, 0x1

    .line 193
    iget-boolean v3, p1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->isGpuMax:Z

    if-eqz v3, :cond_1b

    .line 194
    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 196
    array-length v3, v9

    add-int/lit8 v3, v3, -0x1

    aget v2, v9, v3

    .line 214
    :goto_4
    sget-object v6, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    move-wide v3, p2

    move-object v5, v11

    invoke-virtual/range {v0 .. v6}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 215
    sget-object v3, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 223
    :cond_d
    :goto_5
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-nez v3, :cond_e

    sget-object v3, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_e

    .line 224
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    const-string v4, "In Controller :: App status Old Bus request exists..removing... = "

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v3, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 227
    :cond_e
    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedSysBusFrequency()[I

    move-result-object v7

    .line 228
    .local v7, busFreq:[I
    if-eqz v7, :cond_24

    .line 229
    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 231
    :cond_f
    iget-boolean v3, p1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->isBusMax:Z

    if-eqz v3, :cond_21

    .line 232
    const/16 v1, 0xa

    .line 233
    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 235
    const/4 v3, 0x0

    aget v2, v7, v3

    .line 254
    :goto_6
    sget-object v6, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    move-wide v3, p2

    move-object v5, v11

    invoke-virtual/range {v0 .. v6}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 255
    sget-object v3, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 263
    :cond_10
    :goto_7
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-nez v3, :cond_11

    sget-object v3, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v3, :cond_11

    .line 264
    sget-object v3, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 267
    :cond_11
    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "NA"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    :cond_12
    const/4 v1, 0x3

    .line 270
    iget-boolean v3, p1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->isBusMax:Z

    if-eqz v3, :cond_27

    .line 271
    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 273
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    const-string v4, "boost:: lcd frame rate MAX isn\'t supported."

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :goto_8
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLcdFrequency()I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_13

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLcdFrequency()I

    move-result v3

    if-le v2, v3, :cond_13

    .line 294
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSRM is restricting the LCDBoost freq to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLcdFrequency()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "based on Device Temperature Level requested freq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLcdFrequency()I

    move-result v2

    .line 300
    :cond_13
    sget-object v6, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    move-wide v3, p2

    move-object v5, v11

    invoke-virtual/range {v0 .. v6}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 301
    sget-object v3, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v3}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    goto/16 :goto_0

    .line 137
    .end local v7           #busFreq:[I
    .end local v9           #gpuFreq:[I
    :cond_14
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 138
    array-length v3, v8

    add-int/lit8 v3, v3, -0x1

    aget v2, v8, v3

    goto/16 :goto_1

    .line 140
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMaxActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_1

    .line 159
    :cond_16
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 161
    array-length v3, v8

    add-int/lit8 v3, v3, -0x1

    aget v2, v8, v3

    goto/16 :goto_2

    .line 163
    :cond_17
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCpuMinActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2

    .line 179
    :cond_18
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In Controller :: Error While requesting CPU Boost for packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 197
    .restart local v9       #gpuFreq:[I
    :cond_19
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 199
    const/4 v3, 0x0

    aget v2, v9, v3

    goto/16 :goto_4

    .line 201
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMaxActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_4

    .line 204
    :cond_1b
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 206
    const/4 v3, 0x0

    aget v2, v9, v3

    goto/16 :goto_4

    .line 207
    :cond_1c
    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 209
    array-length v3, v9

    add-int/lit8 v3, v3, -0x1

    aget v2, v9, v3

    goto/16 :goto_4

    .line 211
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getGpuMinActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_4

    .line 218
    :cond_1e
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In Controller :: Error While requesting GPU Boost for packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 236
    .restart local v7       #busFreq:[I
    :cond_1f
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 238
    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    aget v2, v7, v3

    goto/16 :goto_6

    .line 240
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMaxActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_6

    .line 243
    :cond_21
    const/16 v1, 0xb

    .line 244
    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 246
    const/4 v3, 0x0

    aget v2, v7, v3

    goto/16 :goto_6

    .line 247
    :cond_22
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 249
    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    aget v2, v7, v3

    goto/16 :goto_6

    .line 251
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getBusMinActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_6

    .line 258
    :cond_24
    sget-object v3, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In Controller :: Error While requesting BUS Boost for packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 274
    :cond_25
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMaxActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 276
    const/4 v3, 0x0

    aget v2, v7, v3

    goto/16 :goto_8

    .line 278
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMaxActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_8

    .line 281
    :cond_27
    const-string v3, "MAX"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 283
    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    aget v2, v7, v3

    goto/16 :goto_8

    .line 284
    :cond_28
    const-string v3, "MIN"

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMinActionValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 286
    const/4 v3, 0x0

    aget v2, v7, v3

    goto/16 :goto_8

    .line 288
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getLcdMinActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_8
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 306
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 310
    sget-boolean v0, Lcom/android/server/ssrm/Controller;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 311
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    return-void
.end method

.method public static removeBoost(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iget-object v0, v0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In Controller removeBoost::  Old CPu Max request exists..removing... = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/android/server/ssrm/Controller;->cpuBoostMax:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 67
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iget-object v0, v0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In Controller removeBoost::  Old CPu Min request exists..removing... = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/android/server/ssrm/Controller;->cpuBoostMin:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 71
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iget-object v0, v0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In Controller removeBoost:: Old GPu request exists..removing... = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/android/server/ssrm/Controller;->gpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 75
    :cond_2
    sget-object v0, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iget-object v0, v0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    sget-object v0, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In Controller removeBoost:: Old Bus request exists..removing... = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/android/server/ssrm/Controller;->busBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 79
    :cond_3
    sget-object v0, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    iget-object v0, v0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    sget-object v0, Lcom/android/server/ssrm/Controller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In Controller removeBoost:: Old Lcd request exists..removing... = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Controller;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/android/server/ssrm/Controller;->frameRateReq:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 84
    :cond_4
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    sput-object p0, Lcom/android/server/ssrm/Controller;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method
