.class public Lcom/samsung/inputmethod/comm/SimeSoundManager;
.super Ljava/lang/Object;
.source "SimeSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/comm/SimeSoundManager$OnLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_AUDIO_MIN_VOLUME:F = 0.5f

.field private static final SOUND_POOL_MAX_STREAM:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimeSoundManager"

.field private static mInstance:Lcom/samsung/inputmethod/comm/SimeSoundManager;


# instance fields
.field private final FX_VOLUME:F

.field final VIBE_KEY_FUNCTION:[B

.field final VIBE_KEY_F_AND_J:[B

.field final VIBE_KEY_GENERAL:[B

.field private final VIBRATE_DURATION:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mLoadCompleteListener:Lcom/samsung/inputmethod/comm/SimeSoundManager$OnLoadCompleteListener;

.field private mLoadResId:[I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSparseArrayLoaded:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mVibratePattern:[J

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mInstance:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/16 v1, 0x12

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->FX_VOLUME:F

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mVibratePattern:[J

    .line 56
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->VIBRATE_DURATION:I

    .line 58
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->VIBE_KEY_GENERAL:[B

    .line 65
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->VIBE_KEY_FUNCTION:[B

    .line 72
    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->VIBE_KEY_F_AND_J:[B

    .line 93
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->initLocalAudios()V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->updateRingerMode()V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->updateVibrator()V

    .line 97
    return-void

    .line 55
    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 58
    :array_1
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
    .end array-data

    .line 65
    nop

    :array_2
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x3t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x22t
    .end array-data

    .line 72
    nop

    :array_3
    .array-data 0x1
        0x1t
        0x0t
        0x3t
        0x0t
        0x34t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x1dt
        0x0t
        0xf1t
        0xe0t
        0x2t
        0xe2t
        0x0t
        0x0t
        0xf1t
        0xe0t
        0x1t
        0xe2t
        0x0t
        0x3ct
        0xfft
        0x30t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x40t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0xa2t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/comm/SimeSoundManager;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mLoadResId:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/comm/SimeSoundManager;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/comm/SimeSoundManager;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArrayLoaded:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/comm/SimeSoundManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 182
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mInstance:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    if-nez v0, :cond_0

    .line 183
    if-eqz p0, :cond_0

    .line 184
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeSoundManager;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/comm/SimeSoundManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mInstance:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    .line 187
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mInstance:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    return-object v0
.end method

.method private playKeyDown(I)V
    .locals 2
    .parameter "soundType"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->updateRingerMode()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 198
    return-void
.end method


# virtual methods
.method public initLocalAudios()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 100
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_KEYBOARD_SOUND_LOCAL:Z

    if-nez v1, :cond_1

    .line 129
    :cond_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->killSoundPoolPlayer()V

    .line 103
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Landroid/media/SoundPool;

    invoke-direct {v1, v5, v6, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 105
    new-instance v1, Lcom/samsung/inputmethod/comm/SimeSoundManager$OnLoadCompleteListener;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/comm/SimeSoundManager$OnLoadCompleteListener;-><init>(Lcom/samsung/inputmethod/comm/SimeSoundManager;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mLoadCompleteListener:Lcom/samsung/inputmethod/comm/SimeSoundManager$OnLoadCompleteListener;

    .line 106
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mLoadCompleteListener:Lcom/samsung/inputmethod/comm/SimeSoundManager$OnLoadCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 107
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArray:Landroid/util/SparseArray;

    .line 108
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArray:Landroid/util/SparseArray;

    const v2, 0x7f050002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArray:Landroid/util/SparseArray;

    const/4 v2, 0x7

    const/high16 v3, 0x7f05

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArray:Landroid/util/SparseArray;

    const/16 v2, 0x8

    const v3, 0x7f050001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArray:Landroid/util/SparseArray;

    const v2, 0x7f050003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArrayLoaded:Landroid/util/SparseArray;

    .line 118
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArrayLoaded:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArrayLoaded:Landroid/util/SparseArray;

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArrayLoaded:Landroid/util/SparseArray;

    const/16 v2, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArrayLoaded:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mLoadResId:[I

    .line 124
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 126
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mLoadResId:[I

    iget-object v3, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v2, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public killSoundPoolPlayer()V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SimeSoundManager"

    const-string v2, " MediaPlayer release fail ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopLocalRingPlayer()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 236
    :cond_0
    return-void
.end method

.method public tryPlayKeyDown(I)V
    .locals 8
    .parameter "soundType"

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f00

    .line 201
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getKeySound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_KEYBOARD_SOUND_LOCAL:Z

    if-eqz v0, :cond_4

    .line 203
    packed-switch p1, :pswitch_data_0

    .line 224
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->playKeyDown(I)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 209
    .local v7, audioIndex:I
    if-ltz v7, :cond_1

    const/4 v0, 0x4

    if-lt v7, v0, :cond_2

    .line 210
    :cond_1
    const/4 v7, 0x0

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArrayLoaded:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 213
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mLoadResId:[I

    aget v1, v1, v7

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 218
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->playKeyDown(I)V

    .line 219
    const-string v0, "SimeSoundManager"

    const-string v1, " can not play local audio file , because of loading failed ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    .end local v7           #audioIndex:I
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->playKeyDown(I)V

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public tryVibrate(I)V
    .locals 3
    .parameter "vibrationType"

    .prologue
    .line 244
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->updateVibrator()V

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 262
    packed-switch p1, :pswitch_data_0

    .line 273
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->VIBE_KEY_GENERAL:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_0

    .line 264
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->VIBE_KEY_GENERAL:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->VIBE_KEY_FUNCTION:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->VIBE_KEY_F_AND_J:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateRingerMode()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 150
    :cond_0
    return-void
.end method

.method public updateVibrator()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager;->mVibrator:Landroid/os/SystemVibrator;

    .line 179
    :cond_0
    return-void
.end method
