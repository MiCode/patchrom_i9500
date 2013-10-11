.class public Landroid/media/audiofx/MySound;
.super Landroid/media/audiofx/AudioEffect;
.source "MySound.java"


# static fields
.field public static final EFFECT_TYPE_MYSOUND:Ljava/util/UUID; = null

.field private static final TAG:Ljava/lang/String; = "MySound"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "d2bc05e0-50b0-11e2-bcfd-0800200c9a66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/MySound;->EFFECT_TYPE_MYSOUND:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "priority"
    .parameter "audioSession"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Landroid/media/audiofx/MySound;->EFFECT_TYPE_MYSOUND:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/MySound;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 79
    const-string v0, "MySound"

    const-string v1, "init MySound module"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-nez p2, :cond_0

    .line 81
    const-string v0, "MySound"

    const-string v1, "WARNING: attaching an SoundAlive to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public setGain([I[I)V
    .locals 7
    .parameter "leftGain"
    .parameter "rightGain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x0

    .line 93
    const/16 v3, 0xc

    new-array v1, v3, [B

    .line 94
    .local v1, param:[B
    const/4 v3, 0x1

    new-array v2, v3, [B

    .line 96
    .local v2, value:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 97
    aget v3, p1, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_1

    .line 101
    add-int/lit8 v3, v0, 0x6

    aget v4, p2, v0

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_1
    aput-byte v5, v2, v5

    .line 105
    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 106
    return-void
.end method
