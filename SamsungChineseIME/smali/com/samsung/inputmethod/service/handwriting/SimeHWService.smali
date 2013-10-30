.class public Lcom/samsung/inputmethod/service/handwriting/SimeHWService;
.super Ljava/lang/Object;
.source "SimeHWService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeHWService"

.field private static mIsHandwriteInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->mIsHandwriteInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hwAddSelfDefineModel([IIC)I
    .locals 1
    .parameter "pointData"
    .parameter "pointNumber"
    .parameter "nDefineCode"

    .prologue
    .line 268
    invoke-static {p0, p1, p2}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWAddSelfDefineModel([IIC)I

    move-result v0

    return v0
.end method

.method public static hwCleanUserData()V
    .locals 0

    .prologue
    .line 291
    invoke-static {}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWCleanUserData()V

    .line 292
    return-void
.end method

.method public static hwDelSelfDefineModel(C)I
    .locals 1
    .parameter "nDefineCode"

    .prologue
    .line 277
    invoke-static {p0}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWDelSelfDefineModel(C)I

    move-result v0

    return v0
.end method

.method public static hwEnableSelfAdapt(I)I
    .locals 1
    .parameter "nSelfAdapt"

    .prologue
    .line 237
    invoke-static {p0}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWEnableSelfAdapt(I)I

    move-result v0

    return v0
.end method

.method public static hwEnableSelfDefine(I)I
    .locals 1
    .parameter "nSelfDefine"

    .prologue
    .line 246
    invoke-static {p0}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWEnableSelfDefine(I)I

    move-result v0

    return v0
.end method

.method public static hwEnableTraSimConversion(I)I
    .locals 1
    .parameter "traSimTag"

    .prologue
    .line 228
    invoke-static {p0}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWEnableTraSimConversion(I)I

    move-result v0

    return v0
.end method

.method public static hwInitEngine(Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;CCI)V
    .locals 6
    .parameter "language"
    .parameter "range"
    .parameter "speed"
    .parameter "simtraTag"

    .prologue
    .line 72
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 74
    .local v2, locale:Ljava/lang/String;
    sget-object v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->KOR:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    if-ne p0, v4, :cond_2

    .line 75
    const-string v2, "ko"

    .line 90
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v3

    .line 91
    .local v3, width:I
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v1

    .line 92
    .local v1, height:I
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v0

    .line 93
    .local v0, dims:I
    invoke-static {}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwReleaseDB()I

    .line 94
    invoke-static {v2}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwLoadDB(Ljava/lang/String;)I

    .line 95
    invoke-static {p1, v2}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwSetRange(CLjava/lang/String;)I

    .line 96
    invoke-static {p2}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwSetSpeed(C)I

    .line 97
    int-to-float v4, v0

    const/high16 v5, 0x4020

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v1, v4}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwSetRect(III)I

    .line 99
    const-string v4, "zh_CN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "zh_HK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "zh_TW"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    :cond_0
    invoke-static {p3}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwEnableTraSimConversion(I)I

    .line 102
    :cond_1
    return-void

    .line 76
    .end local v0           #dims:I
    .end local v1           #height:I
    .end local v3           #width:I
    :cond_2
    sget-object v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->ENG:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    if-ne p0, v4, :cond_3

    .line 77
    const-string v2, "en"

    goto :goto_0

    .line 80
    :cond_3
    sget-object v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_HK:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    if-ne p0, v4, :cond_4

    .line 81
    const-string v2, "zh_HK"

    goto :goto_0

    .line 82
    :cond_4
    sget-object v4, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_TW:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    if-ne p0, v4, :cond_5

    .line 83
    const-string v2, "zh_TW"

    goto :goto_0

    .line 87
    :cond_5
    const-string v2, "zh_CN"

    goto :goto_0
.end method

.method public static hwInitSamsungHandwriteUserDB(ZZI[C[[I[I)V
    .locals 4
    .parameter "isAdapt"
    .parameter "isDefine"
    .parameter "number"
    .parameter "unicodes"
    .parameter "points"
    .parameter "counts"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    if-eqz p0, :cond_0

    .line 106
    invoke-static {v2}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwEnableSelfAdapt(I)I

    .line 110
    :goto_0
    if-eqz p1, :cond_1

    .line 111
    invoke-static {v2}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwEnableSelfDefine(I)I

    .line 116
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p2, :cond_2

    .line 118
    aget-char v1, p3, v0

    invoke-static {v1}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwDelSelfDefineModel(C)I

    .line 119
    aget-object v1, p4, v0

    aget v2, p5, v0

    aget-char v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwAddSelfDefineModel([IIC)I

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 108
    .end local v0           #i:I
    :cond_0
    invoke-static {v1}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwEnableSelfAdapt(I)I

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v1}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwEnableSelfDefine(I)I

    goto :goto_1

    .line 121
    .restart local v0       #i:I
    :cond_2
    return-void
.end method

.method public static hwLoadDB(Ljava/lang/String;)I
    .locals 2
    .parameter "locale"

    .prologue
    .line 130
    const/4 v0, -0x1

    .line 131
    .local v0, error:I
    invoke-static {p0}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWLoadDB(Ljava/lang/String;)I

    move-result v0

    .line 132
    if-nez v0, :cond_0

    .line 133
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->mIsHandwriteInit:Z

    .line 135
    :cond_0
    return v0
.end method

.method public static hwRecogChar([III[I[C)I
    .locals 1
    .parameter "pointData"
    .parameter "pointsNumber"
    .parameter "numberOfCandidate"
    .parameter "candType"
    .parameter "candidateResult"

    .prologue
    .line 188
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWRecogChar([III[I[C)I

    move-result v0

    return v0
.end method

.method public static hwRecogString([III[I[C)I
    .locals 1
    .parameter "pointData"
    .parameter "pointsNumber"
    .parameter "numberOfCandidate"
    .parameter "candType"
    .parameter "candidateResult"

    .prologue
    .line 203
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWRecogString([III[I[C)I

    move-result v0

    return v0
.end method

.method public static hwRecogText([III[I[C)I
    .locals 1
    .parameter "pointData"
    .parameter "pointsNumber"
    .parameter "numberOfCandidate"
    .parameter "candType"
    .parameter "candidateResult"

    .prologue
    .line 218
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWRecogText([III[I[C)I

    move-result v0

    return v0
.end method

.method public static hwReleaseDB()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->mIsHandwriteInit:Z

    .line 144
    invoke-static {}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWReleaseDB()I

    move-result v0

    return v0
.end method

.method public static hwSaveUserData()V
    .locals 0

    .prologue
    .line 284
    invoke-static {}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWSaveUserData()V

    .line 285
    return-void
.end method

.method public static hwSelfAdapt(C)I
    .locals 1
    .parameter "correctResult"

    .prologue
    .line 255
    invoke-static {p0}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWSelfAdapt(C)I

    move-result v0

    return v0
.end method

.method public static hwSetRange(CLjava/lang/String;)I
    .locals 1
    .parameter "range"
    .parameter "locale"

    .prologue
    .line 154
    invoke-static {p0, p1}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWSetRange(CLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static hwSetRect(III)I
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "dims"

    .prologue
    .line 164
    invoke-static {p0, p1, p2}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWSetRect(III)I

    move-result v0

    return v0
.end method

.method public static hwSetSpeed(C)I
    .locals 1
    .parameter "speed"

    .prologue
    .line 173
    invoke-static {p0}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->nativeHWSetSpeed(C)I

    move-result v0

    return v0
.end method

.method public static isHandwriteInit()Z
    .locals 1

    .prologue
    .line 295
    sget-boolean v0, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->mIsHandwriteInit:Z

    return v0
.end method

.method static native nativeHWAddSelfDefineModel([IIC)I
.end method

.method static native nativeHWCleanUserData()V
.end method

.method static native nativeHWDelSelfDefineModel(C)I
.end method

.method static native nativeHWEnableSelfAdapt(I)I
.end method

.method static native nativeHWEnableSelfDefine(I)I
.end method

.method static native nativeHWEnableTraSimConversion(I)I
.end method

.method static native nativeHWLoadDB(Ljava/lang/String;)I
.end method

.method static native nativeHWRecogChar([III[I[C)I
.end method

.method static native nativeHWRecogString([III[I[C)I
.end method

.method static native nativeHWRecogText([III[I[C)I
.end method

.method static native nativeHWReleaseDB()I
.end method

.method static native nativeHWSaveUserData()V
.end method

.method static native nativeHWSelfAdapt(C)I
.end method

.method static native nativeHWSetRange(CLjava/lang/String;)I
.end method

.method static native nativeHWSetRect(III)I
.end method

.method static native nativeHWSetSpeed(C)I
.end method
