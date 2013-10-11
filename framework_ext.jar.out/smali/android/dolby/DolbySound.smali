.class public Landroid/dolby/DolbySound;
.super Ljava/lang/Object;
.source "DolbySound.java"


# static fields
.field public static final CUSTOM1:I = 0x5

.field public static final CUSTOM2:I = 0x6

.field private static final DS_DEFAULT_TUNE_FILE:Ljava/lang/String; = "/system/etc/ds1-current.xml"

.field private static final DS_ENG_TUNE_PATH:Ljava/lang/String; = "/system/etc"

.field public static final GAME:I = 0x3

.field public static final MOVIE:I = 0x1

.field public static final MUSIC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DolbySound Dummy"

.field public static final VOICE:I = 0x4


# instance fields
.field private mAudioSession:I

.field private mPresetLoaded:Z


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "audioSession"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Landroid/dolby/DolbySound;->mPresetLoaded:Z

    .line 16
    iput v0, p0, Landroid/dolby/DolbySound;->mAudioSession:I

    .line 30
    const-string v0, "DolbySound Dummy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init module, sessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput p1, p0, Landroid/dolby/DolbySound;->mAudioSession:I

    .line 32
    if-nez p1, :cond_0

    .line 33
    const-string v0, "DolbySound Dummy"

    const-string v1, "WARNING: attaching an Dolby to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public release()I
    .locals 2

    .prologue
    .line 51
    const-string v0, "DolbySound Dummy"

    const-string v1, "release fail, mDsEffect is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, -0x1

    return v0
.end method

.method public setEnabled(Z)I
    .locals 2
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "DolbySound Dummy"

    const-string v1, "setEnabled fail, mDsEffect is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, -0x1

    return v0
.end method

.method public setPreset(I)I
    .locals 2
    .parameter "dsPreset"

    .prologue
    .line 45
    const-string v0, "DolbySound Dummy"

    const-string v1, "setPreset failed, preset is not loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, -0x1

    return v0
.end method
