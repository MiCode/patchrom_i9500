.class public Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;
.super Ljava/lang/Object;
.source "TProximityKeyDetector.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_DYNAMIC_RECOGNITION_VER:Ljava/lang/String; = "dynamic_recognition_ver"

.field private static final MAX_NEARBY_KEYS:I = 0xc

.field private static final TAG:Ljava/lang/String;

.field public static isPrevLandscape:Z

.field private static mTProximityKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

.field private static prevHeight:I

.field private static prevLanguage:Ljava/lang/String;

.field private static prevMode:I

.field private static prevWidth:I

.field private static prev_nKeys:I

.field public static upEvent:Z


# instance fields
.field private final DYNAMIC_RECOGNITION_VER:I

.field private mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field mIsMiniKeyboard:Z

.field private mKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

.field private final mWindowHeight:I

.field private final mWindowWidth:I

.field private tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 54
    const-class v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->TAG:Ljava/lang/String;

    .line 64
    sput-boolean v2, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->upEvent:Z

    sput-boolean v2, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->isPrevLandscape:Z

    .line 66
    const-string v0, "LANG"

    sput-object v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevLanguage:Ljava/lang/String;

    .line 67
    sput v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevMode:I

    sput v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevWidth:I

    .line 68
    sput v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevHeight:I

    sput v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prev_nKeys:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->getInstance()Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    .line 65
    iput-boolean v5, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mIsMiniKeyboard:Z

    .line 72
    iput v4, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->DYNAMIC_RECOGNITION_VER:I

    .line 79
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 80
    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mWindowHeight:I

    .line 81
    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mWindowWidth:I

    .line 84
    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    iget-object v3, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getQwertyKeyHGap()I

    move-result v3

    iput v3, v2, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->key_horizontal_gap:I

    .line 85
    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    iget-object v3, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getQwertyKeyVGap()I

    move-result v3

    iput v3, v2, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->key_vertical_gap:I

    .line 88
    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 89
    .local v1, preference:Landroid/content/SharedPreferences;
    const-string v2, "dynamic_recognition_ver"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 90
    iget-object v2, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    iget-object v2, v2, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->data:Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->removeAllDB()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dynamic_recognition_ver"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mTProximityKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    invoke-direct {v0}, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mTProximityKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    .line 106
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mTProximityKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    return-object v0
.end method


# virtual methods
.method public dumpCurrentGrid()V
    .locals 7

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    sget-object v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevLanguage:Ljava/lang/String;

    sget v2, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevMode:I

    sget-boolean v3, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->isPrevLandscape:Z

    sget v4, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevWidth:I

    sget v5, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevHeight:I

    sget v6, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prev_nKeys:I

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->dump(Ljava/lang/String;IZIII)V

    .line 174
    return-void
.end method

.method public getKeyIndexAndNearbyCodes(II)I
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    .line 177
    move v3, p1

    .line 178
    .local v3, touchX:I
    move v4, p2

    .line 179
    .local v4, touchY:I
    const/4 v0, -0x1

    .line 181
    .local v0, primaryIndex:I
    iget-object v5, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    if-eqz v5, :cond_1

    .line 183
    new-array v2, v7, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 184
    .local v2, softkeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    iget-object v5, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #softkeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    check-cast v2, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 185
    .restart local v2       #softkeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    if-eqz v2, :cond_1

    array-length v5, v2

    if-lez v5, :cond_1

    .line 187
    if-lez v3, :cond_0

    if-lez v4, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 190
    iget-object v5, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    sget-boolean v6, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->upEvent:Z

    invoke-virtual {v5, v3, v4, v6, v2}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->getKeyIndex(IIZ[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)I

    move-result v0

    .line 194
    :cond_0
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    if-eqz v0, :cond_1

    .line 196
    sput-boolean v7, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->upEvent:Z

    move v1, v0

    .line 221
    .end local v0           #primaryIndex:I
    .end local v2           #softkeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .local v1, primaryIndex:I
    :goto_0
    return v1

    .line 211
    .end local v1           #primaryIndex:I
    .restart local v0       #primaryIndex:I
    :cond_1
    sput-boolean v7, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->upEvent:Z

    move v1, v0

    .line 221
    .end local v0           #primaryIndex:I
    .restart local v1       #primaryIndex:I
    goto :goto_0
.end method

.method public initialize(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 99
    check-cast p1, Lcom/samsung/inputmethod/SamsungIME;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 100
    return-void
.end method

.method public setKeyboard(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;FFZ)V
    .locals 15
    .parameter "keyboard"
    .parameter "correctionX"
    .parameter "correctionY"
    .parameter "isMiniKeyboard"

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 124
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v12

    .line 126
    .local v12, language:Ljava/lang/String;
    const/4 v8, 0x0

    .line 127
    .local v8, currentOrientation:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    if-eqz v1, :cond_1

    .line 128
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/4 v8, 0x1

    .line 132
    :cond_1
    :goto_0
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mIsMiniKeyboard:Z

    .line 133
    iget-boolean v1, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mIsMiniKeyboard:Z

    if-nez v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v11

    .line 135
    .local v11, info:Landroid/view/inputmethod/EditorInfo;
    if-nez v11, :cond_4

    .line 136
    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->resetGrid()V

    .line 166
    .end local v11           #info:Landroid/view/inputmethod/EditorInfo;
    :cond_2
    :goto_1
    return-void

    .line 128
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 139
    .restart local v11       #info:Landroid/view/inputmethod/EditorInfo;
    :cond_4
    iget v1, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v13, v1, 0xff0

    .line 140
    .local v13, mode:I
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    .line 141
    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v14

    .line 142
    .local v14, width:I
    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v10

    .line 143
    .local v10, height:I
    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v9, v1

    .line 145
    .local v9, nKeys:I
    sget-object v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevLanguage:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevMode:I

    if-ne v1, v13, :cond_7

    sget-boolean v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->isPrevLandscape:Z

    if-ne v1, v8, :cond_7

    if-lez v14, :cond_5

    sget v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevWidth:I

    if-ne v1, v14, :cond_7

    :cond_5
    if-lez v10, :cond_6

    sget v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevHeight:I

    if-ne v1, v10, :cond_7

    :cond_6
    sget v1, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prev_nKeys:I

    if-eq v9, v1, :cond_2

    .line 150
    :cond_7
    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    sget-object v2, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevLanguage:Ljava/lang/String;

    sget v3, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevMode:I

    sget-boolean v4, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->isPrevLandscape:Z

    sget v5, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevWidth:I

    sget v6, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevHeight:I

    sget v7, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prev_nKeys:I

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->dump(Ljava/lang/String;IZIII)V

    .line 151
    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->tmm:Lcom/samsung/inputmethod/touchmodal/TouchModalManager;

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    iget v3, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mWindowHeight:I

    :goto_2
    move-object/from16 v2, p1

    move-object v4, v12

    move v5, v13

    move v6, v14

    move v7, v10

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/inputmethod/touchmodal/TouchModalManager;->gridInitStart(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;ILjava/lang/String;IIIZI)V

    .line 155
    sput-object v12, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevLanguage:Ljava/lang/String;

    .line 156
    sput v13, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevMode:I

    .line 157
    sput-boolean v8, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->isPrevLandscape:Z

    .line 159
    sput v14, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevWidth:I

    .line 160
    sput v10, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prevHeight:I

    .line 162
    sput v9, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->prev_nKeys:I

    goto :goto_1

    .line 151
    :cond_8
    iget v3, p0, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->mWindowWidth:I

    goto :goto_2
.end method
