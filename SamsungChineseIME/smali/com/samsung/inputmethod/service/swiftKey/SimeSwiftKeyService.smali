.class public Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;
.super Ljava/lang/Object;
.source "SimeSwiftKeyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$8;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_PRESS_MODEL_DB_DIR:Ljava/lang/String; = "/KeyPressModel"

.field private static final LANGUAGE_PACK_DB_DIR:Ljava/lang/String; = "/SwiftKey"

.field private static final LAYOUT_CHARACTERMAP:I = 0x1

.field private static final LAYOUT_KEYPRESS:I = 0x0

.field private static final PRELOADED_LANGUAGE_PACK_DB_DIR:Ljava/lang/String; = "/system/sipdb"

.field private static final SWIFTKEYSDK_LICENSE:Ljava/lang/String; = "Samsung_nolimit_flow_f2498e18"

.field private static SWIFTKEY_NATIVE_LIB:Ljava/lang/String; = null

.field private static SWIFTKEY_NATIVE_LIB_RENAMED:Ljava/lang/String; = null

.field private static final SWIFT_DELIMETER:C = '\''

.field private static final SWIFT_TAG_PARAM_ENCODING:Ljava/lang/String; = "encoding"

.field private static final SWIFT_TAG_PARAM_INPUT:Ljava/lang/String; = "input"

.field private static final SwiftKeyConfigurationURL:Ljava/lang/String; = "http://www.touchtype-fluency.com/samsung/downloads/languagePacks-T0.json"

.field private static final TAG:Ljava/lang/String; = "SimeSwiftKeyService"

.field private static final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private static mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private static mLogger:Lcom/touchtype_fluency/LoggingListener;


# instance fields
.field private EMPTY:Ljava/lang/String;

.field private downloadingLPCount:I

.field private mActivePrefixSpellIndex:I

.field private mApplicationPath:Ljava/lang/String;

.field private mBackUpComsumedSpell:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackUpTouchHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/TouchHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mContextSeq:Lcom/touchtype_fluency/Sequence;

.field private mCurrentKeyPressModelFileName:Ljava/lang/String;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

.field private mEnabledLanguagePacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnginSpellLen:I

.field private mInputMode:I

.field mKeyboardCharacter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mKeyboardCoordinate:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/touchtype_fluency/Point;",
            "[",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutType:I

.field private mLoadingLanguagePacks:Z

.field private mPredictions:Lcom/touchtype_fluency/Predictions;

.field private mPrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectPhrase:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLanguagePacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mSequenceType:Lcom/touchtype_fluency/Sequence$Type;

.field private mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

.field private mSessionForChinese:Lcom/touchtype_fluency/util/SwiftKeySession;

.field private mSpell:Ljava/lang/StringBuilder;

