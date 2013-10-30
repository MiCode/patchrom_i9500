.class public Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;
.super Ljava/lang/Object;
.source "SimeHWCBService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeCBService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cbBeautifyStrokes([II[II)Lcom/samsung/inputmethod/handwriting/ReturnInfo;
    .locals 1
    .parameter "pointData"
    .parameter "pointNum"
    .parameter "contourResult"
    .parameter "contourNum"

    .prologue
    .line 137
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBBeautifyStrokes([II[II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/handwriting/ReturnInfo;

    return-object v0
.end method

.method public static cbBeautifyText([IIIII[II)Lcom/samsung/inputmethod/handwriting/ReturnInfo;
    .locals 1
    .parameter "textData"
    .parameter "textNum"
    .parameter "beautifyFlag"
    .parameter "dispOffsetX"
    .parameter "dispOffsetY"
    .parameter "contourResult"
    .parameter "contourNum"

    .prologue
    .line 145
    invoke-static/range {p0 .. p6}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBBeautifyText([IIIII[II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/handwriting/ReturnInfo;

    return-object v0
.end method

.method public static cbCloseEngine()V
    .locals 0

    .prologue
    .line 84
    invoke-static {}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBCloseEngine()V

    .line 85
    return-void
.end method

.method public static cbGetSlantDirection()I
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBGetSlantDir()I

    move-result v0

    return v0
.end method

.method public static cbGetStyleParam(II)I
    .locals 1
    .parameter "styleId"
    .parameter "styleParamIndex"

    .prologue
    .line 153
    invoke-static {p0, p1}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBGetStyleParam(II)I

    move-result v0

    return v0
.end method

.method public static cbGetStyleParams(I[I)I
    .locals 1
    .parameter "styleId"
    .parameter "styleParamValues"

    .prologue
    .line 157
    invoke-static {p0, p1}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBGetStyleParams(I[I)I

    move-result v0

    .line 162
    .local v0, err:I
    return v0
.end method

.method public static cbInitEngine()I
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBInitEngine()I

    move-result v0

    return v0
.end method

.method public static cbLoadGHB(I[B)I
    .locals 1
    .parameter "fileLen"
    .parameter "fileData"

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBLoadGHB(I[B)I

    move-result v0

    return v0
.end method

.method public static cbLoadGHBEx(Landroid/content/res/AssetManager;)I
    .locals 1
    .parameter "assetManager"

    .prologue
    .line 108
    invoke-static {p0}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBLoadGHBEx(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static cbLoadPDB(I[B)I
    .locals 1
    .parameter "fileLen"
    .parameter "fileData"

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBLoadPDB(I[B)I

    move-result v0

    return v0
.end method

.method public static cbLoadPDBEx(Landroid/content/res/AssetManager;)I
    .locals 1
    .parameter "assetManager"

    .prologue
    .line 104
    invoke-static {p0}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBLoadPDBEx(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static cbRealtimeDraw([II[II)Lcom/samsung/inputmethod/handwriting/ReturnInfo;
    .locals 1
    .parameter "pointData"
    .parameter "pointNum"
    .parameter "contourResult"
    .parameter "contourNum"

    .prologue
    .line 141
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBRealtimeDraw([II[II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/handwriting/ReturnInfo;

    return-object v0
.end method

.method public static cbSetGHBSize(I)I
    .locals 1
    .parameter "fileLen"

    .prologue
    .line 92
    invoke-static {p0}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBSetGHBSize(I)I

    move-result v0

    return v0
.end method

.method public static cbSetLayout(IIIIIIIIIIIIIIII)I
    .locals 1
    .parameter "charHeight"
    .parameter "charWidth"
    .parameter "charSpace"
    .parameter "lineHeight"
    .parameter "lineSpace"
    .parameter "paragraphSpace"
    .parameter "PageMarginLeft"
    .parameter "PageMarginTop"
    .parameter "PageMarginRight"
    .parameter "PageMarginBottom"
    .parameter "DispLeft"
    .parameter "DispTop"
    .parameter "DispRight"
    .parameter "DispBottom"
    .parameter "LayoutDir"
    .parameter "WriteDir"

    .prologue
    .line 131
    invoke-static/range {p0 .. p15}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBSetLayout(IIIIIIIIIIIIIIII)I

    move-result v0

    return v0
.end method

.method public static cbSetPDBSize(I)I
    .locals 1
    .parameter "fileLen"

    .prologue
    .line 88
    invoke-static {p0}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBSetPDBSize(I)I

    move-result v0

    return v0
.end method

.method public static cbSetRect(III)I
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "pixcelDensity"

    .prologue
    .line 112
    invoke-static {p0, p1, p2}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBSetCbRect(III)I

    move-result v0

    return v0
.end method

.method public static cbSetSlantValue(I)I
    .locals 1
    .parameter "slantValue"

    .prologue
    .line 116
    invoke-static {p0}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBSetSlantValue(I)I

    move-result v0

    return v0
.end method

.method public static cbSetStyle(I)I
    .locals 1
    .parameter "styleId"

    .prologue
    .line 120
    invoke-static {p0}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBSetStyle(I)I

    move-result v0

    return v0
.end method

.method public static cbSetStyleParam(II)I
    .locals 1
    .parameter "styleParamIndex"
    .parameter "styleParamValue"

    .prologue
    .line 124
    invoke-static {p0, p1}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->nativeCBSetStyleParam(II)I

    move-result v0

    return v0
.end method

.method static native nativeCBBeautifyStrokes([II[II)Ljava/lang/Object;
.end method

.method static native nativeCBBeautifyText([IIIII[II)Ljava/lang/Object;
.end method

.method static native nativeCBCloseEngine()V
.end method

.method static native nativeCBGetSlantDir()I
.end method

.method static native nativeCBGetStyleParam(II)I
.end method

.method static native nativeCBGetStyleParams(I[I)I
.end method

.method static native nativeCBInitEngine()I
.end method

.method static native nativeCBLoadGHB(I[B)I
.end method

.method static native nativeCBLoadGHBEx(Ljava/lang/Object;)I
.end method

.method static native nativeCBLoadPDB(I[B)I
.end method

.method static native nativeCBLoadPDBEx(Ljava/lang/Object;)I
.end method

.method static native nativeCBRealtimeDraw([II[II)Ljava/lang/Object;
.end method

.method static native nativeCBSetCbRect(III)I
.end method

.method static native nativeCBSetGHBSize(I)I
.end method

.method static native nativeCBSetLayout(IIIIIIIIIIIIIIII)I
.end method

.method static native nativeCBSetPDBSize(I)I
.end method

.method static native nativeCBSetSlantValue(I)I
.end method

.method static native nativeCBSetStyle(I)I
.end method

.method static native nativeCBSetStyleParam(II)I
.end method
