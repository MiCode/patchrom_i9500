.class Lcom/touchtype_fluency/util/SwiftKeySessionImpl;
.super Lcom/touchtype_fluency/util/SwiftKeySession;
.source "SwiftKeySessionImpl.java"


# static fields
.field private static final Default12KeyZhuyins:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final DefaultDigitForZhuyin:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final DefaultExclusionPattern:Ljava/lang/String; = "(?<!\\+\\d{1,2}([ -]?\\(\\d\\))?[ -]?|\\(\\d{3,5}\\)[ -]?)(?<=^|\\D)((((\\d{3,4}[ -]?){2,3}\\d{3,4})|((\\d{4,}[ -]?){2}\\d{4,})|(\\d{6,}[ -]?\\d{4,})|(\\d{5,}[ -]?\\d{5,})|(\\d{4,}[ -]?\\d{6,})))"

.field public static final NEW_MODEL_WORD_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SwiftKeySession"

.field private static final allZhuyins:[Ljava/lang/String;

.field private static final twelveKeyPinyin:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mDigitForZhuyin:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private mDynamicModelsEnabled:Z

.field private mExclusionPattern:Lcom/touchtype_fluency/util/SwiftKeySession$ExclusionPattern;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mPredictionsListener:Lcom/touchtype_fluency/util/PredictionsListener;

.field private mPreemptingTask:Ljava/lang/Runnable;

.field private mSession:Lcom/touchtype_fluency/Session;

.field private mZhuyinsFor12Key:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 452
    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$1;

    invoke-direct {v0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$1;-><init>()V

    sput-object v0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->twelveKeyPinyin:Ljava/util/HashMap;

    .line 679
    const/16 v0, 0x19f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u02c7"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u02cb"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u02ca"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u02d9"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u3105"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u3105\u311a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u3105\u311b"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 680
    const-string v2, "\u3105\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u3105\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u3105\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u3105\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u3105\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u3105\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u3105\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u3105\u3127"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u3105\u3127\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u3105\u3127\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 681
    const-string v2, "\u3105\u3127\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u3105\u3127\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u3105\u3127\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u3105\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u3106"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u3106\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u3106\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u3106\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u3106\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u3106\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 682
    const-string v2, "\u3106\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u3106\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u3106\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u3106\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u3106\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u3106\u3127"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u3106\u3127\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u3106\u3127\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u3106\u3127\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 683
    const-string v2, "\u3106\u3127\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u3106\u3127\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u3106\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u3107"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u3107\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u3107\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u3107\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u3107\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u3107\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\u3107\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 684
    const-string v2, "\u3107\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\u3107\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\u3107\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\u3107\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\u3107\u3127"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "\u3107\u3127\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "\u3107\u3127\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "\u3107\u3127\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "\u3107\u3127\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 685
    const-string v2, "\u3107\u3127\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\u3107\u3127\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "\u3107\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "\u3108"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "\u3108\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "\u3108\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\u3108\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\u3108\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "\u3108\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "\u3108\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 686
    const-string v2, "\u3108\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "\u3108\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "\u3108\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\u3109"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\u3109\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\u3109\u311c"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\u3109\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\u3109\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\u3109\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\u3109\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 687
    const-string v2, "\u3109\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\u3109\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\u3109\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\u3109\u3127"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\u3109\u3127\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\u3109\u3127\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\u3109\u3127\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\u3109\u3127\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\u3109\u3127\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 688
    const-string v2, "\u3109\u3127\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\u3109\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\u3109\u3128\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\u3109\u3128\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\u3109\u3128\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\u3109\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "\u3109\u3128\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "\u310a"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\u310a\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 689
    const-string v2, "\u310a\u311c"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "\u310a\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "\u310a\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "\u310a\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "\u310a\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "\u310a\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "\u310a\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "\u310a\u3127"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "\u310a\u3127\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "\u310a\u3127\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    .line 690
    const-string v2, "\u310a\u3127\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "\u310a\u3127\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "\u310a\u3128\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "\u310a\u3128\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "\u310a\u3128\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "\u310a\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "\u310a\u3128\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "\u310b"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "\u310b\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    .line 691
    const-string v2, "\u310b\u311c"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "\u310b\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "\u310b\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "\u310b\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "\u310b\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "\u310b\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "\u310b\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "\u310b\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "\u310b\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "\u310b\u3127"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    .line 692
    const-string v2, "\u310b\u3127\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "\u310b\u3127\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "\u310b\u3127\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "\u310b\u3127\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "\u310b\u3127\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "\u310b\u3127\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "\u310b\u3127\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "\u310b\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    .line 693
    const-string v2, "\u310b\u3128\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "\u310b\u3128\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "\u310b\u3128\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "\u310b\u3129"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "\u310b\u3129\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "\u310c"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "\u310c\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "\u310c\u311c"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "\u310c\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    .line 694
    const-string v2, "\u310c\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "\u310c\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "\u310c\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "\u310c\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "\u310c\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "\u310c\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "\u310c\u3127"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "\u310c\u3127\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "\u310c\u3127\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    .line 695
    const-string v2, "\u310c\u3127\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "\u310c\u3127\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "\u310c\u3127\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "\u310c\u3127\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "\u310c\u3127\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "\u310c\u3127\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "\u310c\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "\u310c\u3128\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    .line 696
    const-string v2, "\u310c\u3128\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "\u310c\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "\u310c\u3128\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "\u310c\u3129"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "\u310c\u3129\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "\u310d"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "\u310d\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "\u310d\u311c"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "\u310d\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    .line 697
    const-string v2, "\u310d\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "\u310d\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "\u310d\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "\u310d\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "\u310d\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "\u310d\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "\u310d\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "\u310d\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "\u310d\u3128\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "\u310d\u3128\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    .line 698
    const-string v2, "\u310d\u3128\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "\u310d\u3128\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "\u310d\u3128\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "\u310d\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "\u310d\u3128\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "\u310d\u3128\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "\u310e"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "\u310e\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "\u310e\u311c"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    .line 699
    const-string v2, "\u310e\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "\u310e\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "\u310e\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "\u310e\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "\u310e\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "\u310e\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "\u310e\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "\u310e\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "\u310e\u3128\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "\u310e\u3128\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    .line 700
    const-string v2, "\u310e\u3128\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "\u310e\u3128\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "\u310e\u3128\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "\u310e\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "\u310e\u3128\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "\u310e\u3128\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "\u310f"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "\u310f\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "\u310f\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    .line 701
    const-string v2, "\u310f\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "\u310f\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "\u310f\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "\u310f\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "\u310f\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "\u310f\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "\u310f\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "\u310f\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "\u310f\u3128\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "\u310f\u3128\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    .line 702
    const-string v2, "\u310f\u3128\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "\u310f\u3128\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "\u310f\u3128\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "\u310f\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "\u310f\u3128\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "\u310f\u3128\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "\u3110"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "\u3110\u3127\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "\u3110\u3127\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    .line 703
    const-string v2, "\u3110\u3127\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "\u3110\u3127\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "\u3110\u3127\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "\u3110\u3127\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "\u3110\u3127\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "\u3110\u3127\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "\u3110\u3129"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "\u3110\u3129\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    .line 704
    const-string v2, "\u3110\u3129\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "\u3110\u3129\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "\u3110\u3129\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "\u3111"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "\u3111\u3127"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "\u3111\u3127\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "\u3111\u3127\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "\u3111\u3127\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "\u3111\u3127\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    .line 705
    const-string v2, "\u3111\u3127\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "\u3111\u3127\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "\u3111\u3127\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "\u3111\u3127\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "\u3111\u3129"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "\u3111\u3129\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "\u3111\u3129\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "\u3111\u3129\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    .line 706
    const-string v2, "\u3111\u3129\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "\u3112"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "\u3112\u3127"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "\u3112\u3127\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "\u3112\u3127\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "\u3112\u3127\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "\u3112\u3127\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "\u3112\u3127\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "\u3112\u3127\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    .line 707
    const-string v2, "\u3112\u3127\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "\u3112\u3127\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "\u3112\u3129"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "\u3112\u3129\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "\u3112\u3129\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "\u3112\u3129\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "\u3112\u3129\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    .line 708
    const-string v2, "\u3113"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "\u3113\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "\u3113\u3128\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "\u3113\u3128\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    .line 709
    const-string v2, "\u3113\u3128\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "\u3113\u3128\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "\u3113\u3128\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "\u3113\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "\u3113\u3128\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "\u3113\u3128\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    .line 710
    const-string v2, "\u3117"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "\u3117\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "\u3117\u311c"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "\u3117\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "\u3117\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "\u3117\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "\u3117\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "\u3117\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "\u3117\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "\u3117\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    .line 711
    const-string v2, "\u3117\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "\u3117\u3128\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "\u3117\u3128\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "\u3117\u3128\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "\u3117\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "\u3117\u3128\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    .line 712
    const-string v2, "\u3113\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "\u3113\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "\u3113\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "\u3113\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "\u3113\u311c"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "\u3113\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "\u3113\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "\u3113\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    .line 713
    const-string v2, "\u3114"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "\u3114\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "\u3114\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "\u3114\u3128\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "\u3114\u3128\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    .line 714
    const-string v2, "\u3114\u3128\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "\u3114\u3128\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "\u3114\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "\u3114\u3128\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "\u3114\u3128\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "\u3115"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    .line 715
    const-string v2, "\u3115\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "\u3115\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "\u3115\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "\u3115\u3128\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "\u3115\u3128\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    .line 716
    const-string v2, "\u3115\u3128\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "\u3115\u3128\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "\u3115\u3128\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "\u3115\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "\u3115\u3128\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "\u3116"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "\u3116\u311c"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "\u3116\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "\u3116\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    .line 717
    const-string v2, "\u3116\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "\u3116\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "\u3116\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "\u3116\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "\u3116\u3128\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "\u3116\u3128\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "\u3116\u3128\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "\u3116\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "\u3116\u3128\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    .line 718
    const-string v2, "\u3118"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "\u3118\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "\u3118\u311c"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    .line 719
    const-string v2, "\u3118\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "\u3118\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "\u3118\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "\u3118\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "\u3118\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "\u3118\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "\u3118\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "\u3118\u3128\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "\u3118\u3128\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    .line 720
    const-string v2, "\u3118\u3128\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "\u3118\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "\u3118\u3128\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    .line 721
    const-string v2, "\u3114\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "\u3114\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "\u3114\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "\u3114\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "\u3114\u311c"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "\u3114\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "\u3114\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "\u3114\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    .line 722
    const-string v2, "\u3119"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "\u3119\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "\u3119\u311c"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "\u3119\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "\u3119\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "\u3119\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "\u3119\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    .line 723
    const-string v2, "\u3119\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "\u3119\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "\u3119\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "\u3119\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string v2, "\u3119\u3128\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v2, "\u3119\u3128\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "\u3119\u3128\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v2, "\u3119\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string v2, "\u3119\u3128\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    .line 724
    const-string v2, "\u3115\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "\u3115\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "\u3115\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string v2, "\u3115\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "\u3115\u311c"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string v2, "\u3115\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "\u3115\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string v2, "\u3115\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    .line 725
    const-string v2, "\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string v2, "\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v2, "\u311c"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, "\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, "\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v2, "\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string v2, "\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v2, "\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v2, "\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, "\u3126"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    .line 726
    const-string v2, "\u3127"

    aput-object v2, v0, v1

    const/16 v1, 0x188

    const-string v2, "\u3127\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string v2, "\u3127\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    const-string v2, "\u3127\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string v2, "\u3127\u3120"

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    const-string v2, "\u3127\u3121"

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    const-string v2, "\u3127\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    const-string v2, "\u3127\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    const-string v2, "\u3127\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x190

    const-string v2, "\u3127\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x191

    const-string v2, "\u3128"

    aput-object v2, v0, v1

    const/16 v1, 0x192

    .line 727
    const-string v2, "\u3128\u311a"

    aput-object v2, v0, v1

    const/16 v1, 0x193

    const-string v2, "\u3128\u311b"

    aput-object v2, v0, v1

    const/16 v1, 0x194

    const-string v2, "\u3128\u311e"

    aput-object v2, v0, v1

    const/16 v1, 0x195

    const-string v2, "\u3128\u311f"

    aput-object v2, v0, v1

    const/16 v1, 0x196

    const-string v2, "\u3128\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x197

    const-string v2, "\u3128\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x198

    const-string v2, "\u3128\u3124"

    aput-object v2, v0, v1

    const/16 v1, 0x199

    const-string v2, "\u3128\u3125"

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    .line 728
    const-string v2, "\u3129"

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    const-string v2, "\u3129\u311d"

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    const-string v2, "\u3129\u3122"

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    const-string v2, "\u3129\u3123"

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    const-string v2, "\u3129\u3125"

    aput-object v2, v0, v1

    .line 679
    sput-object v0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->allZhuyins:[Ljava/lang/String;

    .line 732
    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$2;

    invoke-direct {v0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$2;-><init>()V

    sput-object v0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->DefaultDigitForZhuyin:Ljava/util/Map;

    .line 750
    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$3;

    invoke-direct {v0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$3;-><init>()V

    sput-object v0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->Default12KeyZhuyins:Ljava/util/Map;

    .line 977
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "license"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;-><init>()V

    .line 87
    invoke-static {p1}, Lcom/touchtype_fluency/SwiftKeySDK;->createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    .line 88
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 89
    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySession$ExclusionPattern;

    const-string v1, "(?<!\\+\\d{1,2}([ -]?\\(\\d\\))?[ -]?|\\(\\d{3,5}\\)[ -]?)(?<=^|\\D)((((\\d{3,4}[ -]?){2,3}\\d{3,4})|((\\d{4,}[ -]?){2}\\d{4,})|(\\d{6,}[ -]?\\d{4,})|(\\d{5,}[ -]?\\d{5,})|(\\d{4,}[ -]?\\d{6,})))"

    .line 90
    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/util/SwiftKeySession$ExclusionPattern;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mExclusionPattern:Lcom/touchtype_fluency/util/SwiftKeySession$ExclusionPattern;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mDynamicModelsEnabled:Z

    .line 92
    iput-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mDigitForZhuyin:Ljava/util/Map;

    .line 93
    iput-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mZhuyinsFor12Key:Ljava/util/Map;

    .line 94
    return-void
.end method

.method static synthetic access$0(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Ljava/lang/Runnable;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->isPreempted(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->unloadAllModels()V

    return-void
.end method

.method static synthetic access$2(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mDynamicModelsEnabled:Z

    return v0
.end method

.method static synthetic access$3(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->loadDynamicModels(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$4(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/Runnable;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-direct {p0, p1, p2}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->loadStaticModel(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->clearPreemptingTask()V

    return-void
.end method

.method static synthetic access$6(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;)Lcom/touchtype_fluency/Session;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    return-object v0
.end method

.method static synthetic access$7(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;)Lcom/touchtype_fluency/util/PredictionsListener;
    .locals 1
    .parameter

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->getPredictionsListener()Lcom/touchtype_fluency/util/PredictionsListener;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized checkUserModelState(Ljava/io/File;)V
    .locals 5
    .parameter "dynModel"

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 317
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    .line 318
    .local v1, msd:[Lcom/touchtype_fluency/ModelSetDescription;
    if-eqz v1, :cond_0

    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_0

    .line 320
    :try_start_1
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype_fluency/Trainer;->write()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 332
    :goto_0
    monitor-exit p0

    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v2, "SwiftKeySession"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Lost possible training data, but proceeding with personalization merge "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 316
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #msd:[Lcom/touchtype_fluency/ModelSetDescription;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 327
    .restart local v1       #msd:[Lcom/touchtype_fluency/ModelSetDescription;
    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->loadDynamicModels(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized clearPreemptingTask()V
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mPreemptingTask:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private create12KeyZhuyinMaps(Ljava/util/Map;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1024
    .local p1, layout:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Character;[Ljava/lang/String;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mDigitForZhuyin:Ljava/util/Map;

    .line 1025
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1034
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mZhuyinsFor12Key:Ljava/util/Map;

    .line 1035
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v10, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->allZhuyins:[Ljava/lang/String;

    array-length v10, v10

    if-lt v3, v10, :cond_2

    .line 1052
    return-void

    .line 1025
    .end local v3           #i:I
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1026
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Character;[Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 1027
    .local v0, digit:Ljava/lang/Character;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1028
    .local v4, inputs:[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    array-length v11, v4

    if-ge v3, v11, :cond_0

    .line 1030
    iget-object v11, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mDigitForZhuyin:Ljava/util/Map;

    aget-object v12, v4, v3

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1036
    .end local v0           #digit:Ljava/lang/Character;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Character;[Ljava/lang/String;>;"
    .end local v4           #inputs:[Ljava/lang/String;
    :cond_2
    sget-object v10, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->allZhuyins:[Ljava/lang/String;

    aget-object v8, v10, v3

    .line 1037
    .local v8, zhuyin:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 1038
    .local v6, len:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1039
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    if-lt v5, v6, :cond_4

    .line 1044
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1045
    .local v1, digits:Ljava/lang/String;
    iget-object v10, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mZhuyinsFor12Key:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1046
    .local v9, zhuyins:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_3

    .line 1047
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #zhuyins:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    .restart local v9       #zhuyins:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mZhuyinsFor12Key:Ljava/util/Map;

    invoke-interface {v10, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    :cond_3
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1040
    .end local v1           #digits:Ljava/lang/String;
    .end local v9           #zhuyins:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iget-object v10, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mDigitForZhuyin:Ljava/util/Map;

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 1042
    .restart local v0       #digit:Ljava/lang/Character;
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1039
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private createTemporaryModel()V
    .locals 4

    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicTemporary(I[Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SwiftKeySession"

    const-string v2, "impossible - loading a temporary dynamic model doesn\'t throw!"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Ljunit/framework/Assert;->fail()V

    goto :goto_0
.end method

.method private static get12KeyZhuyins(Lcom/touchtype_fluency/Predictions;ILjava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .parameter "predictions"
    .parameter "offset"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, digitForZhuyin:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    .local p3, zhuyinsFor12Key:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 1059
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1060
    .local v2, pinyin:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, ""

    invoke-static {p0, v3}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->getBestInputTag(Lcom/touchtype_fluency/Predictions;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1061
    .local v1, input:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->getThePinyinAt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1062
    invoke-static {v1, p2}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->to12KeyZhuyin(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 1063
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1069
    return-object v2

    .line 1064
    :cond_0
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1065
    .local v0, filters:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 1066
    invoke-static {v0, p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->prioritise(Ljava/util/List;Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1063
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getBestInputTag(Lcom/touchtype_fluency/Predictions;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "predictions"
    .parameter "fallback"

    .prologue
    .line 1109
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1110
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v1

    .line 1111
    .local v1, tags:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1117
    .end local v1           #tags:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 1111
    .restart local v1       #tags:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p1
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1112
    .local v0, tag:Ljava/lang/String;
    const-string v3, "input:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1113
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getFilteredPinyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 5
    .parameter "predictions"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 980
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 981
    .local v1, pinyin:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, ""

    invoke-static {p0, v3}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->getBestInputTag(Lcom/touchtype_fluency/Predictions;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, input:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->getThePinyinAt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 983
    invoke-static {v0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->to12Key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 984
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    .line 990
    return-object v1

    .line 985
    :cond_0
    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->twelveKeyPinyin:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 986
    .local v2, pinyins:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 987
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 984
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFilteredZhuyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 2
    .parameter "predictions"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 995
    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->DefaultDigitForZhuyin:Ljava/util/Map;

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->Default12KeyZhuyins:Ljava/util/Map;

    invoke-static {p0, p1, v0, v1}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->get12KeyZhuyins(Lcom/touchtype_fluency/Predictions;ILjava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getPredictionsListener()Lcom/touchtype_fluency/util/PredictionsListener;
    .locals 1

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mPredictionsListener:Lcom/touchtype_fluency/util/PredictionsListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getThePinyinAt(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "input"
    .parameter "offset"

    .prologue
    const/16 v6, 0x27

    .line 1126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1127
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    move v3, p1

    .end local p1
    .local v3, offset:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 1140
    const-string v4, ""

    move p1, v3

    .end local v3           #offset:I
    .restart local p1
    :goto_1
    return-object v4

    .line 1128
    .end local p1
    .restart local v3       #offset:I
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    .line 1129
    add-int/lit8 p1, v3, -0x1

    .end local v3           #offset:I
    .restart local p1
    if-nez v3, :cond_3

    .line 1130
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1131
    .local v0, end:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 1132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1136
    :cond_1
    add-int/lit8 v4, v1, 0x6

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .end local v0           #end:I
    .end local p1
    .restart local v3       #offset:I
    :cond_2
    move p1, v3

    .line 1127
    .end local v3           #offset:I
    .restart local p1
    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v3, p1

    .end local p1
    .restart local v3       #offset:I
    goto :goto_0
.end method

.method private declared-synchronized isPreempted(Ljava/lang/Runnable;)Z
    .locals 1
    .parameter "currentTask"

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mPreemptingTask:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadDynamicModels(Ljava/io/File;)V
    .locals 6
    .parameter "dynamicModel"

    .prologue
    .line 222
    :try_start_0
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->createTemporaryModel()V

    .line 241
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    :try_start_1
    new-array v1, v2, [Ljava/lang/String;

    .line 228
    .local v1, tags:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    .line 232
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 233
    sget-object v5, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    .line 231
    invoke-static {v3, v4, v1, v5}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 235
    .end local v1           #tags:[Ljava/lang/String;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private loadStaticModel(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/Runnable;)Z
    .locals 5
    .parameter "language"
    .parameter "caller"

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    .line 263
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-static {v3}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 265
    const-string v2, "SwiftKeySession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " loaded by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    const/4 v1, 0x1

    .line 273
    :goto_0
    return v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/io/IOException;
    const-string v2, "SwiftKeySession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " broken - re-download it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string v2, "SwiftKeySession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " missing - download it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static prioritise(Ljava/util/List;Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 18
    .parameter
    .parameter "predictions"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1076
    .local p0, filters:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1077
    .local v10, prefixes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    const/4 v5, 0x0

    .line 1078
    .local v5, nPredictions:I
    :goto_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    .line 1079
    .local v2, filterLen:I
    const/4 v6, 0x0

    .line 1080
    .local v6, nPrefixes:I
    const/4 v12, 0x0

    .local v12, rank:I
    move v7, v6

    .end local v6           #nPrefixes:I
    .local v7, nPrefixes:I
    :goto_1
    if-lt v12, v5, :cond_1

    .line 1098
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1099
    .local v11, prioritised:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-lt v3, v7, :cond_5

    .line 1102
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_6

    .line 1105
    return-object v11

    .line 1077
    .end local v2           #filterLen:I
    .end local v3           #i:I
    .end local v5           #nPredictions:I
    .end local v7           #nPrefixes:I
    .end local v11           #prioritised:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #rank:I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v5

    goto :goto_0

    .line 1081
    .restart local v2       #filterLen:I
    .restart local v5       #nPredictions:I
    .restart local v7       #nPrefixes:I
    .restart local v12       #rank:I
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v9

    .line 1082
    .local v9, pred:Lcom/touchtype_fluency/Prediction;
    invoke-virtual {v9}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v14

    .line 1083
    .local v14, tags:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_4

    :cond_3
    move v6, v7

    .line 1080
    .end local v7           #nPrefixes:I
    .restart local v6       #nPrefixes:I
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move v7, v6

    .end local v6           #nPrefixes:I
    .restart local v7       #nPrefixes:I
    goto :goto_1

    .line 1083
    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1084
    .local v13, tag:Ljava/lang/String;
    const-string v16, "input:"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1085
    const/4 v15, 0x6

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p2

    invoke-static {v15, v0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->getThePinyinAt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1086
    .local v8, pinyin:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1087
    .local v4, n:I
    const/4 v15, 0x0

    invoke-virtual {v8, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1088
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1089
    add-int/lit8 v6, v7, 0x1

    .end local v7           #nPrefixes:I
    .restart local v6       #nPrefixes:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1100
    .end local v4           #n:I
    .end local v6           #nPrefixes:I
    .end local v8           #pinyin:Ljava/lang/String;
    .end local v9           #pred:Lcom/touchtype_fluency/Prediction;
    .end local v13           #tag:Ljava/lang/String;
    .end local v14           #tags:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3       #i:I
    .restart local v7       #nPrefixes:I
    .restart local v11       #prioritised:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1102
    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1103
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move/from16 v0, v17

    invoke-virtual {v11, v0, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method private static to12Key(C)C
    .locals 0
    .parameter "c"

    .prologue
    .line 1153
    packed-switch p0, :pswitch_data_0

    .line 1162
    .end local p0
    :goto_0
    return p0

    .line 1154
    .restart local p0
    :pswitch_0
    const/16 p0, 0x32

    goto :goto_0

    .line 1155
    :pswitch_1
    const/16 p0, 0x33

    goto :goto_0

    .line 1156
    :pswitch_2
    const/16 p0, 0x34

    goto :goto_0

    .line 1157
    :pswitch_3
    const/16 p0, 0x35

    goto :goto_0

    .line 1158
    :pswitch_4
    const/16 p0, 0x36

    goto :goto_0

    .line 1159
    :pswitch_5
    const/16 p0, 0x37

    goto :goto_0

    .line 1160
    :pswitch_6
    const/16 p0, 0x38

    goto :goto_0

    .line 1161
    :pswitch_7
    const/16 p0, 0x39

    goto :goto_0

    .line 1153
    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private static to12Key(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    .line 1144
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1145
    .local v1, len:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1146
    .local v2, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1147
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->to12Key(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static to12KeyZhuyin(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "input"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1167
    .local p1, digitForZhuyin:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1168
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1169
    .local v4, s:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 1174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1170
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 1171
    .local v0, c:Ljava/lang/Character;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    .line 1172
    .local v1, d:Ljava/lang/Character;
    if-nez v1, :cond_1

    .end local v0           #c:Ljava/lang/Character;
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v0       #c:Ljava/lang/Character;
    :cond_1
    move-object v0, v1

    .line 1172
    goto :goto_1
.end method

.method private unloadAllModels()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 211
    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-static {v3}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 212
    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v3}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    .line 213
    .local v1, descriptions:[Lcom/touchtype_fluency/ModelSetDescription;
    array-length v4, v1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_1

    .line 216
    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v3}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 217
    return-void

    .line 213
    :cond_1
    aget-object v0, v1, v3

    .line 214
    .local v0, desc:Lcom/touchtype_fluency/ModelSetDescription;
    iget-object v5, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v5, v0}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;)V
    .locals 8
    .parameter "text"
    .parameter "messageType"

    .prologue
    .line 422
    iget-object v5, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-static {v5}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 423
    iget-object v5, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v5}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v4

    .line 424
    .local v4, trainer:Lcom/touchtype_fluency/Trainer;
    if-eqz v4, :cond_0

    .line 425
    const/4 v0, 0x1

    .line 426
    .local v0, isFirst:Z
    iget-object v5, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mExclusionPattern:Lcom/touchtype_fluency/util/SwiftKeySession$ExclusionPattern;

    invoke-virtual {v5, p1}, Lcom/touchtype_fluency/util/SwiftKeySession$ExclusionPattern;->segment(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, segments:[Ljava/lang/String;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_1

    .line 436
    .end local v0           #isFirst:Z
    .end local v2           #segments:[Ljava/lang/String;
    :cond_0
    return-void

    .line 427
    .restart local v0       #isFirst:Z
    .restart local v2       #segments:[Ljava/lang/String;
    :cond_1
    aget-object v1, v2, v5

    .line 428
    .local v1, segment:Ljava/lang/String;
    iget-object v7, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v7}, Lcom/touchtype_fluency/Session;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v7

    invoke-interface {v7, v1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v3

    .line 429
    .local v3, sequence:Lcom/touchtype_fluency/Sequence;
    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {v3, p2}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 431
    const/4 v0, 0x0

    .line 433
    :cond_2
    invoke-interface {v4, v3}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    .line 427
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public clearUserData(Lcom/touchtype_fluency/util/LanguagePackManager;)Z
    .locals 8
    .parameter "lpm"

    .prologue
    .line 385
    const/4 v3, 0x1

    .line 386
    .local v3, success:Z
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v1

    .line 388
    .local v1, dynModel:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    .line 389
    sget-object v7, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    .line 387
    invoke-static {v4, v5, v6, v7}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    .line 390
    .local v2, dynModelSetDescription:Lcom/touchtype_fluency/ModelSetDescription;
    iget-object v4, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-static {v4}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 391
    iget-object v4, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v4, v2}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 392
    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    move-result v0

    .line 393
    .local v0, deleteResult:Z
    if-nez v0, :cond_0

    .line 394
    const-string v4, "SwiftKeySession"

    const-string v5, "Did not delete dynamic LM. Probably means there wasn\'t one there"

    invoke-static {v4, v5}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_0
    invoke-direct {p0, v1}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->loadDynamicModels(Ljava/io/File;)V

    .line 398
    return v3
.end method

.method public createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 7
    .parameter "lpm"

    .prologue
    .line 403
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v0

    .line 405
    .local v0, dynModel:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    .line 406
    sget-object v6, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    .line 404
    invoke-static {v3, v4, v5, v6}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    .line 408
    .local v1, dynModelSetDescription:Lcom/touchtype_fluency/ModelSetDescription;
    :try_start_0
    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v3, v1}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    invoke-direct {p0, v0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->checkUserModelState(Ljava/io/File;)V

    .line 414
    return-void

    .line 409
    :catch_0
    move-exception v2

    .line 411
    .local v2, e:Ljava/io/IOException;
    const-string v3, "SwiftKeySession"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got exception loading model "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->dispose()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    .line 106
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->dispose()V

    .line 98
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 99
    return-void
.end method

.method public get12KeyZhuyins(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 3
    .parameter "predictions"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1000
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->getZhuyinsFor12KeyMap()Ljava/util/Map;

    move-result-object v0

    .line 1001
    .local v0, zhuyinsFor12Key:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mDigitForZhuyin:Ljava/util/Map;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1003
    :cond_0
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->DefaultDigitForZhuyin:Ljava/util/Map;

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->Default12KeyZhuyins:Ljava/util/Map;

    invoke-static {p1, p2, v1, v2}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->get12KeyZhuyins(Lcom/touchtype_fluency/Predictions;ILjava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 1005
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mDigitForZhuyin:Ljava/util/Map;

    invoke-static {p1, p2, v1, v0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->get12KeyZhuyins(Lcom/touchtype_fluency/Predictions;ILjava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter "context"
    .parameter "current"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Sequence;",
            "Lcom/touchtype_fluency/TouchHistory;",
            "Lcom/touchtype_fluency/ResultsFilter;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/touchtype_fluency/Predictions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 281
    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 283
    sget-object v0, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$6;-><init>(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/touchtype_fluency/Session;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    return-object v0
.end method

.method getZhuyinsFor12KeyMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mZhuyinsFor12Key:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 1012
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-static {v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 1013
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype_fluency/Predictor;->getCharacterMap()Lcom/touchtype_fluency/CharacterMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype_fluency/CharacterMap;->getLayout()Ljava/util/Map;

    move-result-object v0

    .line 1014
    .local v0, layout:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Character;[Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1015
    :cond_0
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->Default12KeyZhuyins:Ljava/util/Map;

    .line 1019
    .end local v0           #layout:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Character;[Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 1017
    .restart local v0       #layout:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Character;[Ljava/lang/String;>;"
    :cond_1
    invoke-direct {p0, v0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->create12KeyZhuyinMaps(Ljava/util/Map;)V

    .line 1019
    .end local v0           #layout:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Character;[Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mZhuyinsFor12Key:Ljava/util/Map;

    goto :goto_0
.end method

.method public loadEnabledLanguages(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1
    .parameter "lpm"

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->loadLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    .line 115
    return-void
.end method

.method public declared-synchronized loadLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 2
    .parameter
    .parameter "lpm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, languages:Ljava/util/List;,"Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 120
    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;-><init>(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Lcom/touchtype_fluency/util/LanguagePackManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mPreemptingTask:Ljava/lang/Runnable;

    .line 145
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mPreemptingTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mergeLanguageModels(Ljava/io/File;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 11
    .parameter "newModel"
    .parameter "lpm"
    .parameter "listener"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 343
    const/4 v4, 0x0

    .line 344
    .local v4, success:Z
    invoke-virtual {p2}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v0

    .line 347
    .local v0, dynModel:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/String;

    .line 348
    sget-object v8, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    .line 346
    invoke-static {v6, v10, v7, v8}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    .line 350
    .local v1, dynModelSetDescription:Lcom/touchtype_fluency/ModelSetDescription;
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/String;

    .line 351
    sget-object v8, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    .line 349
    invoke-static {v6, v10, v7, v8}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    .line 356
    .local v3, newModelSetDescription:Lcom/touchtype_fluency/ModelSetDescription;
    invoke-direct {p0, v0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->checkUserModelState(Ljava/io/File;)V

    .line 364
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 361
    invoke-static {v1, v3, v6}, Lcom/touchtype_fluency/ModelSetDescription;->merge(Lcom/touchtype_fluency/ModelSetDescription;Lcom/touchtype_fluency/ModelSetDescription;Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v5

    .line 366
    .local v5, updatedModelSetDescription:Lcom/touchtype_fluency/ModelSetDescription;
    if-eqz v5, :cond_0

    .line 369
    iget-object v6, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v6, v1}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 370
    const/4 v4, 0x1

    .line 371
    const-string v6, "SwiftKeySession"

    const-string v7, "Successfully merged user models"

    invoke-static {v6, v7}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 380
    .end local v5           #updatedModelSetDescription:Lcom/touchtype_fluency/ModelSetDescription;
    :cond_0
    :goto_0
    invoke-virtual {p3, v4}, Lcom/touchtype_fluency/util/CompletionListener;->onComplete(Z)V

    .line 381
    return-void

    .line 374
    :catch_0
    move-exception v2

    .line 375
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v6, "SwiftKeySession"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Got illegal state when merging user model  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/touchtype_fluency/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 378
    .local v2, e:Ljava/io/IOException;
    const-string v6, "SwiftKeySession"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Got IOException when merging user models "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/touchtype_fluency/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized replaceLanguages(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 2
    .parameter
    .parameter
    .parameter "lpm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .local p2, toAdd:Ljava/util/List;,"Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;-><init>(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetTemporaryModel()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicTemporary(I[Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 247
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->createTemporaryModel()V

    .line 248
    return-void
.end method

.method public setDynamicModelsEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mDynamicModelsEnabled:Z

    .line 163
    return-void
.end method

.method public setExclusionPattern(Lcom/touchtype_fluency/util/SwiftKeySession$ExclusionPattern;)V
    .locals 0
    .parameter "pattern"

    .prologue
    .line 417
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 418
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mExclusionPattern:Lcom/touchtype_fluency/util/SwiftKeySession$ExclusionPattern;

    .line 419
    return-void
.end method

.method public declared-synchronized setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V
    .locals 1
    .parameter "predictionsListener"

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mPredictionsListener:Lcom/touchtype_fluency/util/PredictionsListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public submitTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method public writeDynamicModel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-static {v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 440
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    .line 441
    .local v0, trainer:Lcom/touchtype_fluency/Trainer;
    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0}, Lcom/touchtype_fluency/Trainer;->write()V

    .line 444
    :cond_0
    return-void
.end method