.field private mTouchHistory:Lcom/touchtype_fluency/TouchHistory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "com.touchtype_fluency.nativeLibraryName"

    sput-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->SWIFTKEY_NATIVE_LIB:Ljava/lang/String;

    .line 74
    const-string v0, "swiftkeysdkchn-java"

    sput-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->SWIFTKEY_NATIVE_LIB_RENAMED:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$1;

    invoke-direct {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$1;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "appPath"

    .prologue
    const/16 v4, 0x28

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mApplicationPath:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForChinese:Lcom/touchtype_fluency/util/SwiftKeySession;

    .line 79
    iput-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    .line 80
    iput-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    .line 81
    sget-object v0, Lcom/touchtype_fluency/Sequence$Type;->NORMAL:Lcom/touchtype_fluency/Sequence$Type;

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSequenceType:Lcom/touchtype_fluency/Sequence$Type;

    .line 82
    const-string v0, "NotSet"

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentLanguage:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnabledModels:Ljava/util/List;

    .line 84
    iput v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mActivePrefixSpellIndex:I

    .line 89
    iput v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->downloadingLPCount:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnabledLanguagePacks:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectedLanguagePacks:Ljava/util/List;

    .line 94
    iput-boolean v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLoadingLanguagePacks:Z

    .line 96
    iput-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 97
    iput-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 98
    iput-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    .line 100
    iput v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnginSpellLen:I

    .line 102
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentKeyPressModelFileName:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->EMPTY:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPrefixList:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpTouchHistory:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpComsumedSpell:Ljava/util/ArrayList;

    .line 111
    iput v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLayoutType:I

    .line 112
    iput v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mInputMode:I

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mKeyboardCoordinate:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mKeyboardCharacter:Ljava/util/HashMap;

    .line 137
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentKeyPressModelFileName:Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mApplicationPath:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->init()I

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->countDownloadingLanguagePack(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->downloadingLPCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;I)Lcom/touchtype_fluency/Predictor$SearchType;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getSearchType(I)Lcom/touchtype_fluency/Predictor$SearchType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->downloadingLPCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Lcom/touchtype_fluency/KeyPressModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->saveKeyPressModel(Lcom/touchtype_fluency/KeyPressModel;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Lcom/touchtype_fluency/CharacterMap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setLayoutCharacterMap(Lcom/touchtype_fluency/CharacterMap;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mApplicationPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentKeyPressModelFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Lcom/touchtype_fluency/KeyPressModel;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setKeyPressModel(Lcom/touchtype_fluency/KeyPressModel;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnabledModels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->loadLanguageModel()V

    return-void
.end method

.method static synthetic access$300()Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->clearLanguagePackList()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->reinstallLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->checkDefaultLanguageForSwift(Lcom/touchtype_fluency/util/LanguagePack;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->enableModelsInTask()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)Lcom/touchtype_fluency/util/SwiftKeySession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;ZI)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->parseKeyboardData(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addNormalKey(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;)I
    .locals 3
    .parameter "data"

    .prologue
    const/high16 v2, -0x4080

    .line 1632
    iget-object v1, p1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mPoint:Lcom/touchtype_fluency/Point;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mPoint:Lcom/touchtype_fluency/Point;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Point;->getX()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mPoint:Lcom/touchtype_fluency/Point;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Point;->getY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLayoutType:I

    if-nez v1, :cond_1

    .line 1635
    sget-object v0, Lcom/touchtype_fluency/TouchHistory$ShiftState;->UNSHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    .line 1637
    .local v0, mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;
    invoke-virtual {p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1638
    sget-object v0, Lcom/touchtype_fluency/TouchHistory$ShiftState;->SHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    .line 1640
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v2, p1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mPoint:Lcom/touchtype_fluency/Point;

    invoke-virtual {v1, v2, v0}, Lcom/touchtype_fluency/TouchHistory;->addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;)V

    .line 1646
    .end local v0           #mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    const/16 v2, 0x1e

    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getCurrentPredictions(Lcom/touchtype_fluency/TouchHistory;I)V

    .line 1649
    const/4 v1, 0x0

    return v1

    .line 1644
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-char v2, p1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mInputChar:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;)V

    goto :goto_0
.end method

.method private addToneKey(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;)I
    .locals 3
    .parameter "data"

    .prologue
    .line 1611
    const/4 v0, -0x1

    .line 1613
    .local v0, ret:I
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->isLastSpellTone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1615
    iget-char v1, p1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mInputChar:C

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    .line 1617
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getLastSpell()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->circleAddValidTone(C)I

    move-result v0

    .line 1627
    :goto_0
    return v0

    .line 1621
    :cond_0
    const/4 v0, -0x2

    goto :goto_0

    .line 1625
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->addNormalKey(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;)I

    move-result v0

    goto :goto_0
.end method

.method private checkDefaultLanguageForSwift(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 3
    .parameter "lp"

    .prologue
    const/4 v2, 0x1

    .line 386
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->isPreloadLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 388
    sget-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v0, p1, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 393
    sget-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v0, p1, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    goto :goto_0

    .line 395
    :cond_2
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 397
    sget-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v0, p1, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    goto :goto_0

    .line 399
    :cond_3
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ko_KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v0

    if-ne v0, v2, :cond_4

    .line 401
    sget-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v0, p1, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    goto :goto_0

    .line 403
    :cond_4
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en_US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageEnglish()Z

    move-result v0

    if-ne v0, v2, :cond_5

    .line 405
    sget-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v0, p1, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    goto :goto_0

    .line 409
    :cond_5
    sget-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    goto :goto_0
.end method

.method private circleAddValidTone(C)I
    .locals 6
    .parameter "CurrentTone"

    .prologue
    .line 1699
    const/4 v2, -0x1

    .line 1701
    .local v2, ret:I
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->findTonePosition(C)I

    move-result v0

    .line 1702
    .local v0, currentTonePos:I
    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->toneValues:[C

    array-length v5, v5

    rem-int v1, v4, v5

    .line 1703
    .local v1, nextPos:I
    move v3, v1

    .line 1707
    .local v3, tryPos:I
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/touchtype_fluency/TouchHistory;->dropLast(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 1709
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1710
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1712
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    sget-object v5, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->toneValues:[C

    aget-char v5, v5, v3

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;)V

    .line 1714
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    const/16 v5, 0x1e

    invoke-direct {p0, v4, v5}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getCurrentPredictions(Lcom/touchtype_fluency/TouchHistory;I)V

    .line 1717
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1719
    const/4 v2, 0x0

    .line 1727
    :goto_0
    return v2

    .line 1723
    :cond_2
    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->toneValues:[C

    array-length v5, v5

    rem-int v3, v4, v5

    .line 1725
    if-ne v1, v3, :cond_0

    goto :goto_0
.end method

.method private clearLanguagePackList()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnabledLanguagePacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 311
    return-void
.end method

.method private convertCode(I)I
    .locals 4
    .parameter "code"

    .prologue
    const/4 v3, 0x0

    .line 1513
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mKeyboardCharacter:Ljava/util/HashMap;

    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1514
    .local v0, characters:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1515
    aget-object v1, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 1517
    :cond_0
    return p1
.end method

.method private declared-synchronized countDownloadingLanguagePack(Z)V
    .locals 1
    .parameter "increase"

    .prologue
    .line 301
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 302
    :try_start_0
    iget v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->downloadingLPCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->downloadingLPCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :goto_0
    monitor-exit p0

    return-void

    .line 304
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->downloadingLPCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->downloadingLPCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enableModelsInTask()V
    .locals 2

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnabledModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    new-instance v1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$7;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$7;-><init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->submitTask(Ljava/lang/Runnable;)V

    .line 1769
    :cond_0
    return-void
.end method

.method private findTonePosition(C)I
    .locals 4
    .parameter "ToneValue"

    .prologue
    .line 1664
    const/4 v2, -0x1

    .line 1666
    .local v2, pos:I
    sget-object v3, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->toneValues:[C

    array-length v1, v3

    .line 1668
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1670
    sget-object v3, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->toneValues:[C

    aget-char v3, v3, v0

    if-ne p1, v3, :cond_1

    .line 1671
    move v2, v0

    .line 1676
    :cond_0
    return v2

    .line 1668
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private get12KeyEnginKey(IILjava/lang/StringBuilder;)I
    .locals 10
    .parameter "inputMode"
    .parameter "keyCode"
    .parameter "enginStr"

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 537
    const/4 v1, -0x1

    .line 539
    .local v1, inputChar:I
    if-eqz p3, :cond_1

    .line 541
    const/4 v0, 0x0

    .line 543
    .local v0, bIsNumKey:Z
    packed-switch p1, :pswitch_data_0

    .line 577
    :pswitch_0
    if-lt p2, v8, :cond_0

    if-gt p2, v9, :cond_0

    .line 578
    const/4 v0, 0x1

    .line 582
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 583
    add-int/lit8 v4, p2, -0x8

    add-int/lit8 v1, v4, 0x31

    .line 586
    .end local v0           #bIsNumKey:Z
    :cond_1
    return v1

    .line 546
    .restart local v0       #bIsNumKey:Z
    :pswitch_1
    const/16 v4, 0x9

    if-lt p2, v4, :cond_0

    if-gt p2, v9, :cond_0

    .line 547
    const/4 v0, 0x1

    goto :goto_0

    .line 552
    :pswitch_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, label:Ljava/lang/String;
    if-eqz v2, :cond_2

    sget-object v4, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->bpmfChangeLabel:[C

    aget-char v4, v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 554
    sget-object v4, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->bpmfChangeLabel:[C

    aget-char v4, v4, v7

    sget-object v5, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->bpmfChangeLabel:[C

    const/4 v6, 0x1

    aget-char v5, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 555
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {p3, v7, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_2
    if-lt p2, v8, :cond_3

    if-gt p2, v9, :cond_3

    .line 560
    const/4 v0, 0x1

    goto :goto_0

    .line 561
    :cond_3
    const/16 v4, 0x38

    if-ne p2, v4, :cond_0

    .line 562
    const/16 v1, 0x23

    .line 563
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {p3, v7, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 564
    sget-object v4, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->toneValues:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 565
    .local v3, tones:Ljava/lang/String;
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 570
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #tones:Ljava/lang/String;
    :pswitch_3
    if-lt p2, v8, :cond_0

    const/16 v4, 0xd

    if-gt p2, v4, :cond_0

    .line 571
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {p3, v7, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 572
    sget-object v4, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->STROKE_CHARACTERS:[C

    add-int/lit8 v5, p2, -0x8

    aget-char v4, v4, v5

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    const/4 v0, 0x1

    goto :goto_0

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getConsumedSpellLen(Lcom/touchtype_fluency/Prediction;)I
    .locals 8
    .parameter "prediction"

    .prologue
    .line 1462
    const/4 v3, 0x0

    .line 1464
    .local v3, ret:I
    if-eqz p1, :cond_1

    .line 1466
    invoke-virtual {p1}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v5

    .line 1468
    .local v5, tags:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1469
    .local v1, comsumedSpell:Ljava/lang/StringBuffer;
    const-string v6, "encoding"

    invoke-direct {p0, v5, v6, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getTagInfo(Ljava/util/Set;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 1471
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1472
    .local v0, comsumedInput:Ljava/lang/StringBuffer;
    const-string v6, "input"

    invoke-direct {p0, v5, v6, v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getTagInfo(Ljava/util/Set;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 1474
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 1475
    .local v2, consumedSpellLen:I
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 1476
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1477
    .local v4, str:Ljava/lang/String;
    const-string v6, "\'"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1478
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 1480
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    move v3, v2

    .line 1482
    .end local v0           #comsumedInput:Ljava/lang/StringBuffer;
    .end local v1           #comsumedSpell:Ljava/lang/StringBuffer;
    .end local v2           #consumedSpellLen:I
    .end local v5           #tags:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return v3
.end method

.method private getCurrentPredictions(Lcom/touchtype_fluency/TouchHistory;I)V
    .locals 6
    .parameter "touchHistory"
    .parameter "num"

    .prologue
    .line 1450
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    if-eqz v3, :cond_0

    .line 1452
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    invoke-direct {v0, p2}, Lcom/touchtype_fluency/ResultsFilter;-><init>(I)V

    .line 1453
    .local v0, filter:Lcom/touchtype_fluency/ResultsFilter;
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v3

    invoke-interface {v3}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v1

    .line 1454
    .local v1, predictor:Lcom/touchtype_fluency/Predictor;
    invoke-interface {v1}, Lcom/touchtype_fluency/Predictor;->getSearchType()Lcom/touchtype_fluency/Predictor$SearchType;

    move-result-object v2

    .line 1455
    .local v2, type:Lcom/touchtype_fluency/Predictor$SearchType;
    const-string v3, "SimeSwiftKeyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPredictions searchType ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    invoke-interface {v1, v3, p1, v0}, Lcom/touchtype_fluency/Predictor;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 1459
    .end local v0           #filter:Lcom/touchtype_fluency/ResultsFilter;
    .end local v1           #predictor:Lcom/touchtype_fluency/Predictor;
    .end local v2           #type:Lcom/touchtype_fluency/Predictor$SearchType;
    :cond_0
    return-void
.end method

.method private getDispStrokeByEngineCode(C)C
    .locals 7
    .parameter "code"

    .prologue
    .line 1495
    move v5, p1

    .line 1496
    .local v5, retCode:C
    const/4 v3, 0x0

    .line 1498
    .local v3, index:I
    sget-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->STROKE_CHARACTERS:[C

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-char v1, v0, v2

    .line 1499
    .local v1, chr:C
    if-ne v1, p1, :cond_2

    .line 1504
    .end local v1           #chr:C
    :cond_0
    sget-object v6, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->STROKE_CHARACTERS:[C

    array-length v6, v6

    if-ge v3, v6, :cond_1

    sget-object v6, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->STROKE_DISPLAY_MAP:[C

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 1506
    sget-object v6, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->STROKE_DISPLAY_MAP:[C

    aget-char v5, v6, v3

    .line 1508
    :cond_1
    return v5

    .line 1501
    .restart local v1       #chr:C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 1498
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getEnginKey(ZIILjava/lang/StringBuilder;)I
    .locals 1
    .parameter "phonepad"
    .parameter "inputMode"
    .parameter "keyCode"
    .parameter "enginStr"

    .prologue
    .line 592
    const/4 v0, -0x1

    .line 594
    .local v0, inputChar:I
    if-eqz p1, :cond_0

    .line 595
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->get12KeyEnginKey(IILjava/lang/StringBuilder;)I

    move-result v0

    .line 600
    :goto_0
    return v0

    .line 598
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getQwertyEnginKey(IILjava/lang/StringBuilder;)I

    move-result v0

    goto :goto_0
.end method

.method public static getLanguagePackManager(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 4
    .parameter "applicationPath"

    .prologue
    .line 262
    if-nez p0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/touchtype_fluency/util/FileStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/SwiftKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/sipdb"

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/util/FileStorage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http://www.touchtype-fluency.com/samsung/downloads/languagePacks-T0.json"

    const/4 v2, 0x4

    sget-object v3, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLogger:Lcom/touchtype_fluency/LoggingListener;

    invoke-static {v0, v1, v2, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getInstance(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    goto :goto_0
.end method

.method private getLastSpell()C
    .locals 4

    .prologue
    .line 1681
    const/4 v1, 0x0

    .line 1682
    .local v1, spellChar:C
    const/4 v0, 0x0

    .line 1684
    .local v0, len:I
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1686
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 1689
    :cond_0
    return v1
.end method

.method private getQwertyEnginKey(IILjava/lang/StringBuilder;)I
    .locals 9
    .parameter "inputMode"
    .parameter "keyCode"
    .parameter "enginStr"

    .prologue
    const/16 v8, 0x36

    const/16 v7, 0x1d

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 476
    const/4 v2, -0x1

    .line 478
    .local v2, inputChar:I
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 480
    const/4 v0, 0x0

    .line 482
    .local v0, bIsEnginKey:Z
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 484
    .local v1, ch:C
    if-nez p1, :cond_5

    .line 492
    sget-object v3, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->bpmfChangeLabel:[C

    aget-char v3, v3, v4

    if-ne v1, v3, :cond_2

    .line 493
    sget-object v3, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->bpmfChangeLabel:[C

    aget-char v1, v3, v5

    .line 494
    const/4 v0, 0x1

    .line 520
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 521
    move v2, v1

    .line 522
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p3, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    .end local v0           #bIsEnginKey:Z
    .end local v1           #ch:C
    :cond_1
    return v2

    .line 496
    .restart local v0       #bIsEnginKey:Z
    .restart local v1       #ch:C
    :cond_2
    const/16 v3, 0x3105

    if-lt v1, v3, :cond_3

    const/16 v3, 0x3129

    if-le v1, v3, :cond_4

    :cond_3
    const/16 v3, 0x2ca

    if-eq v1, v3, :cond_4

    const/16 v3, 0x2c7

    if-eq v1, v3, :cond_4

    const/16 v3, 0x2cb

    if-eq v1, v3, :cond_4

    const/16 v3, 0x2d9

    if-ne v1, v3, :cond_0

    .line 498
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 502
    :cond_5
    const/4 v3, 0x3

    if-eq p1, v3, :cond_6

    if-ne p1, v6, :cond_8

    .line 504
    :cond_6
    if-lt p2, v7, :cond_7

    if-gt p2, v8, :cond_7

    .line 506
    add-int/lit8 v3, p2, -0x1d

    add-int/lit8 v3, v3, 0x41

    int-to-char v1, v3

    .line 507
    const/4 v0, 0x1

    .line 510
    :cond_7
    if-eqz v0, :cond_0

    if-ne p1, v6, :cond_0

    .line 511
    add-int/lit8 v3, v1, 0x20

    int-to-char v1, v3

    goto :goto_0

    .line 515
    :cond_8
    if-lt p2, v7, :cond_0

    if-gt p2, v8, :cond_0

    .line 516
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getSearchType(I)Lcom/touchtype_fluency/Predictor$SearchType;
    .locals 1
    .parameter "inputMode"

    .prologue
    .line 1732
    sget-object v0, Lcom/touchtype_fluency/Predictor$SearchType;->NORMAL:Lcom/touchtype_fluency/Predictor$SearchType;

    .line 1734
    .local v0, searchType:Lcom/touchtype_fluency/Predictor$SearchType;
    packed-switch p1, :pswitch_data_0

    .line 1749
    sget-object v0, Lcom/touchtype_fluency/Predictor$SearchType;->NORMAL:Lcom/touchtype_fluency/Predictor$SearchType;

    .line 1752
    :goto_0
    return-object v0

    .line 1737
    :pswitch_0
    sget-object v0, Lcom/touchtype_fluency/Predictor$SearchType;->CANGJIE:Lcom/touchtype_fluency/Predictor$SearchType;

    .line 1738
    goto :goto_0

    .line 1740
    :pswitch_1
    sget-object v0, Lcom/touchtype_fluency/Predictor$SearchType;->PINYIN:Lcom/touchtype_fluency/Predictor$SearchType;

    .line 1741
    goto :goto_0

    .line 1743
    :pswitch_2
    sget-object v0, Lcom/touchtype_fluency/Predictor$SearchType;->ZHUYIN:Lcom/touchtype_fluency/Predictor$SearchType;

    .line 1744
    goto :goto_0

    .line 1746
    :pswitch_3
    sget-object v0, Lcom/touchtype_fluency/Predictor$SearchType;->STROKE:Lcom/touchtype_fluency/Predictor$SearchType;

    .line 1747
    goto :goto_0

    .line 1734
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private getSelectPhrases()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1487
    .local v1, selHistory:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/Prediction;

    .line 1488
    .local v2, selPhrase:Lcom/touchtype_fluency/Prediction;
    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1490
    .end local v2           #selPhrase:Lcom/touchtype_fluency/Prediction;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getSequence(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;
    .locals 4
    .parameter "inputContext"

    .prologue
    .line 1424
    if-eqz p1, :cond_1

    .line 1425
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v1

    .line 1426
    .local v1, tokenizer:Lcom/touchtype_fluency/Tokenizer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/touchtype_fluency/Tokenizer;->splitContextCurrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v0

    .line 1428
    .local v0, ccw:Lcom/touchtype_fluency/ContextCurrentWord;
    invoke-virtual {v0}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    .line 1429
    invoke-virtual {v0}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1430
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v0}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/Sequence;->append(Ljava/lang/String;)V

    .line 1436
    .end local v0           #ccw:Lcom/touchtype_fluency/ContextCurrentWord;
    .end local v1           #tokenizer:Lcom/touchtype_fluency/Tokenizer;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSequenceType:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 1443
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    return-object v2

    .line 1434
    :cond_1
    new-instance v2, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v2}, Lcom/touchtype_fluency/Sequence;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    goto :goto_0
.end method

.method private getTagInfo(Ljava/util/Set;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 6
    .parameter
    .parameter "tagParam"
    .parameter "inputStr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, tagStr:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1522
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 1523
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1524
    .local v1, tag:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1525
    .local v2, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1526
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1527
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1532
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #tag:Ljava/lang/String;
    .end local v2           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private init()I
    .locals 4

    .prologue
    .line 146
    sget-object v1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->SWIFTKEY_NATIVE_LIB:Ljava/lang/String;

    sget-object v2, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->SWIFTKEY_NATIVE_LIB_RENAMED:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->dispose()V

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForChinese:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForChinese:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->dispose()V

    .line 160
    :cond_1
    :try_start_0
    const-string v1, "Samsung_nolimit_flow_f2498e18"

    invoke-static {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->create(Ljava/lang/String;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    .line 161
    const-string v1, "Samsung_nolimit_flow_f2498e18"

    invoke-static {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->create(Ljava/lang/String;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForChinese:Lcom/touchtype_fluency/util/SwiftKeySession;

    .line 163
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->initLogger()V

    .line 164
    sget-object v1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLogger:Lcom/touchtype_fluency/LoggingListener;

    if-eqz v1, :cond_2

    .line 165
    sget-object v1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLogger:Lcom/touchtype_fluency/LoggingListener;

    invoke-static {v1}, Lcom/touchtype_fluency/SwiftKeySDK;->setLoggingListener(Lcom/touchtype_fluency/LoggingListener;)V

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mApplicationPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getLanguagePackManager(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForChinese:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-nez v1, :cond_4

    .line 179
    :cond_3
    const-string v1, "SimeSwiftKeyService"

    const-string v2, "Fail to init input engine : NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v1, -0x1

    .line 191
    :goto_1
    return v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, ex:Lcom/touchtype_fluency/LicenseException;
    const-string v1, "SimeSwiftKeyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invaild swiftkey license : Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/touchtype_fluency/LicenseException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    .end local v0           #ex:Lcom/touchtype_fluency/LicenseException;
    :cond_4
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->installPreloadLanguagePack()V

    .line 183
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->loadLanguageModel()V

    .line 191
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initLogger()V
    .locals 1

    .prologue
    .line 280
    new-instance v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$2;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$2;-><init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V

    sput-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLogger:Lcom/touchtype_fluency/LoggingListener;

    .line 298
    return-void
.end method

.method private installPreloadLanguagePack()V
    .locals 4

    .prologue
    .line 330
    :try_start_0
    sget-object v1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    const-string v2, "Samsung_nolimit_flow_f2498e18"

    new-instance v3, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;

    invoke-direct {v3, p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;-><init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V

    invoke-virtual {v1, v2, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->verify(Ljava/lang/String;Lcom/touchtype_fluency/util/CompletionListener;)Z
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Lcom/touchtype_fluency/LicenseException;
    const-string v1, "SimeSwiftKeyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invaild swiftkey license : Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/touchtype_fluency/LicenseException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isLastSpellTone()Z
    .locals 2

    .prologue
    .line 1694
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getLastSpell()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->findTonePosition(C)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreloadLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)Z
    .locals 2
    .parameter "language"

    .prologue
    .line 415
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getPreinstallFile()Ljava/io/File;

    move-result-object v0

    .line 416
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 417
    :cond_0
    const/4 v1, 0x0

    .line 419
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isToneKey(C)Z
    .locals 3
    .parameter "inputChar"

    .prologue
    .line 1654
    const/4 v0, 0x0

    .line 1656
    .local v0, bRet:Z
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->findTonePosition(C)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x23

    if-ne p1, v1, :cond_1

    .line 1657
    :cond_0
    const/4 v0, 0x1

    .line 1660
    :cond_1
    return v0
.end method

.method private learnKeyPress(Lcom/touchtype_fluency/Prediction;)V
    .locals 2
    .parameter "prediction"

    .prologue
    .line 1414
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v1, :cond_0

    .line 1415
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v0

    .line 1417
    .local v0, keyPressModel:Lcom/touchtype_fluency/KeyPressModel;
    iget v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLayoutType:I

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1418
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-interface {v0, v1, p1}, Lcom/touchtype_fluency/KeyPressModel;->learnFrom(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Prediction;)V

    .line 1420
    .end local v0           #keyPressModel:Lcom/touchtype_fluency/KeyPressModel;
    :cond_0
    return-void
.end method

.method private loadLanguageModel()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 208
    sget-object v7, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v0

    .line 209
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 210
    sget-object v7, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v1

    .line 212
    .local v1, enabledLanaguages:Ljava/util/List;,"Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v5, lpList:Ljava/util/List;,"Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v6, lpListForChinese:Ljava/util/List;,"Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/4 v3, 0x0

    .line 215
    .local v3, isEnableChinese:Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/touchtype_fluency/util/LanguagePack;

    .line 217
    .local v4, lang:Lcom/touchtype_fluency/util/LanguagePack;
    const-string v7, "zh"

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 218
    const/4 v3, 0x1

    .line 219
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_1
    const-string v7, "en"

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "ko"

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 221
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    .end local v4           #lang:Lcom/touchtype_fluency/util/LanguagePack;
    :cond_3
    if-eqz v3, :cond_6

    .line 228
    iget-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForChinese:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v7, v10}, Lcom/touchtype_fluency/util/SwiftKeySession;->setDynamicModelsEnabled(Z)V

    .line 229
    iget-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForChinese:Lcom/touchtype_fluency/util/SwiftKeySession;

    sget-object v8, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v7, v6, v8}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    .line 230
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 231
    iget-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/touchtype_fluency/util/SwiftKeySession;->setDynamicModelsEnabled(Z)V

    .line 232
    iget-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    sget-object v8, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v7, v5, v8}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    .line 241
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v7}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    const-string v9, "blacklist"

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/touchtype_fluency/Trainer;->setBlacklist(Ljava/lang/String;)V

    .line 245
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_5

    .line 246
    iput-boolean v10, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLoadingLanguagePacks:Z

    .line 248
    :cond_5
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->updateEnabledLanguageList(Ljava/util/List;)V

    .line 250
    return-void

    .line 235
    :cond_6
    const-string v7, "SimeSwiftKeyService"

    const-string v8, "loadEnabledLanguages models"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v7, v10}, Lcom/touchtype_fluency/util/SwiftKeySession;->setDynamicModelsEnabled(Z)V

    .line 237
    iget-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    sget-object v8, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v7, v8}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadEnabledLanguages(Lcom/touchtype_fluency/util/LanguagePackManager;)V

    goto :goto_1
.end method

.method private parseKeyboardData(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;ZI)Ljava/lang/String;
    .locals 26
    .parameter "keyboard"
    .parameter "phonepad"
    .parameter "inputMode"

    .prologue
    .line 609
    const/4 v7, 0x0

    .line 611
    .local v7, fileName:Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 613
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v14

    .line 614
    .local v14, keys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .local v4, allkeys:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mKeyboardCoordinate:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mKeyboardCharacter:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 621
    .local v16, startTime:Ljava/lang/Long;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 623
    .local v12, key:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-virtual {v12}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v13

    .line 625
    .local v13, keyStr:Ljava/lang/String;
    const/4 v6, 0x0

    .line 627
    .local v6, enginStr:Ljava/lang/StringBuilder;
    if-eqz v13, :cond_1

    .line 628
    const-string v20, " "

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 629
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #enginStr:Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    .restart local v6       #enginStr:Ljava/lang/StringBuilder;
    :cond_1
    const/4 v11, -0x1

    .line 634
    .local v11, inputChar:I
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_0

    invoke-virtual {v12}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getEnginKey(ZIILjava/lang/StringBuilder;)I

    move-result v11

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_0

    .line 639
    iget v0, v12, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v20, v0

    invoke-virtual {v12}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v18, v20, v21

    .line 640
    .local v18, x:I
    iget v0, v12, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v20, v0

    invoke-virtual {v12}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v19, v20, v21

    .line 641
    .local v19, y:I
    new-instance v15, Lcom/touchtype_fluency/Point;

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    .line 642
    .local v15, pointInfo:Lcom/touchtype_fluency/Point;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    move/from16 v0, v20

    new-array v5, v0, [Ljava/lang/Character;

    .line 643
    .local v5, alternatives:[Ljava/lang/Character;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 644
    .local v17, strAlternatives:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    .line 645
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    aput-object v20, v5, v9

    .line 646
    aget-object v20, v5, v9

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v17, v9

    .line 644
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 648
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mKeyboardCoordinate:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mKeyboardCharacter:Ljava/util/HashMap;

    move-object/from16 v20, v0

    int-to-char v0, v11

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 651
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 653
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 656
    .end local v5           #alternatives:[Ljava/lang/Character;
    .end local v6           #enginStr:Ljava/lang/StringBuilder;
    .end local v9           #i:I
    .end local v11           #inputChar:I
    .end local v12           #key:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .end local v13           #keyStr:Ljava/lang/String;
    .end local v15           #pointInfo:Lcom/touchtype_fluency/Point;
    .end local v17           #strAlternatives:[Ljava/lang/String;
    .end local v18           #x:I
    .end local v19           #y:I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->hashCode()I

    move-result v8

    .line 657
    .local v8, hashValue:I
    const-string v20, "model_%d.im"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 658
    const-string v20, "SimeSwiftKeyService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "parseKeyboardData cost time="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    sub-long v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .end local v4           #allkeys:Ljava/lang/StringBuilder;
    .end local v8           #hashValue:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v14           #keys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    .end local v16           #startTime:Ljava/lang/Long;
    :cond_4
    return-object v7
.end method

.method private reinstallLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 2
    .parameter "languagePack"

    .prologue
    .line 314
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->countDownloadingLanguagePack(Z)V

    .line 315
    sget-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    .line 316
    sget-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    new-instance v1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$3;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$3;-><init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V

    invoke-virtual {v0, p1, v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z

    .line 326
    return-void
.end method

.method private removeLastSequnce()V
    .locals 2

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v0}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Sequence;->remove(I)Ljava/lang/String;

    .line 1392
    :cond_0
    return-void
.end method

.method private saveKeyPressModel(Lcom/touchtype_fluency/KeyPressModel;)V
    .locals 3
    .parameter "keyPressModel"

    .prologue
    .line 452
    if-nez p1, :cond_1

    .line 453
    const-string v1, "SimeSwiftKeyService"

    const-string v2, "save KeyPressModel keyPressModel has not init"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentKeyPressModelFileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentKeyPressModelFileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentKeyPressModelFileName:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/touchtype_fluency/KeyPressModel;->saveFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 469
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->EMPTY:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentKeyPressModelFileName:Ljava/lang/String;

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "SimeSwiftKeyService"

    const-string v2, "first time: not created yet - will happen below"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 466
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 467
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SimeSwiftKeyService"

    const-string v2, "can\'t save - not much we can do - just too bad"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private saveSequence(Ljava/lang/String;)V
    .locals 9
    .parameter "text"

    .prologue
    .line 424
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v8, :cond_2

    if-eqz p1, :cond_2

    .line 425
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v8}, Lcom/touchtype_fluency/util/SwiftKeySession;->resetTemporaryModel()V

    .line 426
    new-instance v0, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v0}, Lcom/touchtype_fluency/Sequence;-><init>()V

    .line 427
    .local v0, currentSequence:Lcom/touchtype_fluency/Sequence;
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v8}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v1

    .line 428
    .local v1, currentSession:Lcom/touchtype_fluency/Session;
    sget-object v8, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v0, v8}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 429
    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v6

    .line 430
    .local v6, tokenizer:Lcom/touchtype_fluency/Tokenizer;
    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v4

    .line 431
    .local v4, predictor:Lcom/touchtype_fluency/Predictor;
    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v7

    .line 433
    .local v7, trainer:Lcom/touchtype_fluency/Trainer;
    invoke-interface {v6, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v8

    invoke-virtual {v8}, Lcom/touchtype_fluency/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 434
    .local v5, token:Ljava/lang/String;
    invoke-interface {v4, v5}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 435
    invoke-interface {v7, v0}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    .line 436
    new-instance v0, Lcom/touchtype_fluency/Sequence;

    .end local v0           #currentSequence:Lcom/touchtype_fluency/Sequence;
    invoke-direct {v0}, Lcom/touchtype_fluency/Sequence;-><init>()V

    .line 438
    .restart local v0       #currentSequence:Lcom/touchtype_fluency/Sequence;
    :cond_0
    invoke-virtual {v0, v5}, Lcom/touchtype_fluency/Sequence;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    .end local v5           #token:Ljava/lang/String;
    :cond_1
    invoke-interface {v7, v0}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    .line 442
    :try_start_0
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v8}, Lcom/touchtype_fluency/util/SwiftKeySession;->writeDynamicModel()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v0           #currentSequence:Lcom/touchtype_fluency/Sequence;
    .end local v1           #currentSession:Lcom/touchtype_fluency/Session;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #predictor:Lcom/touchtype_fluency/Predictor;
    .end local v6           #tokenizer:Lcom/touchtype_fluency/Tokenizer;
    .end local v7           #trainer:Lcom/touchtype_fluency/Trainer;
    :cond_2
    :goto_1
    return-void

    .line 443
    .restart local v0       #currentSequence:Lcom/touchtype_fluency/Sequence;
    .restart local v1       #currentSession:Lcom/touchtype_fluency/Session;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #predictor:Lcom/touchtype_fluency/Predictor;
    .restart local v6       #tokenizer:Lcom/touchtype_fluency/Tokenizer;
    .restart local v7       #trainer:Lcom/touchtype_fluency/Trainer;
    :catch_0
    move-exception v2

    .line 445
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private setKeyPressModel(Lcom/touchtype_fluency/KeyPressModel;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .parameter "keyPressModel"
    .parameter "fileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/KeyPressModel;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/touchtype_fluency/Point;",
            "[",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 810
    .local p3, coords:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/touchtype_fluency/Point;[Ljava/lang/Character;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 813
    :try_start_0
    invoke-interface {p1, p2}, Lcom/touchtype_fluency/KeyPressModel;->loadFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentKeyPressModelFileName:Ljava/lang/String;

    .line 823
    :cond_1
    return-void

    .line 814
    :catch_0
    move-exception v0

    .line 818
    .local v0, e:Ljava/io/IOException;
    if-eqz p3, :cond_0

    .line 819
    invoke-interface {p1, p3}, Lcom/touchtype_fluency/KeyPressModel;->set(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private setLayoutCharacterMap(Lcom/touchtype_fluency/CharacterMap;I)V
    .locals 1
    .parameter "characterMap"
    .parameter "inputMode"

    .prologue
    .line 827
    if-eqz p1, :cond_0

    .line 851
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mKeyboardCharacter:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Lcom/touchtype_fluency/CharacterMap;->setLayout(Ljava/util/Map;)V

    .line 853
    :cond_0
    return-void
.end method

.method private setSpellFromPrediction(Lcom/touchtype_fluency/Prediction;I)V
    .locals 18
    .parameter "prediction"
    .parameter "keyChar"

    .prologue
    .line 1540
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/touchtype_fluency/Prediction;->size()I

    move-result v14

    if-nez v14, :cond_1

    .line 1607
    :cond_0
    return-void

    .line 1542
    :cond_1
    const/4 v8, 0x0

    .line 1543
    .local v8, keyCode:I
    invoke-virtual/range {p1 .. p1}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v13

    .line 1544
    .local v13, tags:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1546
    .local v7, inputSpell:Ljava/lang/StringBuffer;
    const-string v14, "input"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v7}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getTagInfo(Ljava/util/Set;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 1548
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnginSpellLen:I

    .line 1550
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-lez v14, :cond_3

    .line 1552
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->convertCode(I)I

    move-result v8

    .line 1553
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mInputMode:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    .line 1554
    int-to-char v14, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getDispStrokeByEngineCode(C)C

    move-result v8

    .line 1557
    :cond_2
    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v14}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v14

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    if-le v14, v15, :cond_6

    .line 1558
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    int-to-char v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1595
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_4

    .line 1596
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1599
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/touchtype_fluency/Prediction;->getTermBreaks()[Ljava/lang/Integer;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/Integer;
    array-length v9, v2

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v9, :cond_0

    aget-object v11, v2, v6

    .line 1601
    .local v11, n:Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-ge v14, v15, :cond_5

    .line 1602
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1599
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1562
    .end local v2           #arr$:[Ljava/lang/Integer;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .end local v11           #n:Ljava/lang/Integer;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1563
    .local v4, enCodeSpell:Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 1565
    .local v12, spellLen:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-ge v5, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v14}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v14

    if-ge v12, v14, :cond_9

    .line 1566
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mInputMode:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    .line 1567
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getDispStrokeByEngineCode(C)C

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1568
    add-int/lit8 v12, v12, 0x1

    .line 1565
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1570
    :cond_7
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0x27

    if-eq v14, v15, :cond_8

    .line 1571
    add-int/lit8 v12, v12, 0x1

    .line 1573
    :cond_8
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1578
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1579
    .local v3, delLen:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 1582
    .local v10, lowerStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1583
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private trainSelectwords(Ljava/lang/String;)V
    .locals 3
    .parameter "selWords"

    .prologue
    .line 1395
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/Sequence;->append(Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->temporaryDynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TagSelector;)V

    .line 1410
    :cond_0
    return-void
.end method

.method private updateEnabledLanguageList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, enabledLanaguage:Ljava/util/List;,"Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnabledLanguagePacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 254
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/util/LanguagePack;

    .line 255
    .local v1, langaugePack:Lcom/touchtype_fluency/util/LanguagePack;
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnabledLanguagePacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    .end local v1           #langaugePack:Lcom/touchtype_fluency/util/LanguagePack;
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnabledLanguagePacks:Ljava/util/List;

    sget-object v3, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 258
    return-void
.end method


# virtual methods
.method public addCharacter(C)V
    .locals 2
    .parameter "ch"

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    if-nez v0, :cond_0

    .line 1329
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 1331
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;)V

    .line 1332
    return-void
.end method

.method public addInputContext(Ljava/lang/String;Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;)I
    .locals 3
    .parameter "inputContext"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 883
    const/4 v0, -0x1

    .line 886
    .local v0, ret:I
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v1, :cond_6

    .line 888
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mActivePrefixSpellIndex:I

    .line 890
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    if-nez v1, :cond_0

    .line 891
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v1}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 893
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v1}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 894
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 895
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 897
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpTouchHistory:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 898
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpTouchHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 900
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpComsumedSpell:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 901
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpComsumedSpell:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 903
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 906
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getSequence(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    .line 908
    iget-char v1, p2, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mInputChar:C

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->isToneKey(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 910
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->addToneKey(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;)I

    move-result v0

    .line 917
    :goto_0
    if-nez v0, :cond_6

    .line 920
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 921
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentLanguage:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->isChineseLanguage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 923
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v1

    iget-char v2, p2, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mInputChar:C

    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setSpellFromPrediction(Lcom/touchtype_fluency/Prediction;I)V

    .line 925
    :cond_5
    const/4 v0, 0x0

    .line 936
    :cond_6
    :goto_1
    return v0

    .line 914
    :cond_7
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->addNormalKey(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;)I

    move-result v0

    goto :goto_0

    .line 927
    :cond_8
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/TouchHistory;->dropLast(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 929
    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    const/16 v2, 0x1e

    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getCurrentPredictions(Lcom/touchtype_fluency/TouchHistory;I)V

    .line 931
    const/4 v0, -0x2

    goto :goto_1
.end method

.method public addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;)V
    .locals 1
    .parameter "point"
    .parameter "shifted"

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    if-nez v0, :cond_0

    .line 1343
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v0, p1, p2}, Lcom/touchtype_fluency/TouchHistory;->addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;)V

    .line 1346
    return-void
.end method

.method public addString(Ljava/lang/String;)V
    .locals 1
    .parameter "inputString"

    .prologue
    .line 1335
    if-eqz p1, :cond_0

    .line 1336
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0, p1}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 1338
    :cond_0
    return-void
.end method

.method public deleteAlpha()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1350
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v0}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/TouchHistory;->dropLast(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 1355
    :goto_0
    return-void

    .line 1353
    :cond_0
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    goto :goto_0
.end method

.method public deleteInput()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 941
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 943
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->removeLastSequnce()V

    .line 944
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 945
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getSelectPhrases()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->trainSelectwords(Ljava/lang/String;)V

    .line 946
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpTouchHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 947
    .local v1, index:I
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpTouchHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 949
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpTouchHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/TouchHistory;

    .line 950
    .local v0, backupHistory:Lcom/touchtype_fluency/TouchHistory;
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v0, v3}, Lcom/touchtype_fluency/TouchHistory;->appendHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 951
    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 952
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpTouchHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 955
    .end local v0           #backupHistory:Lcom/touchtype_fluency/TouchHistory;
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpComsumedSpell:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 957
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpComsumedSpell:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpComsumedSpell:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 958
    .local v2, lastSpell:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpComsumedSpell:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpComsumedSpell:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 976
    .end local v1           #index:I
    .end local v2           #lastSpell:Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mActivePrefixSpellIndex:I

    .line 978
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    const/16 v4, 0x1e

    invoke-direct {p0, v3, v4}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getCurrentPredictions(Lcom/touchtype_fluency/TouchHistory;I)V

    .line 981
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v3}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 982
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v3, v5}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setSpellFromPrediction(Lcom/touchtype_fluency/Prediction;I)V

    .line 984
    :cond_2
    return v5

    .line 963
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v3}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v3

    if-le v3, v4, :cond_4

    .line 964
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v3, v4}, Lcom/touchtype_fluency/TouchHistory;->dropLast(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 965
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 966
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 968
    :cond_4
    new-instance v3, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v3}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 969
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 970
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 971
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpTouchHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 972
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpComsumedSpell:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForChinese:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForChinese:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->dispose()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->dispose()V

    .line 202
    :cond_1
    return-void
.end method

.method public dump()V
    .locals 3

    .prologue
    .line 276
    const-string v0, "SimeSwiftKeyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwiftKeySDK version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method public enableVerbatim(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 1376
    :try_start_0
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v3

    invoke-interface {v3}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v2

    .line 1377
    .local v2, params:Lcom/touchtype_fluency/ParameterSet;
    const-string v3, "results"

    const-string v4, "verbatim-probability"

    invoke-interface {v2, v3, v4}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v1

    .line 1378
    .local v1, param:Lcom/touchtype_fluency/Parameter;
    if-eqz p1, :cond_0

    .line 1379
    invoke-interface {v1}, Lcom/touchtype_fluency/Parameter;->defaultValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 1387
    .end local v1           #param:Lcom/touchtype_fluency/Parameter;
    .end local v2           #params:Lcom/touchtype_fluency/ParameterSet;
    :goto_0
    return-void

    .line 1381
    .restart local v1       #param:Lcom/touchtype_fluency/Parameter;
    .restart local v2       #params:Lcom/touchtype_fluency/ParameterSet;
    :cond_0
    new-instance v3, Ljava/lang/Float;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v1, v3}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/touchtype_fluency/ParameterOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1384
    .end local v1           #param:Lcom/touchtype_fluency/Parameter;
    .end local v2           #params:Lcom/touchtype_fluency/ParameterSet;
    :catch_0
    move-exception v0

    .line 1385
    .local v0, e:Lcom/touchtype_fluency/ParameterOutOfRangeException;
    const-string v3, "SimeSwiftKeyService"

    const-string v4, "Error enabling wildcards"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableWildcards(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 1365
    :try_start_0
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v3

    invoke-interface {v3}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v1

    .line 1366
    .local v1, parameters:Lcom/touchtype_fluency/ParameterSet;
    const-string v3, "input-model"

    const-string v4, "use-wildcards"

    invoke-interface {v1, v3, v4}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v2

    .line 1367
    .local v2, useWildcards:Lcom/touchtype_fluency/Parameter;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/touchtype_fluency/ParameterOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    .end local v1           #parameters:Lcom/touchtype_fluency/ParameterSet;
    .end local v2           #useWildcards:Lcom/touchtype_fluency/Parameter;
    :goto_0
    return-void

    .line 1369
    :catch_0
    move-exception v0

    .line 1370
    .local v0, e:Lcom/touchtype_fluency/ParameterOutOfRangeException;
    const-string v3, "SimeSwiftKeyService"

    const-string v4, "Error enabling wildcards"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCandList(Ljava/util/List;II)I
    .locals 5
    .parameter
    .parameter "startIdx"
    .parameter "fetchCnt"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 1059
    .local p1, candList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    const/4 v1, 0x0

    .line 1067
    .local v1, getCnt:I
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v4, :cond_0

    .line 1069
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v3

    .line 1070
    .local v3, size:I
    move v2, p2

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    if-ge v1, p3, :cond_0

    .line 1071
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4, v2}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v0, candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->setContentType(I)V

    .line 1074
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    add-int/lit8 v1, v1, 0x1

    .line 1070
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1078
    .end local v0           #candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    .end local v2           #i:I
    .end local v3           #size:I
    :cond_0
    return v1
.end method

.method public getPredictions()Lcom/touchtype_fluency/Predictions;
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    return-object v0
.end method

.method public getPredicts(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)I
    .locals 8
    .parameter "inputContext"
    .parameter
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1034
    .local p2, candList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    const/4 v6, -0x1

    .line 1036
    .local v6, ret:I
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1038
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v1}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    .line 1040
    .local v1, currentInput:Lcom/touchtype_fluency/TouchHistory;
    iget-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v7}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v7

    invoke-interface {v7}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v4

    .local v4, predictor:Lcom/touchtype_fluency/Predictor;
    move-object v5, p3

    .line 1042
    check-cast v5, Lcom/touchtype_fluency/ResultsFilter;

    .line 1044
    .local v5, resFilter:Lcom/touchtype_fluency/ResultsFilter;
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getSequence(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v7

    invoke-interface {v4, v7, v1, v5}, Lcom/touchtype_fluency/Predictor;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 1047
    iget-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v7}, Lcom/touchtype_fluency/Predictions;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/Prediction;

    .line 1048
    .local v3, prediction:Lcom/touchtype_fluency/Prediction;
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-virtual {v3}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v0, candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->setContentType(I)V

    .line 1050
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1054
    .end local v0           #candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    .end local v1           #currentInput:Lcom/touchtype_fluency/TouchHistory;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #prediction:Lcom/touchtype_fluency/Prediction;
    .end local v4           #predictor:Lcom/touchtype_fluency/Predictor;
    .end local v5           #resFilter:Lcom/touchtype_fluency/ResultsFilter;
    :cond_0
    return v6
.end method

.method public getPrefixPredicts(Ljava/util/List;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, candidateList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1083
    const/4 v1, -0x1

    .line 1085
    .local v1, ret:I
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v4, :cond_6

    if-eqz p1, :cond_6

    .line 1087
    const/4 v3, 0x0

    .line 1089
    .local v3, tmpPrefixList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mInputMode:I

    if-nez v4, :cond_2

    .line 1090
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    iget-object v5, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4, v5, v6}, Lcom/touchtype_fluency/util/SwiftKeySession;->get12KeyZhuyins(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v3

    .line 1094
    :goto_0
    if-eqz v3, :cond_5

    .line 1096
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPrefixList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1098
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1099
    .local v2, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v4}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 1100
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_3

    .line 1101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1106
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPrefixList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1092
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #str:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-static {v4, v6}, Lcom/touchtype_fluency/util/SwiftKeySession;->getFilteredPinyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 1103
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #str:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1104
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1110
    .end local v2           #str:Ljava/lang/String;
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1111
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPrefixList:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1113
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v1, 0x0

    .line 1115
    .end local v3           #tmpPrefixList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    return v1
.end method

.method public getSelectPhrase()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1020
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/Prediction;

    .line 1021
    .local v2, prediction:Lcom/touchtype_fluency/Prediction;
    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1027
    .end local v2           #prediction:Lcom/touchtype_fluency/Prediction;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v0, cpSpell:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getSpell()Ljava/lang/String;
    .locals 6

    .prologue
    .line 989
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 991
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/Prediction;

    .line 992
    .local v2, prediction:Lcom/touchtype_fluency/Prediction;
    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 994
    .end local v2           #prediction:Lcom/touchtype_fluency/Prediction;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v0, cpSpell:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget v5, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnginSpellLen:I

    if-le v4, v5, :cond_1

    .line 1010
    iget v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnginSpellLen:I

    const-string v5, " "

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public onInputFinished(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->saveKeyPressModel(Lcom/touchtype_fluency/KeyPressModel;)V

    .line 667
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->saveSequence(Ljava/lang/String;)V

    .line 669
    :cond_0
    return-void
.end method

.method public peparePredicts(Ljava/lang/String;Lcom/touchtype_fluency/ResultsFilter;)I
    .locals 4
    .parameter "inputContext"
    .parameter "filter"

    .prologue
    .line 1300
    const/4 v1, -0x1

    .line 1302
    .local v1, ret:I
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    if-eqz v2, :cond_0

    .line 1304
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    .line 1307
    .local v0, predictor:Lcom/touchtype_fluency/Predictor;
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    new-instance v3, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$6;

    invoke-direct {v3, p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$6;-><init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V

    .line 1316
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getSequence(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-interface {v0, v2, v3, p2}, Lcom/touchtype_fluency/Predictor;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 1319
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v2}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1320
    const/4 v1, 0x0

    .line 1323
    .end local v0           #predictor:Lcom/touchtype_fluency/Predictor;
    :cond_0
    return v1
.end method

.method public reLoadLanguage()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1773
    sget-object v7, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v0

    .line 1774
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1775
    sget-object v7, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v1

    .line 1777
    .local v1, enabledLanaguages:Ljava/util/List;,"Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1778
    .local v5, lpList:Ljava/util/List;,"Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1779
    .local v6, lpListForChinese:Ljava/util/List;,"Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/4 v3, 0x0

    .line 1780
    .local v3, isEnableChinese:Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/touchtype_fluency/util/LanguagePack;

    .line 1782
    .local v4, lang:Lcom/touchtype_fluency/util/LanguagePack;
    const-string v7, "zh"

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1783
    const/4 v3, 0x1

    .line 1784
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1785
    :cond_1
    const-string v7, "en"

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "ko"

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1786
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1790
    .end local v4           #lang:Lcom/touchtype_fluency/util/LanguagePack;
    :cond_3
    if-eqz v3, :cond_5

    .line 1791
    iget-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForChinese:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v7, v9}, Lcom/touchtype_fluency/util/SwiftKeySession;->setDynamicModelsEnabled(Z)V

    .line 1792
    iget-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForChinese:Lcom/touchtype_fluency/util/SwiftKeySession;

    sget-object v8, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v7, v6, v8}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    .line 1793
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 1794
    iget-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/touchtype_fluency/util/SwiftKeySession;->setDynamicModelsEnabled(Z)V

    .line 1795
    iget-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    sget-object v8, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v7, v5, v8}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    .line 1803
    :cond_4
    :goto_1
    return-void

    .line 1798
    :cond_5
    const-string v7, "SimeSwiftKeyService"

    const-string v8, "loadEnabledLanguages models"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    iget-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v7, v9}, Lcom/touchtype_fluency/util/SwiftKeySession;->setDynamicModelsEnabled(Z)V

    .line 1800
    iget-object v7, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    sget-object v8, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v7, v8}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadEnabledLanguages(Lcom/touchtype_fluency/util/LanguagePackManager;)V

    goto :goto_1
.end method

.method public resetInput()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 857
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mContextSeq:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v0}, Lcom/touchtype_fluency/Sequence;->clear()V

    .line 860
    :cond_0
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 862
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 866
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 868
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpTouchHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 869
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpTouchHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 871
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpComsumedSpell:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 872
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpComsumedSpell:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 874
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPrefixList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 875
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPrefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 878
    :cond_5
    return v2
.end method

.method public selectAlphaCandidate(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 1120
    const/4 v1, -0x1

    .line 1122
    .local v1, ret:I
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v3, :cond_0

    .line 1124
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v3}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 1125
    iget-object v3, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v3, p1}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v0

    .line 1126
    .local v0, prediction:Lcom/touchtype_fluency/Prediction;
    invoke-virtual {v0}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v2

    .line 1134
    .local v2, sequenceString:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->trainSelectwords(Ljava/lang/String;)V

    .line 1135
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->learnKeyPress(Lcom/touchtype_fluency/Prediction;)V

    .line 1137
    const/4 v1, 0x0

    .line 1141
    .end local v0           #prediction:Lcom/touchtype_fluency/Prediction;
    .end local v2           #sequenceString:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public selectChineseCandidate(I)I
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x0

    .line 1216
    const/4 v3, -0x1

    .line 1218
    .local v3, ret:I
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v4, :cond_0

    .line 1220
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 1222
    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mActivePrefixSpellIndex:I

    .line 1224
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4, p1}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v2

    .line 1225
    .local v2, prediction:Lcom/touchtype_fluency/Prediction;
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->learnKeyPress(Lcom/touchtype_fluency/Prediction;)V

    .line 1227
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->removeLastSequnce()V

    .line 1229
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getSelectPhrases()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->trainSelectwords(Ljava/lang/String;)V

    .line 1232
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getConsumedSpellLen(Lcom/touchtype_fluency/Prediction;)I

    move-result v0

    .line 1234
    .local v0, consumedSpellLen:I
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v4}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1237
    const/4 v3, 0x0

    .line 1270
    .end local v0           #consumedSpellLen:I
    .end local v2           #prediction:Lcom/touchtype_fluency/Prediction;
    :cond_0
    :goto_0
    return v3

    .line 1241
    .restart local v0       #consumedSpellLen:I
    .restart local v2       #prediction:Lcom/touchtype_fluency/Prediction;
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1242
    .local v1, length:I
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpTouchHistory:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v5, v1}, Lcom/touchtype_fluency/TouchHistory;->takeFirst(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v4, v1}, Lcom/touchtype_fluency/TouchHistory;->dropFirst(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 1244
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpComsumedSpell:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1247
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v4}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1249
    const/4 v3, 0x2

    goto :goto_0

    .line 1254
    :cond_2
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    const/16 v5, 0x1e

    invoke-direct {p0, v4, v5}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getCurrentPredictions(Lcom/touchtype_fluency/TouchHistory;I)V

    .line 1256
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1258
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4, v6}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setSpellFromPrediction(Lcom/touchtype_fluency/Prediction;I)V

    .line 1259
    const/4 v3, 0x1

    goto :goto_0

    .line 1262
    :cond_3
    new-instance v4, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v4}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 1263
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public selectChineseCandidate_backup(I)I
    .locals 11
    .parameter "index"

    .prologue
    const/4 v10, 0x0

    .line 1146
    const/4 v3, -0x1

    .line 1148
    .local v3, ret:I
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v8, :cond_2

    .line 1150
    if-ltz p1, :cond_2

    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v8}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v8

    if-ge p1, v8, :cond_2

    .line 1152
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v8, p1}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v8

    invoke-virtual {v8}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v5

    .line 1153
    .local v5, selStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v8, p1}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v2

    .line 1155
    .local v2, prediction:Lcom/touchtype_fluency/Prediction;
    const/4 v8, -0x1

    iput v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mActivePrefixSpellIndex:I

    .line 1157
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->learnKeyPress(Lcom/touchtype_fluency/Prediction;)V

    .line 1160
    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->getTermBreaks()[Ljava/lang/Integer;

    move-result-object v7

    .line 1162
    .local v7, termBreak:[Ljava/lang/Integer;
    if-eqz v7, :cond_5

    array-length v8, v7

    if-lez v8, :cond_5

    array-length v8, v7

    iget-object v9, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-gt v8, v9, :cond_5

    .line 1166
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1170
    .local v1, length:I
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-le v8, v1, :cond_0

    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    if-ne v8, v9, :cond_0

    .line 1172
    add-int/lit8 v1, v1, 0x1

    .line 1177
    :cond_0
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1179
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mBackUpTouchHistory:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v9, v1}, Lcom/touchtype_fluency/TouchHistory;->takeFirst(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v8, v1}, Lcom/touchtype_fluency/TouchHistory;->dropFirst(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 1182
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v8}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 1183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1184
    .local v6, str:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSelectPhrase:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/touchtype_fluency/Prediction;

    .line 1185
    .local v4, selPhrase:Lcom/touchtype_fluency/Prediction;
    invoke-virtual {v4}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1187
    .end local v4           #selPhrase:Lcom/touchtype_fluency/Prediction;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->trainSelectwords(Ljava/lang/String;)V

    .line 1188
    const/4 v3, 0x2

    .line 1212
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #length:I
    .end local v2           #prediction:Lcom/touchtype_fluency/Prediction;
    .end local v5           #selStr:Ljava/lang/String;
    .end local v6           #str:Ljava/lang/StringBuilder;
    .end local v7           #termBreak:[Ljava/lang/Integer;
    :cond_2
    :goto_1
    return v3

    .line 1192
    .restart local v1       #length:I
    .restart local v2       #prediction:Lcom/touchtype_fluency/Prediction;
    .restart local v5       #selStr:Ljava/lang/String;
    .restart local v7       #termBreak:[Ljava/lang/Integer;
    :cond_3
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    const/16 v9, 0x1e

    invoke-direct {p0, v8, v9}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getCurrentPredictions(Lcom/touchtype_fluency/TouchHistory;I)V

    .line 1194
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v8}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 1196
    iget-object v8, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v8, v10}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v8

    invoke-direct {p0, v8, v10}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setSpellFromPrediction(Lcom/touchtype_fluency/Prediction;I)V

    .line 1197
    const/4 v3, 0x1

    goto :goto_1

    .line 1201
    :cond_4
    const/4 v3, 0x2

    goto :goto_1

    .line 1206
    .end local v1           #length:I
    :cond_5
    invoke-direct {p0, v5}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->trainSelectwords(Ljava/lang/String;)V

    .line 1207
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setActivePrefix(I)I
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 1274
    const/4 v2, -0x1

    .line 1276
    .local v2, ret:I
    if-ltz p1, :cond_1

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPrefixList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    iget v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mActivePrefixSpellIndex:I

    if-eq p1, v4, :cond_1

    .line 1278
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPrefixList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 1280
    .local v0, phoneticLength:I
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v4}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v4

    if-gt v0, v4, :cond_1

    .line 1281
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPrefixList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    .line 1283
    .local v1, phoneticTouchHistory:Lcom/touchtype_fluency/TouchHistory;
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v4, v0}, Lcom/touchtype_fluency/TouchHistory;->dropFirst(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v3

    .line 1284
    .local v3, temp:Lcom/touchtype_fluency/TouchHistory;
    invoke-virtual {v1, v3}, Lcom/touchtype_fluency/TouchHistory;->appendHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 1285
    iput-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 1286
    const/16 v4, 0x1e

    invoke-direct {p0, v1, v4}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getCurrentPredictions(Lcom/touchtype_fluency/TouchHistory;I)V

    .line 1288
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1289
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4, v5}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v4

    invoke-direct {p0, v4, v5}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setSpellFromPrediction(Lcom/touchtype_fluency/Prediction;I)V

    .line 1291
    :cond_0
    iput p1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mActivePrefixSpellIndex:I

    .line 1292
    const/4 v2, 0x0

    .line 1295
    .end local v0           #phoneticLength:I
    .end local v1           #phoneticTouchHistory:Lcom/touchtype_fluency/TouchHistory;
    .end local v3           #temp:Lcom/touchtype_fluency/TouchHistory;
    :cond_1
    return v2
