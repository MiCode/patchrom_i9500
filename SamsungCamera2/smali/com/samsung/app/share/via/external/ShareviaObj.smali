.class public Lcom/samsung/app/share/via/external/ShareviaObj;
.super Ljava/lang/Object;
.source "ShareviaObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/share/via/external/ShareviaObj$transcodeMode;,
        Lcom/samsung/app/share/via/external/ShareviaObj$codecType;,
        Lcom/samsung/app/share/via/external/ShareviaObj$videoResType;
    }
.end annotation


# instance fields
.field OutFileResolution:I

.field assetmngr:Landroid/content/res/AssetManager;

.field audioCodecType:I

.field audioLength:I

.field audioOffset:I

.field endTime:I

.field iconFileName:Ljava/lang/String;

.field inputFileName:Ljava/lang/String;

.field maxOutFileDuration:I

.field maxOutFileSize:I

.field outputFileName:Ljava/lang/String;

.field startTime:I

.field transcodeMode:I

.field videoCodecType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShareViaAudioLength()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->audioLength:I

    return v0
.end method

.method public getShareViaAudioOffset()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->audioOffset:I

    return v0
.end method

.method public getShareViaTranscodeMode()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->transcodeMode:I

    return v0
.end method

.method public setShareViaAssetmngr(Landroid/content/res/AssetManager;)V
    .locals 0
    .parameter "assetmngr"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->assetmngr:Landroid/content/res/AssetManager;

    .line 51
    return-void
.end method

.method public setShareViaAudioCodec(I)V
    .locals 0
    .parameter "audiocodec"

    .prologue
    .line 98
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->audioCodecType:I

    .line 99
    return-void
.end method

.method public setShareViaAudioLength(I)V
    .locals 0
    .parameter "audioLength"

    .prologue
    .line 66
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->audioLength:I

    .line 67
    return-void
.end method

.method public setShareViaAudioOffset(I)V
    .locals 0
    .parameter "audioOffset"

    .prologue
    .line 58
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->audioOffset:I

    .line 59
    return-void
.end method

.method public setShareViaEndTime(I)V
    .locals 0
    .parameter "endtime"

    .prologue
    .line 82
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->endTime:I

    .line 83
    return-void
.end method

.method public setShareViaIconFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "outfilename"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->iconFileName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setShareViaInputFilename(Ljava/lang/String;)V
    .locals 0
    .parameter "inputfilename"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->inputFileName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setShareViaOutputFileResolution(I)V
    .locals 0
    .parameter "OutfileResolution"

    .prologue
    .line 114
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->OutFileResolution:I

    .line 115
    return-void
.end method

.method public setShareViaOutputFilename(Ljava/lang/String;)V
    .locals 0
    .parameter "outfilename"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->outputFileName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setShareViaStartTime(I)V
    .locals 0
    .parameter "starttime"

    .prologue
    .line 78
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->startTime:I

    .line 79
    return-void
.end method

.method public setShareViaTranscodeMode(I)V
    .locals 0
    .parameter "transcodeMode"

    .prologue
    .line 74
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->transcodeMode:I

    .line 75
    return-void
.end method

.method public setShareViaVideoCodec(I)V
    .locals 0
    .parameter "vtVideoCodec"

    .prologue
    .line 94
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->videoCodecType:I

    .line 95
    return-void
.end method

.method public setShareViamaxDuration(I)V
    .locals 0
    .parameter "maxduration"

    .prologue
    .line 86
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->maxOutFileDuration:I

    .line 87
    return-void
.end method

.method public setShareViamaxSize(I)V
    .locals 0
    .parameter "maxsize"

    .prologue
    .line 90
    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->maxOutFileSize:I

    .line 91
    return-void
.end method