.end method

.method public setInputLanguage(Ljava/lang/String;)I
    .locals 7
    .parameter "langStr"

    .prologue
    .line 689
    const/4 v3, -0x1

    .line 691
    .local v3, ret:I
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 693
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    .line 694
    .local v2, oldSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    move-object v1, p1

    .line 695
    .local v1, enginLangStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnabledModels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 697
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->isChineseLanguage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 698
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForChinese:Lcom/touchtype_fluency/util/SwiftKeySession;

    iput-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    .line 699
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnabledModels:Ljava/util/List;

    const-string v5, "dynamic"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 711
    invoke-virtual {v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->saveKeyPressModel(Lcom/touchtype_fluency/KeyPressModel;)V

    .line 714
    :cond_1
    iput-object p1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentLanguage:Ljava/lang/String;

    .line 717
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, currentLanguageID:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnabledModels:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    const-string v4, "SimeSwiftKeyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInputLanguage loading:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLoadingLanguagePacks:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-boolean v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLoadingLanguagePacks:Z

    if-eqz v4, :cond_5

    .line 726
    invoke-direct {p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->enableModelsInTask()V

    .line 735
    .end local v0           #currentLanguageID:Ljava/lang/String;
    .end local v1           #enginLangStr:Ljava/lang/String;
    .end local v2           #oldSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    :cond_2
    :goto_1
    return v3

    .line 702
    .restart local v1       #enginLangStr:Ljava/lang/String;
    .restart local v2       #oldSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    :cond_3
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSessionForAlphabetic:Lcom/touchtype_fluency/util/SwiftKeySession;

    iput-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    .line 703
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->isEnglishLanguage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 704
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_US"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 705
    :cond_4
    invoke-static {p1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->isKoreanLanguage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 706
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_KR"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 730
    .restart local v0       #currentLanguageID:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v4}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnabledModels:Ljava/util/List;

    invoke-static {v5}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/util/Collection;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/touchtype_fluency/Session;->enableModels(Lcom/touchtype_fluency/TagSelector;)V

    goto :goto_1
.end method

.method public setInputLayout(IZLcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;)I
    .locals 4
    .parameter "inputMode"
    .parameter "phonepad"
    .parameter "keyboard"

    .prologue
    const/4 v1, 0x0

    .line 741
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v2, :cond_0

    if-nez p3, :cond_1

    .line 742
    :cond_0
    const/4 v1, -0x1

    .line 804
    :goto_0
    return v1

    .line 744
    :cond_1
    const/4 v0, -0x1

    .line 746
    .local v0, layout:I
    if-eqz p2, :cond_2

    .line 747
    const/4 v0, 0x1

    .line 752
    :goto_1
    iget v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mInputMode:I

    if-ne v2, p1, :cond_3

    iget v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLayoutType:I

    if-ne v2, v0, :cond_3

    .line 753
    const-string v2, "SimeSwiftKeyService"

    const-string v3, "same input layout, ignore set inputLayout"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 749
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 758
    :cond_3
    iput p1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mInputMode:I

    .line 759
    iput v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mLayoutType:I

    .line 762
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    new-instance v3, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;

    invoke-direct {v3, p0, p3, p2, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$5;-><init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;ZI)V

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->submitTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setSequenceType(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 673
    sget-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$8;->$SwitchMap$com$samsung$inputmethod$service$swiftKey$SimeSwiftKeyConstant$SEQUENCE_TYPE:[I

    invoke-virtual {p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 682
    sget-object v0, Lcom/touchtype_fluency/Sequence$Type;->NORMAL:Lcom/touchtype_fluency/Sequence$Type;

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSequenceType:Lcom/touchtype_fluency/Sequence$Type;

    .line 685
    :goto_0
    return-void

    .line 675
    :pswitch_0
    sget-object v0, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSequenceType:Lcom/touchtype_fluency/Sequence$Type;

    goto :goto_0

    .line 678
    :pswitch_1
    sget-object v0, Lcom/touchtype_fluency/Sequence$Type;->NEWLINE_START:Lcom/touchtype_fluency/Sequence$Type;

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mSequenceType:Lcom/touchtype_fluency/Sequence$Type;

    goto :goto_0

    .line 673
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
